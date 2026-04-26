.class public Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGeneratorLoader;
.super Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader;
.source "FreeTypeFontGeneratorLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGeneratorLoader$FreeTypeFontGeneratorParameters;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader<",
        "Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;",
        "Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGeneratorLoader$FreeTypeFontGeneratorParameters;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .registers 2
    .param p1, "resolver"  # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .line 38
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 39
    return-void
.end method


# virtual methods
.method public bridge synthetic getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Lcom/badlogic/gdx/utils/Array;
    .registers 4

    .line 34
    check-cast p3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGeneratorLoader$FreeTypeFontGeneratorParameters;

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGeneratorLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGeneratorLoader$FreeTypeFontGeneratorParameters;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    return-object p1
.end method

.method public getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGeneratorLoader$FreeTypeFontGeneratorParameters;)Lcom/badlogic/gdx/utils/Array;
    .registers 5
    .param p1, "fileName"  # Ljava/lang/String;
    .param p2, "file"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "parameter"  # Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGeneratorLoader$FreeTypeFontGeneratorParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGeneratorLoader$FreeTypeFontGeneratorParameters;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public load(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGeneratorLoader$FreeTypeFontGeneratorParameters;)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;
    .registers 8
    .param p1, "assetManager"  # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"  # Ljava/lang/String;
    .param p3, "file"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"  # Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGeneratorLoader$FreeTypeFontGeneratorParameters;

    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "generator":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;
    invoke-virtual {p3}, Lcom/badlogic/gdx/files/FileHandle;->extension()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 46
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;

    invoke-virtual {p3}, Lcom/badlogic/gdx/files/FileHandle;->nameWithoutExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/badlogic/gdx/files/FileHandle;->sibling(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    move-object v0, v1

    goto :goto_22

    .line 48
    :cond_1c
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;

    invoke-direct {v1, p3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    move-object v0, v1

    .line 50
    :goto_22
    return-object v0
.end method

.method public bridge synthetic load(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;
    .registers 5

    .line 34
    check-cast p4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGeneratorLoader$FreeTypeFontGeneratorParameters;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGeneratorLoader;->load(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGeneratorLoader$FreeTypeFontGeneratorParameters;)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;

    move-result-object p1

    return-object p1
.end method
