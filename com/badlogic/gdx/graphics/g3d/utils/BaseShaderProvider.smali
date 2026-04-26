.class public abstract Lcom/badlogic/gdx/graphics/g3d/utils/BaseShaderProvider;
.super Ljava/lang/Object;
.source "BaseShaderProvider.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;


# instance fields
.field protected shaders:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Shader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseShaderProvider;->shaders:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method protected abstract createShader(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Shader;
.end method

.method public dispose()V
    .registers 3

    .line 45
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseShaderProvider;->shaders:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/Shader;

    .line 46
    .local v1, "shader":Lcom/badlogic/gdx/graphics/g3d/Shader;
    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/g3d/Shader;->dispose()V

    .line 47
    .end local v1  # "shader":Lcom/badlogic/gdx/graphics/g3d/Shader;
    goto :goto_6

    .line 48
    :cond_16
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseShaderProvider;->shaders:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 49
    return-void
.end method

.method public getShader(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Shader;
    .registers 6
    .param p1, "renderable"  # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 29
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    .line 30
    .local v0, "suggestedShader":Lcom/badlogic/gdx/graphics/g3d/Shader;
    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/Shader;->canRender(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 31
    :cond_b
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseShaderProvider;->shaders:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Shader;

    .line 32
    .local v2, "shader":Lcom/badlogic/gdx/graphics/g3d/Shader;
    invoke-interface {v2, p1}, Lcom/badlogic/gdx/graphics/g3d/Shader;->canRender(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Z

    move-result v3

    if-eqz v3, :cond_24

    return-object v2

    .line 33
    .end local v2  # "shader":Lcom/badlogic/gdx/graphics/g3d/Shader;
    :cond_24
    goto :goto_11

    .line 34
    :cond_25
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseShaderProvider;->createShader(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Shader;

    move-result-object v1

    .line 35
    .local v1, "shader":Lcom/badlogic/gdx/graphics/g3d/Shader;
    invoke-interface {v1, p1}, Lcom/badlogic/gdx/graphics/g3d/Shader;->canRender(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 36
    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/g3d/Shader;->init()V

    .line 37
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseShaderProvider;->shaders:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 38
    return-object v1

    .line 35
    :cond_38
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "unable to provide a shader for this renderable"

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
