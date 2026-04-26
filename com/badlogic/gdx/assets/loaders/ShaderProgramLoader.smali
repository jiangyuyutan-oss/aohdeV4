.class public Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader;
.super Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;
.source "ShaderProgramLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader$ShaderProgramParameter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader<",
        "Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;",
        "Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader$ShaderProgramParameter;",
        ">;"
    }
.end annotation


# instance fields
.field private fragmentFileSuffix:Ljava/lang/String;

.field private vertexFileSuffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .registers 3
    .param p1, "resolver"  # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .line 42
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 38
    const-string v0, ".vert"

    iput-object v0, p0, Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader;->vertexFileSuffix:Ljava/lang/String;

    .line 39
    const-string v0, ".frag"

    iput-object v0, p0, Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader;->fragmentFileSuffix:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "resolver"  # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;
    .param p2, "vertexFileSuffix"  # Ljava/lang/String;
    .param p3, "fragmentFileSuffix"  # Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 38
    const-string v0, ".vert"

    iput-object v0, p0, Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader;->vertexFileSuffix:Ljava/lang/String;

    .line 39
    const-string v0, ".frag"

    iput-object v0, p0, Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader;->fragmentFileSuffix:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader;->vertexFileSuffix:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader;->fragmentFileSuffix:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public bridge synthetic getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Lcom/badlogic/gdx/utils/Array;
    .registers 4

    .line 36
    check-cast p3, Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader$ShaderProgramParameter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader$ShaderProgramParameter;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    return-object p1
.end method

.method public getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader$ShaderProgramParameter;)Lcom/badlogic/gdx/utils/Array;
    .registers 5
    .param p1, "fileName"  # Ljava/lang/String;
    .param p2, "file"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "parameter"  # Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader$ShaderProgramParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader$ShaderProgramParameter;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    .registers 5

    .line 36
    check-cast p4, Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader$ShaderProgramParameter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader;->loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader$ShaderProgramParameter;)V

    return-void
.end method

.method public loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader$ShaderProgramParameter;)V
    .registers 5
    .param p1, "manager"  # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"  # Ljava/lang/String;
    .param p3, "file"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"  # Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader$ShaderProgramParameter;

    .line 58
    return-void
.end method

.method public loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader$ShaderProgramParameter;)Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .registers 15
    .param p1, "manager"  # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"  # Ljava/lang/String;
    .param p3, "file"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"  # Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader$ShaderProgramParameter;

    .line 62
    const/4 v0, 0x0

    .local v0, "vertFileName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 63
    .local v1, "fragFileName":Ljava/lang/String;
    if-eqz p4, :cond_10

    .line 64
    iget-object v2, p4, Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader$ShaderProgramParameter;->vertexFile:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v0, p4, Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader$ShaderProgramParameter;->vertexFile:Ljava/lang/String;

    .line 65
    :cond_a
    iget-object v2, p4, Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader$ShaderProgramParameter;->fragmentFile:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v1, p4, Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader$ShaderProgramParameter;->fragmentFile:Ljava/lang/String;

    .line 67
    :cond_10
    const/4 v2, 0x0

    if-nez v0, :cond_3d

    iget-object v3, p0, Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader;->fragmentFileSuffix:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader;->fragmentFileSuffix:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader;->vertexFileSuffix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    :cond_3d
    if-nez v1, :cond_69

    iget-object v3, p0, Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader;->vertexFileSuffix:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader;->vertexFileSuffix:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader;->fragmentFileSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    :cond_69
    if-nez v0, :cond_6d

    move-object v2, p3

    goto :goto_71

    :cond_6d
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 74
    .local v2, "vertexFile":Lcom/badlogic/gdx/files/FileHandle;
    :goto_71
    if-nez v1, :cond_75

    move-object v3, p3

    goto :goto_79

    :cond_75
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 75
    .local v3, "fragmentFile":Lcom/badlogic/gdx/files/FileHandle;
    :goto_79
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "vertexCode":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/files/FileHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_85

    move-object v5, v4

    goto :goto_89

    :cond_85
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "fragmentCode":Ljava/lang/String;
    :goto_89
    if-eqz p4, :cond_b9

    .line 78
    iget-object v6, p4, Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader$ShaderProgramParameter;->prependVertexCode:Ljava/lang/String;

    if-eqz v6, :cond_a2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p4, Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader$ShaderProgramParameter;->prependVertexCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 79
    :cond_a2
    iget-object v6, p4, Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader$ShaderProgramParameter;->prependFragmentCode:Ljava/lang/String;

    if-eqz v6, :cond_b9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p4, Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader$ShaderProgramParameter;->prependFragmentCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 82
    :cond_b9
    new-instance v6, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-direct {v6, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .local v6, "shaderProgram":Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    if-eqz p4, :cond_c4

    iget-boolean v7, p4, Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader$ShaderProgramParameter;->logOnCompileFailure:Z

    if-eqz v7, :cond_f2

    :cond_c4
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled()Z

    move-result v7

    if-nez v7, :cond_f2

    .line 84
    invoke-virtual {p1}, Lcom/badlogic/gdx/assets/AssetManager;->getLogger()Lcom/badlogic/gdx/utils/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ShaderProgram "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " failed to compile:\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getLog()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/Logger;->error(Ljava/lang/String;)V

    .line 87
    :cond_f2
    return-object v6
.end method

.method public bridge synthetic loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;
    .registers 5

    .line 36
    check-cast p4, Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader$ShaderProgramParameter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader;->loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader$ShaderProgramParameter;)Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object p1

    return-object p1
.end method
