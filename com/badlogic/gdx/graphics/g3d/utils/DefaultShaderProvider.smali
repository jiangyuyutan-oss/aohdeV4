.class public Lcom/badlogic/gdx/graphics/g3d/utils/DefaultShaderProvider;
.super Lcom/badlogic/gdx/graphics/g3d/utils/BaseShaderProvider;
.source "DefaultShaderProvider.java"


# instance fields
.field public final config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultShaderProvider;-><init>(Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V
    .registers 5
    .param p1, "vertexShader"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "fragmentShader"  # Lcom/badlogic/gdx/files/FileHandle;

    .line 36
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultShaderProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;)V
    .registers 3
    .param p1, "config"  # Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    .line 27
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseShaderProvider;-><init>()V

    .line 28
    if-nez p1, :cond_b

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;-><init>()V

    goto :goto_c

    :cond_b
    move-object v0, p1

    :goto_c
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultShaderProvider;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "vertexShader"  # Ljava/lang/String;
    .param p2, "fragmentShader"  # Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultShaderProvider;-><init>(Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected createShader(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Shader;
    .registers 4
    .param p1, "renderable"  # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 45
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultShaderProvider;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;)V

    return-object v0
.end method
