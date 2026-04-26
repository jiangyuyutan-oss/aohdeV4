.class public Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;
.super Ljava/lang/Object;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Files/FileManager$LoadInterface;
    }
.end annotation


# static fields
.field public static IS_MAC:Z

.field public static loadInterface:Lage/of/civilizations2/jakowski/lukasz/Files/FileManager$LoadInterface;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->IS_MAC:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .registers 2
    .param p0, "sFile"  # Ljava/lang/String;

    .line 25
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadInterface:Lage/of/civilizations2/jakowski/lukasz/Files/FileManager$LoadInterface;

    invoke-interface {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager$LoadInterface;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    return-object v0
.end method

.method public static initLoadInterface()V
    .registers 1

    .line 31
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getIsDesktop()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 32
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->IS_MAC:Z

    if-eqz v0, :cond_12

    .line 34
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager$1;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager$1;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadInterface:Lage/of/civilizations2/jakowski/lukasz/Files/FileManager$LoadInterface;

    goto :goto_21

    .line 67
    :cond_12
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager$2;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager$2;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadInterface:Lage/of/civilizations2/jakowski/lukasz/Files/FileManager$LoadInterface;

    goto :goto_21

    .line 93
    :cond_1a
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager$3;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager$3;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadInterface:Lage/of/civilizations2/jakowski/lukasz/Files/FileManager$LoadInterface;

    .line 110
    :goto_21
    return-void
.end method

.method public static loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .registers 2
    .param p0, "sFile"  # Ljava/lang/String;

    .line 115
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadInterface:Lage/of/civilizations2/jakowski/lukasz/Files/FileManager$LoadInterface;

    invoke-interface {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager$LoadInterface;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteFile(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 139
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUR:Lcom/codedisaster/steamworks/SteamRemoteStorage;

    invoke-virtual {v0, p1}, Lcom/codedisaster/steamworks/SteamRemoteStorage;->fileDelete(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public fileExists(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 143
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUR:Lcom/codedisaster/steamworks/SteamRemoteStorage;

    invoke-virtual {v0, p1}, Lcom/codedisaster/steamworks/SteamRemoteStorage;->fileExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public forgetFile(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 159
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUR:Lcom/codedisaster/steamworks/SteamRemoteStorage;

    invoke-virtual {v0, p1}, Lcom/codedisaster/steamworks/SteamRemoteStorage;->fileForget(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getFileCount()I
    .registers 2

    .line 151
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUR:Lcom/codedisaster/steamworks/SteamRemoteStorage;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamRemoteStorage;->getFileCount()I

    move-result v0

    return v0
.end method

.method public getFileName(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"  # I

    .line 155
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUR:Lcom/codedisaster/steamworks/SteamRemoteStorage;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/codedisaster/steamworks/SteamRemoteStorage;->getFileNameAndSize(I[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileSize(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 147
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUR:Lcom/codedisaster/steamworks/SteamRemoteStorage;

    invoke-virtual {v0, p1}, Lcom/codedisaster/steamworks/SteamRemoteStorage;->getFileSize(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public loadFile(Ljava/lang/String;Ljava/nio/ByteBuffer;)I
    .registers 4
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "buffer"  # Ljava/nio/ByteBuffer;

    .line 130
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUR:Lcom/codedisaster/steamworks/SteamRemoteStorage;

    invoke-virtual {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamRemoteStorage;->fileRead(Ljava/lang/String;Ljava/nio/ByteBuffer;)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 131
    :catch_7
    move-exception v0

    .line 135
    const/4 v0, -0x1

    return v0
.end method

.method public persistFile(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 163
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUR:Lcom/codedisaster/steamworks/SteamRemoteStorage;

    invoke-virtual {v0, p1}, Lcom/codedisaster/steamworks/SteamRemoteStorage;->filePersisted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveFile(Ljava/lang/String;Ljava/nio/ByteBuffer;)Z
    .registers 4
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "data"  # Ljava/nio/ByteBuffer;

    .line 120
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUR:Lcom/codedisaster/steamworks/SteamRemoteStorage;

    invoke-virtual {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamRemoteStorage;->fileWrite(Ljava/lang/String;Ljava/nio/ByteBuffer;)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 121
    :catch_7
    move-exception v0

    .line 125
    const/4 v0, 0x0

    return v0
.end method
