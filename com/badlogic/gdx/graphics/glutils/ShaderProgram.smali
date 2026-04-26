.class public Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
.super Ljava/lang/Object;
.source "ShaderProgram.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field public static final BINORMAL_ATTRIBUTE:Ljava/lang/String; = "a_binormal"

.field public static final BONEWEIGHT_ATTRIBUTE:Ljava/lang/String; = "a_boneWeight"

.field public static final COLOR_ATTRIBUTE:Ljava/lang/String; = "a_color"

.field public static final NORMAL_ATTRIBUTE:Ljava/lang/String; = "a_normal"

.field public static final POSITION_ATTRIBUTE:Ljava/lang/String; = "a_position"

.field public static final TANGENT_ATTRIBUTE:Ljava/lang/String; = "a_tangent"

.field public static final TEXCOORD_ATTRIBUTE:Ljava/lang/String; = "a_texCoord"

.field static final intbuf:Ljava/nio/IntBuffer;

.field public static pedantic:Z

.field public static prependFragmentCode:Ljava/lang/String;

.field public static prependVertexCode:Ljava/lang/String;

.field private static final shaders:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Lcom/badlogic/gdx/Application;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private attributeNames:[Ljava/lang/String;

.field private final attributeSizes:Lcom/badlogic/gdx/utils/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final attributeTypes:Lcom/badlogic/gdx/utils/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final attributes:Lcom/badlogic/gdx/utils/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fragmentShaderHandle:I

.field private final fragmentShaderSource:Ljava/lang/String;

.field private invalidated:Z

.field private isCompiled:Z

.field private log:Ljava/lang/String;

.field private final matrix:Ljava/nio/FloatBuffer;

.field params:Ljava/nio/IntBuffer;

.field private program:I

.field private refCount:I

.field type:Ljava/nio/IntBuffer;

.field private uniformNames:[Ljava/lang/String;

.field private final uniformSizes:Lcom/badlogic/gdx/utils/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final uniformTypes:Lcom/badlogic/gdx/utils/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final uniforms:Lcom/badlogic/gdx/utils/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private vertexShaderHandle:I

.field private final vertexShaderSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 82
    const/4 v0, 0x1

    sput-boolean v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->pedantic:Z

    .line 86
    const-string v1, ""

    sput-object v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->prependVertexCode:Ljava/lang/String;

    .line 90
    sput-object v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->prependFragmentCode:Ljava/lang/String;

    .line 93
    new-instance v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    sput-object v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->shaders:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 259
    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->intbuf:Ljava/nio/IntBuffer;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V
    .registers 5
    .param p1, "vertexShader"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "fragmentShader"  # Lcom/badlogic/gdx/files/FileHandle;

    .line 176
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "vertexShader"  # Ljava/lang/String;
    .param p2, "fragmentShader"  # Ljava/lang/String;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->log:Ljava/lang/String;

    .line 102
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniforms:Lcom/badlogic/gdx/utils/ObjectIntMap;

    .line 105
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformTypes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    .line 108
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformSizes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    .line 114
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    .line 117
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributeTypes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    .line 120
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributeSizes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->refCount:I

    .line 807
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    .line 808
    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->type:Ljava/nio/IntBuffer;

    .line 155
    if-eqz p1, :cond_ac

    .line 156
    if-eqz p2, :cond_a4

    .line 158
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->prependVertexCode:Ljava/lang/String;

    if-eqz v0, :cond_64

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->prependVertexCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_64

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->prependVertexCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 160
    :cond_64
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->prependFragmentCode:Ljava/lang/String;

    if-eqz v0, :cond_83

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->prependFragmentCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_83

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->prependFragmentCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 163
    :cond_83
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->vertexShaderSource:Ljava/lang/String;

    .line 164
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fragmentShaderSource:Ljava/lang/String;

    .line 165
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->matrix:Ljava/nio/FloatBuffer;

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->compileShaders(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 169
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchAttributes()V

    .line 170
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniforms()V

    .line 171
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-direct {p0, v0, p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->addManagedShader(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 173
    :cond_a3
    return-void

    .line 156
    :cond_a4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fragment shader must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_ac
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "vertex shader must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addManagedShader(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .registers 5
    .param p1, "app"  # Lcom/badlogic/gdx/Application;
    .param p2, "shaderProgram"  # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 753
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->shaders:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    .line 754
    .local v0, "managedResources":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;>;"
    if-nez v0, :cond_10

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    move-object v0, v1

    .line 755
    :cond_10
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 756
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->shaders:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    return-void
.end method

.method private checkManaged()V
    .registers 3

    .line 746
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->invalidated:Z

    if-eqz v0, :cond_e

    .line 747
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->vertexShaderSource:Ljava/lang/String;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fragmentShaderSource:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->compileShaders(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->invalidated:Z

    .line 750
    :cond_e
    return-void
.end method

.method public static clearAllShaderPrograms(Lcom/badlogic/gdx/Application;)V
    .registers 2
    .param p0, "app"  # Lcom/badlogic/gdx/Application;

    .line 774
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->shaders:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    return-void
.end method

.method private compileShaders(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "vertexShader"  # Ljava/lang/String;
    .param p2, "fragmentShader"  # Ljava/lang/String;

    .line 184
    const v0, 0x8b31

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->loadShader(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->vertexShaderHandle:I

    .line 185
    const v0, 0x8b30

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->loadShader(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fragmentShaderHandle:I

    .line 187
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->vertexShaderHandle:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_32

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fragmentShaderHandle:I

    if-ne v0, v2, :cond_1d

    goto :goto_32

    .line 192
    :cond_1d
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->createProgram()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->linkProgram(I)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    .line 193
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    if-ne v0, v2, :cond_2e

    .line 194
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled:Z

    .line 195
    return-void

    .line 198
    :cond_2e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled:Z

    .line 199
    return-void

    .line 188
    :cond_32
    :goto_32
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled:Z

    .line 189
    return-void
.end method

.method private fetchAttributeLocation(Ljava/lang/String;)I
    .registers 6
    .param p1, "name"  # Ljava/lang/String;

    .line 282
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 286
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v2, -0x2

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v1

    move v3, v1

    .local v3, "location":I
    if-ne v1, v2, :cond_17

    .line 287
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    invoke-interface {v0, v1, p1}, Lcom/badlogic/gdx/graphics/GL20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v3

    .line 288
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v1, p1, v3}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 290
    :cond_17
    return v3
.end method

.method private fetchAttributes()V
    .registers 8

    .line 831
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 832
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    const v2, 0x8b89

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    invoke-interface {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    .line 833
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    .line 835
    .local v0, "numAttributes":I
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributeNames:[Ljava/lang/String;

    .line 837
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    if-ge v2, v0, :cond_65

    .line 838
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 839
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 840
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->type:Ljava/nio/IntBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 841
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->type:Ljava/nio/IntBuffer;

    invoke-interface {v3, v4, v2, v5, v6}, Lcom/badlogic/gdx/graphics/GL20;->glGetActiveAttrib(IILjava/nio/IntBuffer;Ljava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object v3

    .line 842
    .local v3, "name":Ljava/lang/String;
    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    invoke-interface {v4, v5, v3}, Lcom/badlogic/gdx/graphics/GL20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v4

    .line 843
    .local v4, "location":I
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v5, v3, v4}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 844
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributeTypes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->type:Ljava/nio/IntBuffer;

    invoke-virtual {v6, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v6

    invoke-virtual {v5, v3, v6}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 845
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributeSizes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    invoke-virtual {v6, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v6

    invoke-virtual {v5, v3, v6}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 846
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributeNames:[Ljava/lang/String;

    aput-object v3, v5, v2

    .line 837
    .end local v3  # "name":Ljava/lang/String;
    .end local v4  # "location":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 848
    .end local v2  # "i":I
    :cond_65
    return-void
.end method

.method private fetchUniformLocation(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 294
    sget-boolean v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->pedantic:Z

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method private fetchUniforms()V
    .registers 8

    .line 811
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 812
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    const v2, 0x8b86

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    invoke-interface {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    .line 813
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    .line 815
    .local v0, "numUniforms":I
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformNames:[Ljava/lang/String;

    .line 817
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    if-ge v2, v0, :cond_65

    .line 818
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 819
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 820
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->type:Ljava/nio/IntBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 821
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->type:Ljava/nio/IntBuffer;

    invoke-interface {v3, v4, v2, v5, v6}, Lcom/badlogic/gdx/graphics/GL20;->glGetActiveUniform(IILjava/nio/IntBuffer;Ljava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object v3

    .line 822
    .local v3, "name":Ljava/lang/String;
    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    invoke-interface {v4, v5, v3}, Lcom/badlogic/gdx/graphics/GL20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    .line 823
    .local v4, "location":I
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniforms:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v5, v3, v4}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 824
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformTypes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->type:Ljava/nio/IntBuffer;

    invoke-virtual {v6, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v6

    invoke-virtual {v5, v3, v6}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 825
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformSizes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    invoke-virtual {v6, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v6

    invoke-virtual {v5, v3, v6}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 826
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformNames:[Ljava/lang/String;

    aput-object v3, v5, v2

    .line 817
    .end local v3  # "name":Ljava/lang/String;
    .end local v4  # "location":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 828
    .end local v2  # "i":I
    :cond_65
    return-void
.end method

.method public static getManagedStatus()Ljava/lang/String;
    .registers 5

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 779
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 780
    .local v1, "i":I
    const-string v2, "Managed shaders/app: { "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->shaders:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ObjectMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/Application;

    .line 782
    .local v3, "app":Lcom/badlogic/gdx/Application;
    sget-object v4, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->shaders:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 783
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    .end local v3  # "app":Lcom/badlogic/gdx/Application;
    goto :goto_15

    .line 785
    :cond_34
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getNumManagedShaderPrograms()I
    .registers 2

    .line 791
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->shaders:Lcom/badlogic/gdx/utils/ObjectMap;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    return v0
.end method

.method public static invalidateAllShaderPrograms(Lcom/badlogic/gdx/Application;)V
    .registers 5
    .param p0, "app"  # Lcom/badlogic/gdx/Application;

    .line 762
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-nez v0, :cond_5

    return-void

    .line 764
    :cond_5
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->shaders:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    .line 765
    .local v0, "shaderArray":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;>;"
    if-nez v0, :cond_10

    return-void

    .line 767
    :cond_10
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_2a

    .line 768
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->invalidated:Z

    .line 769
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-direct {v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 767
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 771
    .end local v1  # "i":I
    :cond_2a
    return-void
.end method

.method private linkProgram(I)I
    .registers 8
    .param p1, "program"  # I

    .line 234
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 235
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    const/4 v1, -0x1

    if-ne p1, v1, :cond_6

    return v1

    .line 237
    :cond_6
    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->vertexShaderHandle:I

    invoke-interface {v0, p1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glAttachShader(II)V

    .line 238
    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fragmentShaderHandle:I

    invoke-interface {v0, p1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glAttachShader(II)V

    .line 239
    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glLinkProgram(I)V

    .line 241
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 242
    .local v2, "tmp":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 243
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    .line 245
    .local v3, "intbuf":Ljava/nio/IntBuffer;
    const v4, 0x8b82

    invoke-interface {v0, p1, v4, v3}, Lcom/badlogic/gdx/graphics/GL20;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    .line 246
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    .line 247
    .local v4, "linked":I
    if-nez v4, :cond_39

    .line 251
    sget-object v5, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v5, p1}, Lcom/badlogic/gdx/graphics/GL20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->log:Ljava/lang/String;

    .line 253
    return v1

    .line 256
    :cond_39
    return p1
.end method

.method private loadShader(ILjava/lang/String;)I
    .registers 11
    .param p1, "type"  # I
    .param p2, "source"  # Ljava/lang/String;

    .line 202
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 203
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v1

    .line 205
    .local v1, "intbuf":Ljava/nio/IntBuffer;
    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glCreateShader(I)I

    move-result v2

    .line 206
    .local v2, "shader":I
    const/4 v3, -0x1

    if-nez v2, :cond_f

    return v3

    .line 208
    :cond_f
    invoke-interface {v0, v2, p2}, Lcom/badlogic/gdx/graphics/GL20;->glShaderSource(ILjava/lang/String;)V

    .line 209
    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glCompileShader(I)V

    .line 210
    const v4, 0x8b81

    invoke-interface {v0, v2, v4, v1}, Lcom/badlogic/gdx/graphics/GL20;->glGetShaderiv(IILjava/nio/IntBuffer;)V

    .line 212
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    .line 213
    .local v4, "compiled":I
    if-nez v4, :cond_5b

    .line 217
    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v5

    .line 218
    .local v5, "infoLog":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->log:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x8b31

    if-ne p1, v7, :cond_39

    const-string v7, "Vertex shader\n"

    goto :goto_3b

    :cond_39
    const-string v7, "Fragment shader:\n"

    :goto_3b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->log:Ljava/lang/String;

    .line 219
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->log:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->log:Ljava/lang/String;

    .line 221
    return v3

    .line 224
    .end local v5  # "infoLog":Ljava/lang/String;
    :cond_5b
    return v2
.end method


# virtual methods
.method public begin()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 687
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    .line 688
    return-void
.end method

.method public bind()V
    .registers 3

    .line 691
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 692
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 693
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glUseProgram(I)V

    .line 694
    return-void
.end method

.method protected createProgram()I
    .registers 4

    .line 228
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 229
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glCreateProgram()I

    move-result v1

    .line 230
    .local v1, "program":I
    if-eqz v1, :cond_a

    move v2, v1

    goto :goto_b

    :cond_a
    const/4 v2, -0x1

    :goto_b
    return v2
.end method

.method public disableVertexAttribute(I)V
    .registers 3
    .param p1, "location"  # I

    .line 723
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 724
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 725
    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDisableVertexAttribArray(I)V

    .line 726
    return-void
.end method

.method public disableVertexAttribute(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"  # Ljava/lang/String;

    .line 715
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 716
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 717
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchAttributeLocation(Ljava/lang/String;)I

    move-result v1

    .line 718
    .local v1, "location":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    return-void

    .line 719
    :cond_d
    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisableVertexAttribArray(I)V

    .line 720
    return-void
.end method

.method public dispose()V
    .registers 4

    .line 703
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 704
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glUseProgram(I)V

    .line 705
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->vertexShaderHandle:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteShader(I)V

    .line 706
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fragmentShaderHandle:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteShader(I)V

    .line 707
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteProgram(I)V

    .line 708
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->shaders:Lcom/badlogic/gdx/utils/ObjectMap;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2d

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->shaders:Lcom/badlogic/gdx/utils/ObjectMap;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 709
    :cond_2d
    return-void
.end method

.method public enableVertexAttribute(I)V
    .registers 3
    .param p1, "location"  # I

    .line 740
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 741
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 742
    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glEnableVertexAttribArray(I)V

    .line 743
    return-void
.end method

.method public enableVertexAttribute(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"  # Ljava/lang/String;

    .line 732
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 733
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 734
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchAttributeLocation(Ljava/lang/String;)I

    move-result v1

    .line 735
    .local v1, "location":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    return-void

    .line 736
    :cond_d
    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnableVertexAttribArray(I)V

    .line 737
    return-void
.end method

.method public end()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 699
    return-void
.end method

.method public fetchUniformLocation(Ljava/lang/String;Z)I
    .registers 7
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "pedantic"  # Z

    .line 301
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniforms:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v1, -0x2

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v0

    move v2, v0

    .local v2, "location":I
    if-ne v0, v1, :cond_5c

    .line 302
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    invoke-interface {v0, v1, p1}, Lcom/badlogic/gdx/graphics/GL20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    .line 303
    const/4 v0, -0x1

    if-ne v2, v0, :cond_57

    if-eqz p2, :cond_57

    .line 304
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled:Z

    if-eqz v0, :cond_3a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No uniform with name \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' in shader"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An attempted fetch uniform from uncompiled shader \n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getLog()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_57
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniforms:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v0, p1, v2}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 309
    :cond_5c
    return v2
.end method

.method public getAttributeLocation(Ljava/lang/String;)I
    .registers 4
    .param p1, "name"  # Ljava/lang/String;

    .line 865
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public getAttributeSize(Ljava/lang/String;)I
    .registers 4
    .param p1, "name"  # Ljava/lang/String;

    .line 871
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributeSizes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public getAttributeType(Ljava/lang/String;)I
    .registers 4
    .param p1, "name"  # Ljava/lang/String;

    .line 859
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributeTypes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public getAttributes()[Ljava/lang/String;
    .registers 2

    .line 900
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributeNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getFragmentShaderSource()Ljava/lang/String;
    .registers 2

    .line 915
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fragmentShaderSource:Ljava/lang/String;

    return-object v0
.end method

.method public getHandle()I
    .registers 2

    .line 920
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    return v0
.end method

.method public getLog()Ljava/lang/String;
    .registers 3

    .line 264
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled:Z

    if-eqz v0, :cond_11

    .line 268
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->log:Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->log:Ljava/lang/String;

    return-object v0

    .line 272
    :cond_11
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->log:Ljava/lang/String;

    return-object v0
.end method

.method public getUniformLocation(Ljava/lang/String;)I
    .registers 4
    .param p1, "name"  # Ljava/lang/String;

    .line 889
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniforms:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public getUniformSize(Ljava/lang/String;)I
    .registers 4
    .param p1, "name"  # Ljava/lang/String;

    .line 895
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformSizes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public getUniformType(Ljava/lang/String;)I
    .registers 4
    .param p1, "name"  # Ljava/lang/String;

    .line 883
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformTypes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public getUniforms()[Ljava/lang/String;
    .registers 2

    .line 905
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getVertexShaderSource()Ljava/lang/String;
    .registers 2

    .line 910
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->vertexShaderSource:Ljava/lang/String;

    return-object v0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 853
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasUniform(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 877
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniforms:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCompiled()Z
    .registers 2

    .line 278
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled:Z

    return v0
.end method

.method public setAttributef(Ljava/lang/String;FFFF)V
    .registers 14
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "value1"  # F
    .param p3, "value2"  # F
    .param p4, "value3"  # F
    .param p5, "value4"  # F

    .line 802
    sget-object v6, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 803
    .local v6, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchAttributeLocation(Ljava/lang/String;)I

    move-result v7

    .line 804
    .local v7, "location":I
    move-object v0, v6

    move v1, v7

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttrib4f(IFFFF)V

    .line 805
    return-void
.end method

.method public setUniform1fv(I[FII)V
    .registers 6
    .param p1, "location"  # I
    .param p2, "values"  # [F
    .param p3, "offset"  # I
    .param p4, "length"  # I

    .line 468
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 469
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 470
    invoke-interface {v0, p1, p4, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1fv(II[FI)V

    .line 471
    return-void
.end method

.method public setUniform1fv(Ljava/lang/String;[FII)V
    .registers 7
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "values"  # [F
    .param p3, "offset"  # I
    .param p4, "length"  # I

    .line 461
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 462
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 463
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result v1

    .line 464
    .local v1, "location":I
    invoke-interface {v0, v1, p4, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1fv(II[FI)V

    .line 465
    return-void
.end method

.method public setUniform2fv(I[FII)V
    .registers 7
    .param p1, "location"  # I
    .param p2, "values"  # [F
    .param p3, "offset"  # I
    .param p4, "length"  # I

    .line 481
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 482
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 483
    div-int/lit8 v1, p4, 0x2

    invoke-interface {v0, p1, v1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2fv(II[FI)V

    .line 484
    return-void
.end method

.method public setUniform2fv(Ljava/lang/String;[FII)V
    .registers 8
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "values"  # [F
    .param p3, "offset"  # I
    .param p4, "length"  # I

    .line 474
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 475
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 476
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result v1

    .line 477
    .local v1, "location":I
    div-int/lit8 v2, p4, 0x2

    invoke-interface {v0, v1, v2, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2fv(II[FI)V

    .line 478
    return-void
.end method

.method public setUniform3fv(I[FII)V
    .registers 7
    .param p1, "location"  # I
    .param p2, "values"  # [F
    .param p3, "offset"  # I
    .param p4, "length"  # I

    .line 494
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 495
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 496
    div-int/lit8 v1, p4, 0x3

    invoke-interface {v0, p1, v1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3fv(II[FI)V

    .line 497
    return-void
.end method

.method public setUniform3fv(Ljava/lang/String;[FII)V
    .registers 8
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "values"  # [F
    .param p3, "offset"  # I
    .param p4, "length"  # I

    .line 487
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 488
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 489
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result v1

    .line 490
    .local v1, "location":I
    div-int/lit8 v2, p4, 0x3

    invoke-interface {v0, v1, v2, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3fv(II[FI)V

    .line 491
    return-void
.end method

.method public setUniform4fv(I[FII)V
    .registers 7
    .param p1, "location"  # I
    .param p2, "values"  # [F
    .param p3, "offset"  # I
    .param p4, "length"  # I

    .line 507
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 508
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 509
    div-int/lit8 v1, p4, 0x4

    invoke-interface {v0, p1, v1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4fv(II[FI)V

    .line 510
    return-void
.end method

.method public setUniform4fv(Ljava/lang/String;[FII)V
    .registers 8
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "values"  # [F
    .param p3, "offset"  # I
    .param p4, "length"  # I

    .line 500
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 501
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 502
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result v1

    .line 503
    .local v1, "location":I
    div-int/lit8 v2, p4, 0x4

    invoke-interface {v0, v1, v2, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4fv(II[FI)V

    .line 504
    return-void
.end method

.method public setUniformMatrix(ILcom/badlogic/gdx/math/Matrix3;)V
    .registers 4
    .param p1, "location"  # I
    .param p2, "matrix"  # Lcom/badlogic/gdx/math/Matrix3;

    .line 557
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(ILcom/badlogic/gdx/math/Matrix3;Z)V

    .line 558
    return-void
.end method

.method public setUniformMatrix(ILcom/badlogic/gdx/math/Matrix3;Z)V
    .registers 11
    .param p1, "location"  # I
    .param p2, "matrix"  # Lcom/badlogic/gdx/math/Matrix3;
    .param p3, "transpose"  # Z

    .line 561
    sget-object v6, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 562
    .local v6, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 563
    iget-object v4, p2, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v5, 0x0

    const/4 v2, 0x1

    move-object v0, v6

    move v1, p1

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix3fv(IIZ[FI)V

    .line 564
    return-void
.end method

.method public setUniformMatrix(ILcom/badlogic/gdx/math/Matrix4;)V
    .registers 4
    .param p1, "location"  # I
    .param p2, "matrix"  # Lcom/badlogic/gdx/math/Matrix4;

    .line 530
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(ILcom/badlogic/gdx/math/Matrix4;Z)V

    .line 531
    return-void
.end method

.method public setUniformMatrix(ILcom/badlogic/gdx/math/Matrix4;Z)V
    .registers 11
    .param p1, "location"  # I
    .param p2, "matrix"  # Lcom/badlogic/gdx/math/Matrix4;
    .param p3, "transpose"  # Z

    .line 534
    sget-object v6, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 535
    .local v6, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 536
    iget-object v4, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x0

    const/4 v2, 0x1

    move-object v0, v6

    move v1, p1

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix4fv(IIZ[FI)V

    .line 537
    return-void
.end method

.method public setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix3;)V
    .registers 4
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "matrix"  # Lcom/badlogic/gdx/math/Matrix3;

    .line 544
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix3;Z)V

    .line 545
    return-void
.end method

.method public setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix3;Z)V
    .registers 5
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "matrix"  # Lcom/badlogic/gdx/math/Matrix3;
    .param p3, "transpose"  # Z

    .line 553
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(ILcom/badlogic/gdx/math/Matrix3;Z)V

    .line 554
    return-void
.end method

.method public setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V
    .registers 4
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "matrix"  # Lcom/badlogic/gdx/math/Matrix4;

    .line 517
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;Z)V

    .line 518
    return-void
.end method

.method public setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;Z)V
    .registers 5
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "matrix"  # Lcom/badlogic/gdx/math/Matrix4;
    .param p3, "transpose"  # Z

    .line 526
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(ILcom/badlogic/gdx/math/Matrix4;Z)V

    .line 527
    return-void
.end method

.method public setUniformMatrix3fv(Ljava/lang/String;Ljava/nio/FloatBuffer;IZ)V
    .registers 7
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "buffer"  # Ljava/nio/FloatBuffer;
    .param p3, "count"  # I
    .param p4, "transpose"  # Z

    .line 572
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 573
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 574
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 575
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result v1

    .line 576
    .local v1, "location":I
    invoke-interface {v0, v1, p3, p4, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix3fv(IIZLjava/nio/FloatBuffer;)V

    .line 577
    return-void
.end method

.method public setUniformMatrix4fv(I[FII)V
    .registers 12
    .param p1, "location"  # I
    .param p2, "values"  # [F
    .param p3, "offset"  # I
    .param p4, "length"  # I

    .line 593
    sget-object v6, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 594
    .local v6, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 595
    div-int/lit8 v2, p4, 0x10

    const/4 v3, 0x0

    move-object v0, v6

    move v1, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix4fv(IIZ[FI)V

    .line 596
    return-void
.end method

.method public setUniformMatrix4fv(Ljava/lang/String;Ljava/nio/FloatBuffer;IZ)V
    .registers 7
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "buffer"  # Ljava/nio/FloatBuffer;
    .param p3, "count"  # I
    .param p4, "transpose"  # Z

    .line 585
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 586
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 587
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 588
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result v1

    .line 589
    .local v1, "location":I
    invoke-interface {v0, v1, p3, p4, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    .line 590
    return-void
.end method

.method public setUniformMatrix4fv(Ljava/lang/String;[FII)V
    .registers 6
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "values"  # [F
    .param p3, "offset"  # I
    .param p4, "length"  # I

    .line 599
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix4fv(I[FII)V

    .line 600
    return-void
.end method

.method public setUniformf(IF)V
    .registers 4
    .param p1, "location"  # I
    .param p2, "value"  # F

    .line 398
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 399
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 400
    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1f(IF)V

    .line 401
    return-void
.end method

.method public setUniformf(IFF)V
    .registers 5
    .param p1, "location"  # I
    .param p2, "value1"  # F
    .param p3, "value2"  # F

    .line 416
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 417
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 418
    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2f(IFF)V

    .line 419
    return-void
.end method

.method public setUniformf(IFFF)V
    .registers 6
    .param p1, "location"  # I
    .param p2, "value1"  # F
    .param p3, "value2"  # F
    .param p4, "value3"  # F

    .line 435
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 436
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 437
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3f(IFFF)V

    .line 438
    return-void
.end method

.method public setUniformf(IFFFF)V
    .registers 13
    .param p1, "location"  # I
    .param p2, "value1"  # F
    .param p3, "value2"  # F
    .param p4, "value3"  # F
    .param p5, "value4"  # F

    .line 455
    sget-object v6, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 456
    .local v6, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 457
    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4f(IFFFF)V

    .line 458
    return-void
.end method

.method public setUniformf(ILcom/badlogic/gdx/graphics/Color;)V
    .registers 9
    .param p1, "location"  # I
    .param p2, "values"  # Lcom/badlogic/gdx/graphics/Color;

    .line 635
    iget v2, p2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p2, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IFFFF)V

    .line 636
    return-void
.end method

.method public setUniformf(ILcom/badlogic/gdx/math/Vector2;)V
    .registers 5
    .param p1, "location"  # I
    .param p2, "values"  # Lcom/badlogic/gdx/math/Vector2;

    .line 611
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IFF)V

    .line 612
    return-void
.end method

.method public setUniformf(ILcom/badlogic/gdx/math/Vector3;)V
    .registers 6
    .param p1, "location"  # I
    .param p2, "values"  # Lcom/badlogic/gdx/math/Vector3;

    .line 623
    iget v0, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IFFF)V

    .line 624
    return-void
.end method

.method public setUniformf(Ljava/lang/String;F)V
    .registers 5
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "value"  # F

    .line 391
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 392
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 393
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result v1

    .line 394
    .local v1, "location":I
    invoke-interface {v0, v1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1f(IF)V

    .line 395
    return-void
.end method

.method public setUniformf(Ljava/lang/String;FF)V
    .registers 6
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "value1"  # F
    .param p3, "value2"  # F

    .line 409
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 410
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 411
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result v1

    .line 412
    .local v1, "location":I
    invoke-interface {v0, v1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2f(IFF)V

    .line 413
    return-void
.end method

.method public setUniformf(Ljava/lang/String;FFF)V
    .registers 7
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "value1"  # F
    .param p3, "value2"  # F
    .param p4, "value3"  # F

    .line 428
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 429
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 430
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result v1

    .line 431
    .local v1, "location":I
    invoke-interface {v0, v1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3f(IFFF)V

    .line 432
    return-void
.end method

.method public setUniformf(Ljava/lang/String;FFFF)V
    .registers 14
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "value1"  # F
    .param p3, "value2"  # F
    .param p4, "value3"  # F
    .param p5, "value4"  # F

    .line 448
    sget-object v6, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 449
    .local v6, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 450
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result v7

    .line 451
    .local v7, "location":I
    move-object v0, v6

    move v1, v7

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4f(IFFFF)V

    .line 452
    return-void
.end method

.method public setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V
    .registers 9
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "values"  # Lcom/badlogic/gdx/graphics/Color;

    .line 631
    iget v2, p2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p2, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFFF)V

    .line 632
    return-void
.end method

.method public setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/math/Vector2;)V
    .registers 5
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "values"  # Lcom/badlogic/gdx/math/Vector2;

    .line 607
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    .line 608
    return-void
.end method

.method public setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/math/Vector3;)V
    .registers 6
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "values"  # Lcom/badlogic/gdx/math/Vector3;

    .line 619
    iget v0, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFF)V

    .line 620
    return-void
.end method

.method public setUniformi(II)V
    .registers 4
    .param p1, "location"  # I
    .param p2, "value"  # I

    .line 324
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 325
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 326
    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1i(II)V

    .line 327
    return-void
.end method

.method public setUniformi(III)V
    .registers 5
    .param p1, "location"  # I
    .param p2, "value1"  # I
    .param p3, "value2"  # I

    .line 342
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 343
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 344
    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2i(III)V

    .line 345
    return-void
.end method

.method public setUniformi(IIII)V
    .registers 6
    .param p1, "location"  # I
    .param p2, "value1"  # I
    .param p3, "value2"  # I
    .param p4, "value3"  # I

    .line 361
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 362
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 363
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3i(IIII)V

    .line 364
    return-void
.end method

.method public setUniformi(IIIII)V
    .registers 13
    .param p1, "location"  # I
    .param p2, "value1"  # I
    .param p3, "value2"  # I
    .param p4, "value3"  # I
    .param p5, "value4"  # I

    .line 381
    sget-object v6, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 382
    .local v6, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 383
    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4i(IIIII)V

    .line 384
    return-void
.end method

.method public setUniformi(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "value"  # I

    .line 317
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 318
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 319
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result v1

    .line 320
    .local v1, "location":I
    invoke-interface {v0, v1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1i(II)V

    .line 321
    return-void
.end method

.method public setUniformi(Ljava/lang/String;II)V
    .registers 6
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "value1"  # I
    .param p3, "value2"  # I

    .line 335
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 336
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 337
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result v1

    .line 338
    .local v1, "location":I
    invoke-interface {v0, v1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2i(III)V

    .line 339
    return-void
.end method

.method public setUniformi(Ljava/lang/String;III)V
    .registers 7
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "value1"  # I
    .param p3, "value2"  # I
    .param p4, "value3"  # I

    .line 354
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 355
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 356
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result v1

    .line 357
    .local v1, "location":I
    invoke-interface {v0, v1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3i(IIII)V

    .line 358
    return-void
.end method

.method public setUniformi(Ljava/lang/String;IIII)V
    .registers 14
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "value1"  # I
    .param p3, "value2"  # I
    .param p4, "value3"  # I
    .param p5, "value4"  # I

    .line 374
    sget-object v6, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 375
    .local v6, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 376
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result v7

    .line 377
    .local v7, "location":I
    move-object v0, v6

    move v1, v7

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4i(IIIII)V

    .line 378
    return-void
.end method

.method public setVertexAttribute(IIIZII)V
    .registers 15
    .param p1, "location"  # I
    .param p2, "size"  # I
    .param p3, "type"  # I
    .param p4, "normalize"  # Z
    .param p5, "stride"  # I
    .param p6, "offset"  # I

    .line 679
    sget-object v7, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 680
    .local v7, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 681
    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttribPointer(IIIZII)V

    .line 682
    return-void
.end method

.method public setVertexAttribute(IIIZILjava/nio/Buffer;)V
    .registers 15
    .param p1, "location"  # I
    .param p2, "size"  # I
    .param p3, "type"  # I
    .param p4, "normalize"  # Z
    .param p5, "stride"  # I
    .param p6, "buffer"  # Ljava/nio/Buffer;

    .line 656
    sget-object v7, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 657
    .local v7, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 658
    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 659
    return-void
.end method

.method public setVertexAttribute(Ljava/lang/String;IIZII)V
    .registers 16
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "size"  # I
    .param p3, "type"  # I
    .param p4, "normalize"  # Z
    .param p5, "stride"  # I
    .param p6, "offset"  # I

    .line 671
    sget-object v7, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 672
    .local v7, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 673
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchAttributeLocation(Ljava/lang/String;)I

    move-result v8

    .line 674
    .local v8, "location":I
    const/4 v0, -0x1

    if-ne v8, v0, :cond_d

    return-void

    .line 675
    :cond_d
    move-object v0, v7

    move v1, v8

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttribPointer(IIIZII)V

    .line 676
    return-void
.end method

.method public setVertexAttribute(Ljava/lang/String;IIZILjava/nio/Buffer;)V
    .registers 16
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "size"  # I
    .param p3, "type"  # I
    .param p4, "normalize"  # Z
    .param p5, "stride"  # I
    .param p6, "buffer"  # Ljava/nio/Buffer;

    .line 648
    sget-object v7, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 649
    .local v7, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 650
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchAttributeLocation(Ljava/lang/String;)I

    move-result v8

    .line 651
    .local v8, "location":I
    const/4 v0, -0x1

    if-ne v8, v0, :cond_d

    return-void

    .line 652
    :cond_d
    move-object v0, v7

    move v1, v8

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 653
    return-void
.end method
