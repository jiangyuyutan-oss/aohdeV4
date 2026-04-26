.class Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;
.super Ljava/lang/Object;
.source "SteamSharedLibraryLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final IS_64_BIT:Z

.field private static final OS:Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;

.field private static final SDK_LIBRARY_PATH:Ljava/lang/String;

.field private static final SDK_REDISTRIBUTABLE_BIN_PATH:Ljava/lang/String;

.field private static final SHARED_LIBRARY_EXTRACT_DIRECTORY:Ljava/lang/String;

.field private static final SHARED_LIBRARY_EXTRACT_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 17
    const-string v0, "com.codedisaster.steamworks.SharedLibraryExtractDirectory"

    const-string v1, "steamworks4j"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->SHARED_LIBRARY_EXTRACT_DIRECTORY:Ljava/lang/String;

    .line 20
    const-string v0, "com.codedisaster.steamworks.SharedLibraryExtractPath"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->SHARED_LIBRARY_EXTRACT_PATH:Ljava/lang/String;

    .line 23
    const-string v0, "com.codedisaster.steamworks.SDKRedistributableBinPath"

    const-string v1, "sdk/redistributable_bin"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->SDK_REDISTRIBUTABLE_BIN_PATH:Ljava/lang/String;

    .line 26
    const-string v0, "com.codedisaster.steamworks.SDKLibraryPath"

    const-string v1, "sdk/public/steam/lib"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->SDK_LIBRARY_PATH:Ljava/lang/String;

    .line 29
    const-string v0, "com.codedisaster.steamworks.Debug"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->DEBUG:Z

    .line 33
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "osName":Ljava/lang/String;
    const-string v1, "os.arch"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "osArch":Ljava/lang/String;
    const-string v2, "Windows"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 37
    sget-object v2, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;->Windows:Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;

    sput-object v2, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->OS:Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;

    goto :goto_67

    .line 38
    :cond_4e
    const-string v2, "Linux"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 39
    sget-object v2, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;->Linux:Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;

    sput-object v2, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->OS:Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;

    goto :goto_67

    .line 40
    :cond_5b
    const-string v2, "Mac"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 41
    sget-object v2, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;->MacOS:Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;

    sput-object v2, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->OS:Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;

    .line 46
    :goto_67
    const-string v2, "amd64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7a

    const-string v2, "x86_64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    goto :goto_7a

    :cond_78
    const/4 v2, 0x0

    goto :goto_7b

    :cond_7a
    :goto_7a
    const/4 v2, 0x1

    :goto_7b
    sput-boolean v2, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->IS_64_BIT:Z

    .line 47
    .end local v0  # "osName":Ljava/lang/String;
    .end local v1  # "osArch":Ljava/lang/String;
    return-void

    .line 43
    .restart local v0  # "osName":Ljava/lang/String;
    .restart local v1  # "osArch":Ljava/lang/String;
    :cond_7e
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown host architecture: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canExecute(Ljava/io/File;)Z
    .registers 3
    .param p0, "file"  # Ljava/io/File;

    .line 251
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->canExecute()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 252
    return v1

    .line 255
    :cond_8
    invoke-virtual {p0, v1}, Ljava/io/File;->setExecutable(Z)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 256
    invoke-virtual {p0}, Ljava/io/File;->canExecute()Z

    move-result v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_14

    return v0

    .line 260
    :cond_13
    goto :goto_15

    .line 258
    :catch_14
    move-exception v0

    .line 262
    :goto_15
    const/4 v0, 0x0

    return v0
.end method

.method private static canWrite(Ljava/io/File;)Z
    .registers 5
    .param p0, "file"  # Ljava/io/File;

    .line 219
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 221
    .local v0, "folder":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 222
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {p0}, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->canExecute(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 223
    :cond_17
    return v2

    .line 226
    :cond_18
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_25

    .line 227
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_25

    .line 228
    return v2

    .line 231
    :cond_25
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 232
    return v2

    .line 236
    :cond_2c
    new-instance v1, Ljava/io/File;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 239
    .local v1, "testFile":Ljava/io/File;
    :try_start_39
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 240
    invoke-static {v1}, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->canExecute(Ljava/io/File;)Z

    move-result v2
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_45} :catch_4e
    .catchall {:try_start_39 .. :try_end_45} :catchall_49

    .line 244
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 240
    return v2

    .line 244
    :catchall_49
    move-exception v2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 245
    throw v2

    .line 241
    :catch_4e
    move-exception v3

    .line 242
    .local v3, "e":Ljava/io/IOException;
    nop

    .line 244
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 242
    return v2
.end method

.method private static discoverExtractLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p0, "folderName"  # Ljava/lang/String;
    .param p1, "fileName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    sget-object v0, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->SHARED_LIBRARY_EXTRACT_PATH:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 172
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->SHARED_LIBRARY_EXTRACT_PATH:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .local v0, "path":Ljava/io/File;
    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->canWrite(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 174
    return-object v0

    .line 180
    .end local v0  # "path":Ljava/io/File;
    :cond_12
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "java.io.tmpdir"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .restart local v0  # "path":Ljava/io/File;
    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->canWrite(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 182
    return-object v0

    .line 188
    :cond_3b
    const/4 v1, 0x0

    :try_start_3c
    invoke-static {p0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 189
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 191
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v2

    .line 192
    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->canWrite(Ljava/io/File;)Z

    move-result v2
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_50} :catch_54

    if-eqz v2, :cond_53

    .line 193
    return-object v0

    .line 198
    .end local v1  # "file":Ljava/io/File;
    :cond_53
    goto :goto_55

    .line 196
    :catch_54
    move-exception v1

    .line 202
    :goto_55
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user.home"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 203
    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->canWrite(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 204
    return-object v0

    .line 209
    :cond_7f
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".tmp/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 210
    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->canWrite(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 211
    return-object v0

    .line 214
    :cond_9f
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No suitable extraction path found"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static extractLibrary(Ljava/io/File;Ljava/io/File;)V
    .registers 3
    .param p0, "librarySystemPath"  # Ljava/io/File;
    .param p1, "librarySourcePath"  # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {p0, v0}, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->extractLibrary(Ljava/io/File;Ljava/io/InputStream;)V

    .line 137
    return-void
.end method

.method private static extractLibrary(Ljava/io/File;Ljava/io/InputStream;)V
    .registers 6
    .param p0, "librarySystemPath"  # Ljava/io/File;
    .param p1, "input"  # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    if-eqz p1, :cond_3e

    .line 141
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_2c
    .catchall {:try_start_2 .. :try_end_7} :catchall_2a

    .line 142
    .local v0, "output":Ljava/io/FileOutputStream;
    const/16 v1, 0x1000

    :try_start_9
    new-array v1, v1, [B

    .line 144
    .local v1, "buffer":[B
    :goto_b
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 145
    .local v2, "length":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_19

    .line 148
    .end local v2  # "length":I
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_1e

    .line 149
    .end local v1  # "buffer":[B
    :try_start_15
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_2c
    .catchall {:try_start_15 .. :try_end_18} :catchall_2a

    goto :goto_33

    .line 146
    .restart local v1  # "buffer":[B
    .restart local v2  # "length":I
    :cond_19
    const/4 v3, 0x0

    :try_start_1a
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    .line 147
    .end local v2  # "length":I
    goto :goto_b

    .line 141
    .end local v1  # "buffer":[B
    :catchall_1e
    move-exception v1

    .end local v0  # "output":Ljava/io/FileOutputStream;
    .end local p0  # "librarySystemPath":Ljava/io/File;
    .end local p1  # "input":Ljava/io/InputStream;
    :try_start_1f
    throw v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_20

    .line 149
    .restart local v0  # "output":Ljava/io/FileOutputStream;
    .restart local p0  # "librarySystemPath":Ljava/io/File;
    .restart local p1  # "input":Ljava/io/InputStream;
    :catchall_20
    move-exception v2

    :try_start_21
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_29

    :catchall_25
    move-exception v3

    :try_start_26
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0  # "librarySystemPath":Ljava/io/File;
    .end local p1  # "input":Ljava/io/InputStream;
    :goto_29
    throw v2
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2a} :catch_2c
    .catchall {:try_start_26 .. :try_end_2a} :catchall_2a

    .line 158
    .end local v0  # "output":Ljava/io/FileOutputStream;
    .restart local p0  # "librarySystemPath":Ljava/io/File;
    .restart local p1  # "input":Ljava/io/InputStream;
    :catchall_2a
    move-exception v0

    goto :goto_3a

    .line 149
    :catch_2c
    move-exception v0

    .line 154
    .local v0, "e":Ljava/io/IOException;
    :try_start_2d
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_2a

    if-eqz v1, :cond_38

    .line 158
    .end local v0  # "e":Ljava/io/IOException;
    :goto_33
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 159
    nop

    .line 163
    return-void

    .line 155
    .restart local v0  # "e":Ljava/io/IOException;
    :cond_38
    nop

    .end local p0  # "librarySystemPath":Ljava/io/File;
    .end local p1  # "input":Ljava/io/InputStream;
    :try_start_39
    throw v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_2a

    .line 158
    .end local v0  # "e":Ljava/io/IOException;
    .restart local p0  # "librarySystemPath":Ljava/io/File;
    .restart local p1  # "input":Ljava/io/InputStream;
    :goto_3a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 159
    throw v0

    .line 161
    :cond_3e
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read input stream for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static extractLibrary(Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .param p0, "librarySystemPath"  # Ljava/io/File;
    .param p1, "librarySystemName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    const-class v1, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 131
    invoke-static {p0, v0}, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->extractLibrary(Ljava/io/File;Ljava/io/InputStream;)V

    .line 133
    return-void
.end method

.method private static getPlatformLibName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "libName"  # Ljava/lang/String;

    .line 50
    sget-object v0, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$1;->$SwitchMap$com$codedisaster$steamworks$SteamSharedLibraryLoader$PLATFORM:[I

    sget-object v1, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->OS:Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;

    invoke-virtual {v1}, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "lib"

    packed-switch v0, :pswitch_data_68

    .line 59
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown host architecture"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :pswitch_17  #0x3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dylib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 54
    :pswitch_2f  #0x2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52
    :pswitch_47  #0x1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->IS_64_BIT:Z

    if-eqz v1, :cond_57

    const-string v1, "64"

    goto :goto_59

    :cond_57
    const-string v1, ""

    :goto_59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dll"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_47  #00000001
        :pswitch_2f  #00000002
        :pswitch_17  #00000003
    .end packed-switch
.end method

.method static getSdkLibraryPath()Ljava/lang/String;
    .registers 4

    .line 83
    sget-object v0, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$1;->$SwitchMap$com$codedisaster$steamworks$SteamSharedLibraryLoader$PLATFORM:[I

    sget-object v1, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->OS:Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;

    invoke-virtual {v1}, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_40

    .line 94
    return-object v1

    .line 91
    :pswitch_f  #0x3
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->SDK_LIBRARY_PATH:Ljava/lang/String;

    const-string v3, "osx"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .local v0, "path":Ljava/io/File;
    goto :goto_34

    .line 88
    .end local v0  # "path":Ljava/io/File;
    :pswitch_19  #0x2
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->SDK_LIBRARY_PATH:Ljava/lang/String;

    const-string v3, "linux64"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .restart local v0  # "path":Ljava/io/File;
    goto :goto_34

    .line 85
    .end local v0  # "path":Ljava/io/File;
    :pswitch_23  #0x1
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->SDK_LIBRARY_PATH:Ljava/lang/String;

    sget-boolean v3, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->IS_64_BIT:Z

    if-eqz v3, :cond_2e

    const-string v3, "win64"

    goto :goto_30

    :cond_2e
    const-string v3, "win32"

    :goto_30
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .restart local v0  # "path":Ljava/io/File;
    nop

    .line 97
    :goto_34
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    :cond_3e
    return-object v1

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_23  #00000001
        :pswitch_19  #00000002
        :pswitch_f  #00000003
    .end packed-switch
.end method

.method static getSdkRedistributableBinPath()Ljava/lang/String;
    .registers 4

    .line 64
    sget-object v0, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$1;->$SwitchMap$com$codedisaster$steamworks$SteamSharedLibraryLoader$PLATFORM:[I

    sget-object v1, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->OS:Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;

    invoke-virtual {v1}, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_40

    .line 75
    return-object v1

    .line 72
    :pswitch_f  #0x3
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->SDK_REDISTRIBUTABLE_BIN_PATH:Ljava/lang/String;

    const-string v3, "osx"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .local v0, "path":Ljava/io/File;
    goto :goto_34

    .line 69
    .end local v0  # "path":Ljava/io/File;
    :pswitch_19  #0x2
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->SDK_REDISTRIBUTABLE_BIN_PATH:Ljava/lang/String;

    const-string v3, "linux64"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .restart local v0  # "path":Ljava/io/File;
    goto :goto_34

    .line 66
    .end local v0  # "path":Ljava/io/File;
    :pswitch_23  #0x1
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->SDK_REDISTRIBUTABLE_BIN_PATH:Ljava/lang/String;

    sget-boolean v3, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->IS_64_BIT:Z

    if-eqz v3, :cond_2e

    const-string v3, "win64"

    goto :goto_30

    :cond_2e
    const-string v3, ""

    :goto_30
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .restart local v0  # "path":Ljava/io/File;
    nop

    .line 78
    :goto_34
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    :cond_3e
    return-object v1

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_23  #00000001
        :pswitch_19  #00000002
        :pswitch_f  #00000003
    .end packed-switch
.end method

.method static loadLibrary(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "libraryName"  # Ljava/lang/String;
    .param p1, "libraryPath"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    .line 102
    :try_start_0
    invoke-static {p0}, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->getPlatformLibName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "librarySystemName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->SHARED_LIBRARY_EXTRACT_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 105
    invoke-static {}, Lcom/codedisaster/steamworks/Version;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-static {v1, v0}, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->discoverExtractLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 107
    .local v1, "librarySystemPath":Ljava/io/File;
    if-nez p1, :cond_2b

    .line 109
    invoke-static {v1, v0}, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->extractLibrary(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_3b

    .line 112
    :cond_2b
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .local v2, "librarySourcePath":Ljava/io/File;
    sget-object v3, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->OS:Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;

    sget-object v4, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;->Windows:Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;

    if-eq v3, v4, :cond_3a

    .line 116
    invoke-static {v1, v2}, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->extractLibrary(Ljava/io/File;Ljava/io/File;)V

    goto :goto_3b

    .line 119
    :cond_3a
    move-object v1, v2

    .line 123
    .end local v2  # "librarySourcePath":Ljava/io/File;
    :goto_3b
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "absolutePath":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_42} :catch_44

    .line 127
    .end local v0  # "librarySystemName":Ljava/lang/String;
    .end local v1  # "librarySystemPath":Ljava/io/File;
    .end local v2  # "absolutePath":Ljava/lang/String;
    nop

    .line 128
    return-void

    .line 125
    :catch_44
    move-exception v0

    .line 126
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/codedisaster/steamworks/SteamException;

    invoke-direct {v1, v0}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
