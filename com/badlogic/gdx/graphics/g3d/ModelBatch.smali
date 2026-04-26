.class public Lcom/badlogic/gdx/graphics/g3d/ModelBatch;
.super Ljava/lang/Object;
.source "ModelBatch.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;
    }
.end annotation


# instance fields
.field protected camera:Lcom/badlogic/gdx/graphics/Camera;

.field protected final context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

.field private final ownContext:Z

.field protected final renderables:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;"
        }
    .end annotation
.end field

.field protected final renderablesPool:Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;

.field protected final shaderProvider:Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;

.field protected final sorter:Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V
    .registers 5
    .param p1, "vertexShader"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "fragmentShader"  # Lcom/badlogic/gdx/files/FileHandle;

    .line 129
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultShaderProvider;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultShaderProvider;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;)V
    .registers 3
    .param p1, "context"  # Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V
    .registers 4
    .param p1, "context"  # Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;
    .param p2, "sorter"  # Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;)V
    .registers 4
    .param p1, "context"  # Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;
    .param p2, "shaderProvider"  # Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V
    .registers 7
    .param p1, "context"  # Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;
    .param p2, "shaderProvider"  # Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;
    .param p3, "sorter"  # Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderablesPool:Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;

    .line 65
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    .line 79
    if-nez p3, :cond_19

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultRenderableSorter;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultRenderableSorter;-><init>()V

    goto :goto_1a

    :cond_19
    move-object v0, p3

    :goto_1a
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->sorter:Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;

    .line 80
    const/4 v0, 0x1

    if-nez p1, :cond_21

    move v1, v0

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->ownContext:Z

    .line 81
    if-nez p1, :cond_31

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;

    invoke-direct {v2, v0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;-><init>(II)V

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/TextureBinder;)V

    goto :goto_32

    :cond_31
    move-object v1, p1

    :goto_32
    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    .line 82
    if-nez p2, :cond_3c

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultShaderProvider;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultShaderProvider;-><init>()V

    goto :goto_3d

    :cond_3c
    move-object v0, p2

    :goto_3d
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->shaderProvider:Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V
    .registers 3
    .param p1, "sorter"  # Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;

    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;)V
    .registers 3
    .param p1, "shaderProvider"  # Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;

    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V
    .registers 4
    .param p1, "shaderProvider"  # Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;
    .param p2, "sorter"  # Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;

    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "vertexShader"  # Ljava/lang/String;
    .param p2, "fragmentShader"  # Ljava/lang/String;

    .line 137
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultShaderProvider;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultShaderProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V

    .line 138
    return-void
.end method


# virtual methods
.method public begin(Lcom/badlogic/gdx/graphics/Camera;)V
    .registers 4
    .param p1, "cam"  # Lcom/badlogic/gdx/graphics/Camera;

    .line 150
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->camera:Lcom/badlogic/gdx/graphics/Camera;

    if-nez v0, :cond_10

    .line 151
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->camera:Lcom/badlogic/gdx/graphics/Camera;

    .line 152
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->ownContext:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->begin()V

    .line 153
    :cond_f
    return-void

    .line 150
    :cond_10
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Call end() first."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispose()V
    .registers 2

    .line 333
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->shaderProvider:Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;->dispose()V

    .line 334
    return-void
.end method

.method public end()V
    .registers 2

    .line 217
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->flush()V

    .line 218
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->ownContext:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->end()V

    .line 219
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->camera:Lcom/badlogic/gdx/graphics/Camera;

    .line 220
    return-void
.end method

.method public flush()V
    .registers 6

    .line 197
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->sorter:Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;->sort(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/utils/Array;)V

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "currentShader":Lcom/badlogic/gdx/graphics/g3d/Shader;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_31

    .line 200
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 201
    .local v2, "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    if-eq v0, v3, :cond_2b

    .line 202
    if-eqz v0, :cond_22

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g3d/Shader;->end()V

    .line 203
    :cond_22
    iget-object v0, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    .line 204
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    invoke-interface {v0, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/Shader;->begin(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;)V

    .line 206
    :cond_2b
    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/g3d/Shader;->render(Lcom/badlogic/gdx/graphics/g3d/Renderable;)V

    .line 199
    .end local v2  # "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 208
    .end local v1  # "i":I
    :cond_31
    if-eqz v0, :cond_36

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g3d/Shader;->end()V

    .line 209
    :cond_36
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderablesPool:Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;->flush()V

    .line 210
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 211
    return-void
.end method

.method public getCamera()Lcom/badlogic/gdx/graphics/Camera;
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->camera:Lcom/badlogic/gdx/graphics/Camera;

    return-object v0
.end method

.method public getRenderContext()Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    return-object v0
.end method

.method public getRenderableSorter()Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;
    .registers 2

    .line 191
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->sorter:Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;

    return-object v0
.end method

.method public getShaderProvider()Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->shaderProvider:Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;

    return-object v0
.end method

.method public ownsRenderContext()Z
    .registers 2

    .line 176
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->ownContext:Z

    return v0
.end method

.method public render(Lcom/badlogic/gdx/graphics/g3d/Renderable;)V
    .registers 3
    .param p1, "renderable"  # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 226
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->shaderProvider:Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;->getShader(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Shader;

    move-result-object v0

    iput-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    .line 227
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 228
    return-void
.end method

.method public render(Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;)V
    .registers 6
    .param p1, "renderableProvider"  # Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;

    .line 234
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 235
    .local v0, "offset":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderablesPool:Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;

    invoke-interface {p1, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;->getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V

    .line 236
    move v1, v0

    .local v1, "i":I
    :goto_c
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_25

    .line 237
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 238
    .local v2, "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->shaderProvider:Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;

    invoke-interface {v3, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;->getShader(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Shader;

    move-result-object v3

    iput-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    .line 236
    .end local v2  # "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 240
    .end local v1  # "i":I
    :cond_25
    return-void
.end method

.method public render(Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;Lcom/badlogic/gdx/graphics/g3d/Environment;)V
    .registers 7
    .param p1, "renderableProvider"  # Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;
    .param p2, "environment"  # Lcom/badlogic/gdx/graphics/g3d/Environment;

    .line 256
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 257
    .local v0, "offset":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderablesPool:Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;

    invoke-interface {p1, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;->getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V

    .line 258
    move v1, v0

    .local v1, "i":I
    :goto_c
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_27

    .line 259
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 260
    .local v2, "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    iput-object p2, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    .line 261
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->shaderProvider:Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;

    invoke-interface {v3, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;->getShader(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Shader;

    move-result-object v3

    iput-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    .line 258
    .end local v2  # "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 263
    .end local v1  # "i":I
    :cond_27
    return-void
.end method

.method public render(Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;Lcom/badlogic/gdx/graphics/g3d/Environment;Lcom/badlogic/gdx/graphics/g3d/Shader;)V
    .registers 8
    .param p1, "renderableProvider"  # Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;
    .param p2, "environment"  # Lcom/badlogic/gdx/graphics/g3d/Environment;
    .param p3, "shader"  # Lcom/badlogic/gdx/graphics/g3d/Shader;

    .line 308
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 309
    .local v0, "offset":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderablesPool:Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;

    invoke-interface {p1, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;->getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V

    .line 310
    move v1, v0

    .local v1, "i":I
    :goto_c
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_29

    .line 311
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 312
    .local v2, "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    iput-object p2, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    .line 313
    iput-object p3, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    .line 314
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->shaderProvider:Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;

    invoke-interface {v3, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;->getShader(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Shader;

    move-result-object v3

    iput-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    .line 310
    .end local v2  # "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 316
    .end local v1  # "i":I
    :cond_29
    return-void
.end method

.method public render(Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;Lcom/badlogic/gdx/graphics/g3d/Shader;)V
    .registers 7
    .param p1, "renderableProvider"  # Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;
    .param p2, "shader"  # Lcom/badlogic/gdx/graphics/g3d/Shader;

    .line 281
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 282
    .local v0, "offset":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderablesPool:Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;

    invoke-interface {p1, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;->getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V

    .line 283
    move v1, v0

    .local v1, "i":I
    :goto_c
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_27

    .line 284
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 285
    .local v2, "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    iput-object p2, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    .line 286
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->shaderProvider:Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;

    invoke-interface {v3, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;->getShader(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Shader;

    move-result-object v3

    iput-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    .line 283
    .end local v2  # "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 288
    .end local v1  # "i":I
    :cond_27
    return-void
.end method

.method public render(Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)V"
        }
    .end annotation

    .line 246
    .local p1, "renderableProviders":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;

    .line 247
    .local v1, "renderableProvider":Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->render(Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;)V

    .end local v1  # "renderableProvider":Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;
    goto :goto_4

    .line 248
    :cond_14
    return-void
.end method

.method public render(Ljava/lang/Iterable;Lcom/badlogic/gdx/graphics/g3d/Environment;)V
    .registers 5
    .param p2, "environment"  # Lcom/badlogic/gdx/graphics/g3d/Environment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lcom/badlogic/gdx/graphics/g3d/Environment;",
            ")V"
        }
    .end annotation

    .line 271
    .local p1, "renderableProviders":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;

    .line 272
    .local v1, "renderableProvider":Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;
    invoke-virtual {p0, v1, p2}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->render(Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;Lcom/badlogic/gdx/graphics/g3d/Environment;)V

    .end local v1  # "renderableProvider":Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;
    goto :goto_4

    .line 273
    :cond_14
    return-void
.end method

.method public render(Ljava/lang/Iterable;Lcom/badlogic/gdx/graphics/g3d/Environment;Lcom/badlogic/gdx/graphics/g3d/Shader;)V
    .registers 6
    .param p2, "environment"  # Lcom/badlogic/gdx/graphics/g3d/Environment;
    .param p3, "shader"  # Lcom/badlogic/gdx/graphics/g3d/Shader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lcom/badlogic/gdx/graphics/g3d/Environment;",
            "Lcom/badlogic/gdx/graphics/g3d/Shader;",
            ")V"
        }
    .end annotation

    .line 327
    .local p1, "renderableProviders":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;

    .line 328
    .local v1, "renderableProvider":Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;
    invoke-virtual {p0, v1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->render(Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;Lcom/badlogic/gdx/graphics/g3d/Environment;Lcom/badlogic/gdx/graphics/g3d/Shader;)V

    .end local v1  # "renderableProvider":Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;
    goto :goto_4

    .line 329
    :cond_14
    return-void
.end method

.method public render(Ljava/lang/Iterable;Lcom/badlogic/gdx/graphics/g3d/Shader;)V
    .registers 5
    .param p2, "shader"  # Lcom/badlogic/gdx/graphics/g3d/Shader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lcom/badlogic/gdx/graphics/g3d/Shader;",
            ")V"
        }
    .end annotation

    .line 296
    .local p1, "renderableProviders":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;

    .line 297
    .local v1, "renderableProvider":Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;
    invoke-virtual {p0, v1, p2}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->render(Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;Lcom/badlogic/gdx/graphics/g3d/Shader;)V

    .end local v1  # "renderableProvider":Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;
    goto :goto_4

    .line 298
    :cond_14
    return-void
.end method

.method public setCamera(Lcom/badlogic/gdx/graphics/Camera;)V
    .registers 4
    .param p1, "cam"  # Lcom/badlogic/gdx/graphics/Camera;

    .line 159
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->camera:Lcom/badlogic/gdx/graphics/Camera;

    if-eqz v0, :cond_10

    .line 160
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_d

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->flush()V

    .line 161
    :cond_d
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->camera:Lcom/badlogic/gdx/graphics/Camera;

    .line 162
    return-void

    .line 159
    :cond_10
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Call begin() first."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
