.class public Lcom/badlogic/gdx/utils/SharedLibraryLoader;
.super Ljava/lang/Object;
.source "SharedLibraryLoader.java"


# static fields
.field public static is64Bit:Z

.field public static isARM:Z

.field public static isAndroid:Z

.field public static isIos:Z

.field public static isLinux:Z

.field public static isMac:Z

.field public static isWindows:Z

.field private static final loadedLibraries:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private nativesJar:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 39
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Windows"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isWindows:Z

    .line 40
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Linux"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isLinux:Z

    .line 41
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isMac:Z

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isIos:Z

    .line 43
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isAndroid:Z

    .line 44
    const-string v1, "os.arch"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "arm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_49

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "aarch64"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    goto :goto_49

    :cond_47
    move v2, v0

    goto :goto_4a

    :cond_49
    :goto_49
    move v2, v3

    :goto_4a
    sput-boolean v2, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isARM:Z

    .line 45
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "64"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_67

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "armv8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    goto :goto_67

    :cond_65
    move v1, v0

    goto :goto_68

    :cond_67
    :goto_67
    move v1, v3

    :goto_68
    sput-boolean v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->is64Bit:Z

    .line 48
    const-string v1, "java.runtime.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "vm":Ljava/lang/String;
    if-eqz v1, :cond_84

    const-string v2, "Android Runtime"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 50
    sput-boolean v3, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isAndroid:Z

    .line 51
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isWindows:Z

    .line 52
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isLinux:Z

    .line 53
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isMac:Z

    .line 54
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->is64Bit:Z

    .line 56
    :cond_84
    sget-boolean v2, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isAndroid:Z

    if-nez v2, :cond_a0

    sget-boolean v2, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isWindows:Z

    if-nez v2, :cond_a0

    sget-boolean v2, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isLinux:Z

    if-nez v2, :cond_a0

    sget-boolean v2, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isMac:Z

    if-nez v2, :cond_a0

    .line 57
    sput-boolean v3, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isIos:Z

    .line 58
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isAndroid:Z

    .line 59
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isWindows:Z

    .line 60
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isLinux:Z

    .line 61
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isMac:Z

    .line 62
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->is64Bit:Z

    .line 66
    .end local v1  # "vm":Ljava/lang/String;
    :cond_a0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadedLibraries:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "nativesJar"  # Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->nativesJar:Ljava/lang/String;

    .line 81
    return-void
.end method

.method private canExecute(Ljava/io/File;)Z
    .registers 9
    .param p1, "file"  # Ljava/io/File;

    .line 240
    const/4 v0, 0x0

    :try_start_1
    const-class v1, Ljava/io/File;

    const-string v2, "canExecute"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 241
    .local v1, "canExecute":Ljava/lang/reflect/Method;
    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1b

    return v3

    .line 243
    :cond_1b
    const-class v2, Ljava/io/File;

    const-string v4, "setExecutable"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 244
    .local v2, "setExecutable":Ljava/lang/reflect/Method;
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_49} :catch_4a

    return v0

    .line 247
    .end local v1  # "canExecute":Ljava/lang/reflect/Method;
    .end local v2  # "setExecutable":Ljava/lang/reflect/Method;
    :catch_4a
    move-exception v1

    .line 249
    return v0
.end method

.method private canWrite(Ljava/io/File;)Z
    .registers 6
    .param p1, "file"  # Ljava/io/File;

    .line 216
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 218
    .local v0, "parent":Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    .line 219
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->canExecute(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_22

    .line 221
    :cond_18
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->randomUUID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v1, "testFile":Ljava/io/File;
    goto :goto_2e

    .line 219
    .end local v1  # "testFile":Ljava/io/File;
    :cond_22
    :goto_22
    return v2

    .line 223
    :cond_23
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 224
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    .line 225
    :cond_2d
    move-object v1, p1

    .line 228
    .restart local v1  # "testFile":Ljava/io/File;
    :goto_2e
    :try_start_2e
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 229
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->canExecute(Ljava/io/File;)Z

    move-result v3
    :try_end_3a
    .catchall {:try_start_2e .. :try_end_3a} :catchall_46

    if-nez v3, :cond_40

    .line 234
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 229
    return v2

    .line 230
    :cond_40
    nop

    .line 234
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 230
    const/4 v2, 0x1

    return v2

    .line 231
    :catchall_46
    move-exception v3

    .line 232
    .local v3, "ex":Ljava/lang/Throwable;
    nop

    .line 234
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 232
    return v2
.end method

.method private extractFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .registers 11
    .param p1, "sourcePath"  # Ljava/lang/String;
    .param p2, "sourceCrc"  # Ljava/lang/String;
    .param p3, "extractedFile"  # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "extractedCrc":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 256
    :try_start_7
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->crc(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_10} :catch_12

    move-object v0, v1

    .line 258
    goto :goto_13

    .line 257
    :catch_12
    move-exception v1

    .line 262
    :cond_13
    :goto_13
    if-eqz v0, :cond_1b

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 263
    :cond_1b
    const/4 v1, 0x0

    .line 264
    .local v1, "input":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 266
    .local v2, "output":Ljava/io/FileOutputStream;
    :try_start_1d
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->readFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    move-object v1, v3

    .line 267
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 268
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 269
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 271
    .local v3, "buffer":[B
    :goto_33
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_37} :catch_49
    .catchall {:try_start_1d .. :try_end_37} :catchall_47

    .line 272
    .local v4, "length":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_42

    .line 279
    .end local v3  # "buffer":[B
    .end local v4  # "length":I
    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 280
    invoke-static {v2}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 281
    nop

    .line 284
    .end local v1  # "input":Ljava/io/InputStream;
    .end local v2  # "output":Ljava/io/FileOutputStream;
    :cond_41
    return-object p3

    .line 273
    .restart local v1  # "input":Ljava/io/InputStream;
    .restart local v2  # "output":Ljava/io/FileOutputStream;
    .restart local v3  # "buffer":[B
    .restart local v4  # "length":I
    :cond_42
    const/4 v5, 0x0

    :try_start_43
    invoke-virtual {v2, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_49
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    .line 274
    .end local v4  # "length":I
    goto :goto_33

    .line 279
    .end local v3  # "buffer":[B
    :catchall_47
    move-exception v3

    goto :goto_71

    .line 275
    :catch_49
    move-exception v3

    .line 276
    .local v3, "ex":Ljava/io/IOException;
    :try_start_4a
    new-instance v4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error extracting file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nTo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0  # "extractedCrc":Ljava/lang/String;
    .end local v1  # "input":Ljava/io/InputStream;
    .end local v2  # "output":Ljava/io/FileOutputStream;
    .end local p1  # "sourcePath":Ljava/lang/String;
    .end local p2  # "sourceCrc":Ljava/lang/String;
    .end local p3  # "extractedFile":Ljava/io/File;
    throw v4
    :try_end_71
    .catchall {:try_start_4a .. :try_end_71} :catchall_47

    .line 279
    .end local v3  # "ex":Ljava/io/IOException;
    .restart local v0  # "extractedCrc":Ljava/lang/String;
    .restart local v1  # "input":Ljava/io/InputStream;
    .restart local v2  # "output":Ljava/io/FileOutputStream;
    .restart local p1  # "sourcePath":Ljava/lang/String;
    .restart local p2  # "sourceCrc":Ljava/lang/String;
    .restart local p3  # "extractedFile":Ljava/io/File;
    :goto_71
    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 280
    invoke-static {v2}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v3
.end method

.method private getExtractedFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 9
    .param p1, "dirName"  # Ljava/lang/String;
    .param p2, "fileName"  # Ljava/lang/String;

    .line 186
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    const-string v2, "java.io.tmpdir"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/libgdx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "user.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .local v0, "idealFile":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->canWrite(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_39

    return-object v0

    .line 192
    :cond_39
    const/4 v1, 0x0

    :try_start_3a
    invoke-static {p1, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 193
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 194
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v3

    .line 195
    invoke-direct {p0, v2}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->canWrite(Ljava/io/File;)Z

    move-result v3
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_4e} :catch_52

    if-eqz v3, :cond_51

    return-object v2

    .line 198
    .end local v2  # "file":Ljava/io/File;
    :cond_51
    goto :goto_53

    .line 197
    :catch_52
    move-exception v2

    .line 201
    :goto_53
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user.home"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/.libgdx/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .restart local v2  # "file":Ljava/io/File;
    invoke-direct {p0, v2}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->canWrite(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_7c

    return-object v2

    .line 205
    :cond_7c
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".temp/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 206
    invoke-direct {p0, v2}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->canWrite(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_9c

    return-object v2

    .line 209
    :cond_9c
    const-string v3, "APP_SANDBOX_CONTAINER_ID"

    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a5

    return-object v0

    .line 211
    :cond_a5
    return-object v1
.end method

.method public static declared-synchronized isLoaded(Ljava/lang/String;)Z
    .registers 3
    .param p0, "libraryName"  # Ljava/lang/String;

    const-class v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;

    monitor-enter v0

    .line 341
    :try_start_3
    sget-object v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadedLibraries:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return v1

    .line 341
    .end local p0  # "libraryName":Ljava/lang/String;
    :catchall_b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private loadFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Throwable;
    .registers 5
    .param p1, "sourcePath"  # Ljava/lang/String;
    .param p2, "sourceCrc"  # Ljava/lang/String;
    .param p3, "extractedFile"  # Ljava/io/File;

    .line 328
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->extractFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_d

    .line 329
    const/4 v0, 0x0

    return-object v0

    .line 330
    :catchall_d
    move-exception v0

    .line 331
    .local v0, "ex":Ljava/lang/Throwable;
    return-object v0
.end method

.method private loadFile(Ljava/lang/String;)V
    .registers 9
    .param p1, "sourcePath"  # Ljava/lang/String;

    .line 290
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->readFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->crc(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "sourceCrc":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "java.io.tmpdir"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/libgdx"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "user.name"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .local v2, "file":Ljava/io/File;
    invoke-direct {p0, p1, v0, v2}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Throwable;

    move-result-object v3

    .line 298
    .local v3, "ex":Ljava/lang/Throwable;
    if-nez v3, :cond_4a

    return-void

    .line 302
    :cond_4a
    const/4 v4, 0x0

    :try_start_4b
    invoke-static {v0, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    move-object v2, v4

    .line 303
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-direct {p0, p1, v0, v2}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Throwable;

    move-result-object v4
    :try_end_5a
    .catchall {:try_start_4b .. :try_end_5a} :catchall_5e

    if-nez v4, :cond_5d

    return-void

    .line 305
    :cond_5d
    goto :goto_5f

    .line 304
    :catchall_5e
    move-exception v4

    .line 308
    :goto_5f
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "user.home"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/.libgdx/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    .line 309
    invoke-direct {p0, p1, v0, v2}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Throwable;

    move-result-object v4

    if-nez v4, :cond_89

    return-void

    .line 312
    :cond_89
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ".temp/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    .line 313
    invoke-direct {p0, p1, v0, v2}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Throwable;

    move-result-object v4

    if-nez v4, :cond_a9

    return-void

    .line 316
    :cond_a9
    new-instance v4, Ljava/io/File;

    const-string v5, "java.library.path"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    .line 317
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_c3

    .line 318
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 319
    return-void

    .line 322
    :cond_c3
    new-instance v4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v4, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method static randomUUID()Ljava/lang/String;
    .registers 5

    .line 74
    new-instance v0, Ljava/util/UUID;

    sget-object v1, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    sget-object v3, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readFile(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 8
    .param p1, "path"  # Ljava/lang/String;

    .line 132
    const-string v0, "\' in JAR: "

    iget-object v1, p0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->nativesJar:Ljava/lang/String;

    if-nez v1, :cond_3b

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 134
    .local v0, "input":Ljava/io/InputStream;
    if-eqz v0, :cond_22

    .line 135
    return-object v0

    .line 134
    :cond_22
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to read file for extraction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    .end local v0  # "input":Ljava/io/InputStream;
    :cond_3b
    :try_start_3b
    new-instance v1, Ljava/util/zip/ZipFile;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->nativesJar:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 141
    .local v1, "file":Ljava/util/zip/ZipFile;
    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 142
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_4d

    .line 143
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 142
    :cond_4d
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t find \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->nativesJar:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    .end local p1  # "path":Ljava/lang/String;
    throw v3
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_70} :catch_70

    .line 144
    .end local v1  # "file":Ljava/util/zip/ZipFile;
    .end local v2  # "entry":Ljava/util/zip/ZipEntry;
    .restart local p1  # "path":Ljava/lang/String;
    :catch_70
    move-exception v1

    .line 145
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->nativesJar:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static declared-synchronized setLoaded(Ljava/lang/String;)V
    .registers 3
    .param p0, "libraryName"  # Ljava/lang/String;

    const-class v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;

    monitor-enter v0

    .line 337
    :try_start_3
    sget-object v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadedLibraries:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 338
    monitor-exit v0

    return-void

    .line 336
    .end local p0  # "libraryName":Ljava/lang/String;
    :catchall_a
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public crc(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 7
    .param p1, "input"  # Ljava/io/InputStream;

    .line 85
    if-eqz p1, :cond_2d

    .line 86
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 87
    .local v0, "crc":Ljava/util/zip/CRC32;
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 90
    .local v1, "buffer":[B
    :goto_b
    :try_start_b
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 91
    .local v2, "length":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_13

    goto :goto_1e

    .line 92
    :cond_13
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_17} :catch_1d
    .catchall {:try_start_b .. :try_end_17} :catchall_18

    .line 93
    .end local v2  # "length":I
    goto :goto_b

    .line 96
    :catchall_18
    move-exception v2

    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    .line 94
    :catch_1d
    move-exception v2

    .line 96
    :goto_1e
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 97
    nop

    .line 98
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    const/16 v4, 0x10

    invoke-static {v2, v3, v4}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 85
    .end local v0  # "crc":Ljava/util/zip/CRC32;
    .end local v1  # "buffer":[B
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public extractFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 7
    .param p1, "sourcePath"  # Ljava/lang/String;
    .param p2, "dirName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    :try_start_0
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->readFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->crc(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "sourceCrc":Ljava/lang/String;
    if-nez p2, :cond_b

    move-object p2, v0

    .line 159
    :cond_b
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->getExtractedFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 160
    .local v1, "extractedFile":Ljava/io/File;
    if-nez v1, :cond_3b

    .line 161
    invoke-static {}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->randomUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->getExtractedFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    move-object v1, v2

    .line 162
    if-eqz v1, :cond_33

    goto :goto_3b

    :cond_33
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "Unable to find writable path to extract file. Is the user home directory writable?"

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    .end local p1  # "sourcePath":Ljava/lang/String;
    .end local p2  # "dirName":Ljava/lang/String;
    throw v2

    .line 165
    .restart local p1  # "sourcePath":Ljava/lang/String;
    .restart local p2  # "dirName":Ljava/lang/String;
    :cond_3b
    :goto_3b
    invoke-direct {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->extractFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2
    :try_end_3f
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3f} :catch_40

    return-object v2

    .line 166
    .end local v0  # "sourceCrc":Ljava/lang/String;
    .end local v1  # "extractedFile":Ljava/io/File;
    :catch_40
    move-exception v0

    .line 168
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/io/File;

    const-string v2, "java.library.path"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_53

    return-object v1

    .line 170
    :cond_53
    throw v0
.end method

.method public extractFileTo(Ljava/lang/String;Ljava/io/File;)V
    .registers 6
    .param p1, "sourcePath"  # Ljava/lang/String;
    .param p2, "dir"  # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->readFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->crc(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->extractFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 180
    return-void
.end method

.method public load(Ljava/lang/String;)V
    .registers 8
    .param p1, "libraryName"  # Ljava/lang/String;

    .line 113
    sget-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isIos:Z

    if-eqz v0, :cond_5

    return-void

    .line 115
    :cond_5
    const-class v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;

    monitor-enter v0

    .line 116
    :try_start_8
    invoke-static {p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isLoaded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    monitor-exit v0

    return-void

    .line 117
    :cond_10
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_5c

    .line 119
    .local v1, "platformName":Ljava/lang/String;
    :try_start_14
    sget-boolean v2, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isAndroid:Z

    if-eqz v2, :cond_1c

    .line 120
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_1f

    .line 122
    :cond_1c
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadFile(Ljava/lang/String;)V

    .line 123
    :goto_1f
    invoke-static {p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->setLoaded(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_25

    .line 127
    nop

    .line 128
    .end local v1  # "platformName":Ljava/lang/String;
    :try_start_23
    monitor-exit v0

    .line 129
    return-void

    .line 124
    .restart local v1  # "platformName":Ljava/lang/String;
    :catchall_25
    move-exception v2

    .line 125
    .local v2, "ex":Ljava/lang/Throwable;
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t load shared library \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' for target: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "os.name"

    .line 126
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->is64Bit:Z

    if-eqz v5, :cond_4e

    const-string v5, ", 64-bit"

    goto :goto_50

    :cond_4e
    const-string v5, ", 32-bit"

    :goto_50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p1  # "libraryName":Ljava/lang/String;
    throw v3

    .line 128
    .end local v1  # "platformName":Ljava/lang/String;
    .end local v2  # "ex":Ljava/lang/Throwable;
    .restart local p1  # "libraryName":Ljava/lang/String;
    :catchall_5c
    move-exception v1

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_23 .. :try_end_5e} :catchall_5c

    throw v1
.end method

.method public mapLibraryName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "libraryName"  # Ljava/lang/String;

    .line 103
    sget-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isWindows:Z

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->is64Bit:Z

    if-eqz v1, :cond_14

    const-string v1, "64.dll"

    goto :goto_16

    :cond_14
    const-string v1, ".dll"

    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 104
    :cond_1f
    sget-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isLinux:Z

    const-string v1, "lib"

    if-eqz v0, :cond_51

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isARM:Z

    if-eqz v1, :cond_39

    const-string v1, "arm"

    goto :goto_3b

    :cond_39
    const-string v1, ""

    :goto_3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->is64Bit:Z

    if-eqz v1, :cond_46

    const-string v1, "64.so"

    goto :goto_48

    :cond_46
    const-string v1, ".so"

    :goto_48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 105
    :cond_51
    sget-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isMac:Z

    if-eqz v0, :cond_74

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->is64Bit:Z

    if-eqz v1, :cond_69

    const-string v1, "64.dylib"

    goto :goto_6b

    :cond_69
    const-string v1, ".dylib"

    :goto_6b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 106
    :cond_74
    return-object p1
.end method
