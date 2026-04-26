.class public Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;
.super Ljava/lang/Object;
.source "DefaultAndroidFiles.java"

# interfaces
.implements Lcom/badlogic/gdx/backends/android/AndroidFiles;


# instance fields
.field protected final assets:Landroid/content/res/AssetManager;

.field private expansionFile:Lcom/badlogic/gdx/backends/android/ZipResourceFile;

.field protected final externalFilesPath:Ljava/lang/String;

.field protected final localpath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/content/ContextWrapper;Z)V
    .registers 8
    .param p1, "assets"  # Landroid/content/res/AssetManager;
    .param p2, "contextWrapper"  # Landroid/content/ContextWrapper;
    .param p3, "useExternalFiles"  # Z

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;->expansionFile:Lcom/badlogic/gdx/backends/android/ZipResourceFile;

    .line 42
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;->assets:Landroid/content/res/AssetManager;

    .line 44
    invoke-virtual {p2}, Landroid/content/ContextWrapper;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "localPath":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    move-object v2, v1

    goto :goto_2b

    :cond_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2b
    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;->localpath:Ljava/lang/String;

    .line 46
    if-eqz p3, :cond_36

    .line 47
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;->initExternalFilesPath(Landroid/content/ContextWrapper;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;->externalFilesPath:Ljava/lang/String;

    goto :goto_38

    .line 49
    :cond_36
    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;->externalFilesPath:Ljava/lang/String;

    .line 51
    :goto_38
    return-void
.end method

.method private getZipFileHandleIfExists(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .registers 6
    .param p1, "handle"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "path"  # Ljava/lang/String;

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;->assets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 73
    return-object p1

    .line 74
    :catch_a
    move-exception v0

    .line 76
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;

    invoke-direct {v1, p2}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;-><init>(Ljava/lang/String;)V

    .line 77
    .local v1, "zipHandle":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_17

    .line 78
    return-object v1

    .line 79
    :cond_17
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_1e

    return-object v1

    .line 81
    .end local v0  # "ex":Ljava/lang/Exception;
    .end local v1  # "zipHandle":Lcom/badlogic/gdx/files/FileHandle;
    :cond_1e
    return-object p1
.end method


# virtual methods
.method public absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .registers 5
    .param p1, "path"  # Ljava/lang/String;

    .line 103
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;

    const/4 v1, 0x0

    sget-object v2, Lcom/badlogic/gdx/Files$FileType;->Absolute:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {v0, v1, p1, v2}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)V

    return-object v0
.end method

.method public classpath(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .registers 5
    .param p1, "path"  # Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;

    const/4 v1, 0x0

    sget-object v2, Lcom/badlogic/gdx/Files$FileType;->Classpath:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {v0, v1, p1, v2}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)V

    return-object v0
.end method

.method public external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .registers 5
    .param p1, "path"  # Ljava/lang/String;

    .line 98
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;

    const/4 v1, 0x0

    sget-object v2, Lcom/badlogic/gdx/Files$FileType;->External:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {v0, v1, p1, v2}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)V

    return-object v0
.end method

.method public getExpansionFile()Lcom/badlogic/gdx/backends/android/ZipResourceFile;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;->expansionFile:Lcom/badlogic/gdx/backends/android/ZipResourceFile;

    return-object v0
.end method

.method public getExternalStoragePath()Ljava/lang/String;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;->externalFilesPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileHandle(Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)Lcom/badlogic/gdx/files/FileHandle;
    .registers 5
    .param p1, "path"  # Ljava/lang/String;
    .param p2, "type"  # Lcom/badlogic/gdx/Files$FileType;

    .line 65
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    if-ne p2, v1, :cond_9

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;->assets:Landroid/content/res/AssetManager;

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    invoke-direct {v0, v1, p1, p2}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)V

    .line 66
    .local v0, "handle":Lcom/badlogic/gdx/files/FileHandle;
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;->expansionFile:Lcom/badlogic/gdx/backends/android/ZipResourceFile;

    if-eqz v1, :cond_19

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    if-ne p2, v1, :cond_19

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;->getZipFileHandleIfExists(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 67
    :cond_19
    return-object v0
.end method

.method public getLocalStoragePath()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;->localpath:Ljava/lang/String;

    return-object v0
.end method

.method protected initExternalFilesPath(Landroid/content/ContextWrapper;)Ljava/lang/String;
    .registers 6
    .param p1, "contextWrapper"  # Landroid/content/ContextWrapper;

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 55
    .local v1, "externalFilesDir":Ljava/io/File;
    if-eqz v1, :cond_27

    .line 56
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "externalFilesPath":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    move-object v2, v0

    goto :goto_26

    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_26
    return-object v2

    .line 59
    .end local v0  # "externalFilesPath":Ljava/lang/String;
    :cond_27
    return-object v0
.end method

.method public internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .registers 5
    .param p1, "path"  # Ljava/lang/String;

    .line 91
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;->assets:Landroid/content/res/AssetManager;

    sget-object v2, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {v0, v1, p1, v2}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)V

    .line 92
    .local v0, "handle":Lcom/badlogic/gdx/files/FileHandle;
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;->expansionFile:Lcom/badlogic/gdx/backends/android/ZipResourceFile;

    if-eqz v1, :cond_11

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;->getZipFileHandleIfExists(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 93
    :cond_11
    return-object v0
.end method

.method public isExternalStorageAvailable()Z
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;->externalFilesPath:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isLocalStorageAvailable()Z
    .registers 2

    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .registers 5
    .param p1, "path"  # Ljava/lang/String;

    .line 108
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;

    const/4 v1, 0x0

    sget-object v2, Lcom/badlogic/gdx/Files$FileType;->Local:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {v0, v1, p1, v2}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)V

    return-object v0
.end method

.method public setAPKExpansion(II)Z
    .registers 7
    .param p1, "mainVersion"  # I
    .param p2, "patchVersion"  # I

    .line 135
    :try_start_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_f

    .line 136
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    goto :goto_21

    .line 137
    .end local v0  # "context":Landroid/content/Context;
    :cond_f
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    instance-of v0, v0, Landroid/app/Fragment;

    if-eqz v0, :cond_30

    .line 138
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    check-cast v0, Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 142
    .restart local v0  # "context":Landroid/content/Context;
    :goto_21
    invoke-static {v0, p1, p2}, Lcom/badlogic/gdx/backends/android/APKExpansionSupport;->getAPKExpansionZipFile(Landroid/content/Context;II)Lcom/badlogic/gdx/backends/android/ZipResourceFile;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;->expansionFile:Lcom/badlogic/gdx/backends/android/ZipResourceFile;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_27} :catch_38

    .line 147
    .end local v0  # "context":Landroid/content/Context;
    nop

    .line 148
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;->expansionFile:Lcom/badlogic/gdx/backends/android/ZipResourceFile;

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    return v0

    .line 140
    :cond_30
    :try_start_30
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "APK expansion not supported for application type"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    .end local p1  # "mainVersion":I
    .end local p2  # "patchVersion":I
    throw v0
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_38} :catch_38

    .line 145
    .restart local p1  # "mainVersion":I
    .restart local p2  # "patchVersion":I
    :catch_38
    move-exception v0

    .line 146
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APK expansion main version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or patch version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " couldn\'t be opened!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
