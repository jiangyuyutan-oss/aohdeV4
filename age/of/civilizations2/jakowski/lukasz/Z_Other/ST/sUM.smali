.class public Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;
.super Ljava/lang/Object;
.source "sUM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM$ModData;
    }
.end annotation


# static fields
.field private static final APP_ID:I = 0x3399b0

.field public static DONE:Z

.field public static sU:Lcom/codedisaster/steamworks/SteamUGC;

.field public static sUC:Lcom/codedisaster/steamworks/SteamUGCCallback;

.field public static sUCP:Lcom/codedisaster/steamworks/SteamPublishedFileID;

.field public static sUF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sUFA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sUFAM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sUFS:I

.field public static sUI:Lcom/codedisaster/steamworks/SteamUserStats;

.field public static sUIF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static sUII:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static sUIIS:I

.field public static sUInited:Z

.field public static sUQ:Z

.field public static sUR:Lcom/codedisaster/steamworks/SteamRemoteStorage;

.field public static sUT:Lcom/codedisaster/steamworks/SteamUtils;

.field public static sUTO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static uSF:Lcom/codedisaster/steamworks/SteamFriends;

.field public static uSG:Lage/of/civilizations2/jakowski/lukasz/SteamGame;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUQ:Z

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUCP:Lcom/codedisaster/steamworks/SteamPublishedFileID;

    .line 41
    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUR:Lcom/codedisaster/steamworks/SteamRemoteStorage;

    .line 44
    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUT:Lcom/codedisaster/steamworks/SteamUtils;

    .line 47
    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUI:Lcom/codedisaster/steamworks/SteamUserStats;

    .line 50
    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->uSF:Lcom/codedisaster/steamworks/SteamFriends;

    .line 53
    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sU:Lcom/codedisaster/steamworks/SteamUGC;

    .line 55
    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUC:Lcom/codedisaster/steamworks/SteamUGCCallback;

    .line 58
    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->uSG:Lage/of/civilizations2/jakowski/lukasz/SteamGame;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    .line 65
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUFS:I

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUII:Ljava/util/List;

    .line 70
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUIIS:I

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUFA:Ljava/util/List;

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUFAM:Ljava/util/List;

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUIF:Ljava/util/List;

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUTO:Ljava/util/List;

    .line 82
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUInited:Z

    .line 114
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->DONE:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addModsTurnedOff(Ljava/lang/String;)V
    .registers 2
    .param p0, "folder"  # Ljava/lang/String;

    .line 289
    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1c

    .line 290
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUTO:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 291
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUTO:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 294
    :cond_16
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->removeModsTurnedOff(Ljava/lang/String;)V

    .line 297
    :goto_19
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->saveModsTurnedOff()V

    .line 299
    :cond_1c
    return-void
.end method

.method public static createItem(Ljava/lang/String;)V
    .registers 14
    .param p0, "modFolder"  # Ljava/lang/String;

    .line 118
    const-string v0, "/"

    const/4 v1, 0x0

    :try_start_3
    sput-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->DONE:Z

    .line 122
    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->IS_MAC:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_216

    const-wide/16 v3, 0xfa

    const v5, 0x3399b0

    const-string v6, "/id.txt"

    const-string v7, "mods/"

    if-eqz v2, :cond_5f

    :try_start_12
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 123
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 124
    .local v2, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v6

    .line 126
    .local v6, "fileContent":Ljava/lang/String;
    new-instance v8, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Lcom/codedisaster/steamworks/SteamPublishedFileID;-><init>(J)V

    sput-object v8, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUCP:Lcom/codedisaster/steamworks/SteamPublishedFileID;

    .line 127
    .end local v2  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v6  # "fileContent":Ljava/lang/String;
    goto/16 :goto_105

    .line 128
    :cond_5f
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 129
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 130
    .restart local v2  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v6

    .line 132
    .restart local v6  # "fileContent":Ljava/lang/String;
    new-instance v8, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Lcom/codedisaster/steamworks/SteamPublishedFileID;-><init>(J)V

    sput-object v8, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUCP:Lcom/codedisaster/steamworks/SteamPublishedFileID;

    .line 133
    .end local v2  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v6  # "fileContent":Ljava/lang/String;
    goto :goto_105

    .line 135
    :cond_ab
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sU:Lcom/codedisaster/steamworks/SteamUGC;

    sget-object v8, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->Community:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    invoke-virtual {v2, v5, v8}, Lcom/codedisaster/steamworks/SteamUGC;->createItem(ILcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;)Lcom/codedisaster/steamworks/SteamAPICall;

    move-result-object v2

    .line 140
    .local v2, "steamAPICall":Lcom/codedisaster/steamworks/SteamAPICall;
    :goto_b3
    sget-boolean v8, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->DONE:Z

    if-nez v8, :cond_c5

    .line 141
    invoke-static {}, Lcom/codedisaster/steamworks/SteamAPI;->runCallbacks()V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_ba} :catch_216

    .line 143
    :try_start_ba
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_bd
    .catch Ljava/lang/InterruptedException; {:try_start_ba .. :try_end_bd} :catch_be
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_bd} :catch_216

    .line 146
    goto :goto_b3

    .line 144
    :catch_be
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_bf
    new-instance v1, Lcom/codedisaster/steamworks/SteamException;

    invoke-direct {v1, v0}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/Throwable;)V

    .end local p0  # "modFolder":Ljava/lang/String;
    throw v1
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c5} :catch_216

    .line 150
    .end local v0  # "e":Ljava/lang/InterruptedException;
    .restart local p0  # "modFolder":Ljava/lang/String;
    :cond_c5
    :try_start_c5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    .line 151
    .local v6, "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUCP:Lcom/codedisaster/steamworks/SteamPublishedFileID;

    invoke-virtual {v9}, Lcom/codedisaster/steamworks/SteamPublishedFileID;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v1}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_100} :catch_101

    .line 154
    .end local v6  # "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_105

    .line 152
    :catch_101
    move-exception v6

    .line 153
    .local v6, "ex":Ljava/lang/Exception;
    :try_start_102
    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 158
    .end local v2  # "steamAPICall":Lcom/codedisaster/steamworks/SteamAPICall;
    .end local v6  # "ex":Ljava/lang/Exception;
    :goto_105
    new-instance v2, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 161
    .local v2, "json":Lcom/badlogic/gdx/utils/Json;
    sget-boolean v6, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->IS_MAC:Z
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_10c} :catch_216

    const-string v8, "/mod.txt"

    if-eqz v6, :cond_12c

    .line 162
    :try_start_110
    sget-object v6, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    .local v6, "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_147

    .line 164
    .end local v6  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_12c
    sget-object v6, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    .line 167
    .restart local v6  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_147
    const-class v8, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM$ModData;

    invoke-virtual {v2, v8, v6}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM$ModData;

    .line 169
    .local v8, "modData":Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM$ModData;
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sU:Lcom/codedisaster/steamworks/SteamUGC;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUCP:Lcom/codedisaster/steamworks/SteamPublishedFileID;

    invoke-virtual {v9, v5, v10}, Lcom/codedisaster/steamworks/SteamUGC;->startItemUpdate(ILcom/codedisaster/steamworks/SteamPublishedFileID;)Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;

    move-result-object v5

    .line 171
    .local v5, "updateHandle":Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;
    new-instance v9, Lcom/badlogic/gdx/files/FileHandle;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/badlogic/gdx/files/FileHandle;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 174
    .local v9, "nPath":Ljava/lang/String;
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sU:Lcom/codedisaster/steamworks/SteamUGC;

    invoke-virtual {v10, v5, v9}, Lcom/codedisaster/steamworks/SteamUGC;->setItemContent(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Ljava/lang/String;)Z

    .line 178
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sU:Lcom/codedisaster/steamworks/SteamUGC;

    iget-object v11, v8, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM$ModData;->Name:Ljava/lang/String;

    invoke-virtual {v10, v5, v11}, Lcom/codedisaster/steamworks/SteamUGC;->setItemTitle(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Ljava/lang/String;)Z

    .line 179
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sU:Lcom/codedisaster/steamworks/SteamUGC;

    iget-object v11, v8, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM$ModData;->Tags:[Ljava/lang/String;

    invoke-virtual {v10, v5, v11}, Lcom/codedisaster/steamworks/SteamUGC;->setItemTags(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;[Ljava/lang/String;)Z

    .line 180
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sU:Lcom/codedisaster/steamworks/SteamUGC;

    iget-object v11, v8, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM$ModData;->Description:Ljava/lang/String;

    invoke-virtual {v10, v5, v11}, Lcom/codedisaster/steamworks/SteamUGC;->setItemDescription(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Ljava/lang/String;)Z

    .line 184
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sU:Lcom/codedisaster/steamworks/SteamUGC;

    new-instance v11, Lcom/badlogic/gdx/files/FileHandle;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "/logo.png"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v11, v7}, Lcom/badlogic/gdx/files/FileHandle;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v5, v7}, Lcom/codedisaster/steamworks/SteamUGC;->setItemPreview(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Ljava/lang/String;)Z

    .line 185
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sU:Lcom/codedisaster/steamworks/SteamUGC;

    sget-object v10, Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;->Public:Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;

    invoke-virtual {v7, v5, v10}, Lcom/codedisaster/steamworks/SteamUGC;->setItemVisibility(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;)Z

    .line 187
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sU:Lcom/codedisaster/steamworks/SteamUGC;

    iget-object v10, v8, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM$ModData;->ChangeNote:Ljava/lang/String;

    invoke-virtual {v7, v5, v10}, Lcom/codedisaster/steamworks/SteamUGC;->submitItemUpdate(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamAPICall;

    .line 189
    new-instance v7, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateInfo;

    invoke-direct {v7}, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateInfo;-><init>()V

    .line 190
    .local v7, "updateInfo":Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateInfo;
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sU:Lcom/codedisaster/steamworks/SteamUGC;

    invoke-virtual {v10, v5, v7}, Lcom/codedisaster/steamworks/SteamUGC;->getItemUpdateProgress(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateInfo;)Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

    .line 192
    sput-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->DONE:Z

    .line 194
    :goto_1d6
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->DONE:Z

    if-nez v1, :cond_215

    .line 195
    invoke-static {}, Lcom/codedisaster/steamworks/SteamAPI;->runCallbacks()V

    .line 196
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sU:Lcom/codedisaster/steamworks/SteamUGC;

    invoke-virtual {v1, v5, v7}, Lcom/codedisaster/steamworks/SteamUGC;->getItemUpdateProgress(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateInfo;)Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

    .line 199
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Progress: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateInfo;->getBytesProcessed()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateInfo;->getBytesTotal()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;)V
    :try_end_20a
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_20a} :catch_216

    .line 202
    :try_start_20a
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20d
    .catch Ljava/lang/InterruptedException; {:try_start_20a .. :try_end_20d} :catch_20e
    .catch Ljava/lang/Exception; {:try_start_20a .. :try_end_20d} :catch_216

    .line 205
    goto :goto_1d6

    .line 203
    :catch_20e
    move-exception v0

    .line 204
    .restart local v0  # "e":Ljava/lang/InterruptedException;
    :try_start_20f
    new-instance v1, Lcom/codedisaster/steamworks/SteamException;

    invoke-direct {v1, v0}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/Throwable;)V

    .end local p0  # "modFolder":Ljava/lang/String;
    throw v1
    :try_end_215
    .catch Ljava/lang/Exception; {:try_start_20f .. :try_end_215} :catch_216

    .line 219
    .end local v0  # "e":Ljava/lang/InterruptedException;
    .end local v2  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v5  # "updateHandle":Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;
    .end local v6  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v7  # "updateInfo":Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateInfo;
    .end local v8  # "modData":Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM$ModData;
    .end local v9  # "nPath":Ljava/lang/String;
    .restart local p0  # "modFolder":Ljava/lang/String;
    :cond_215
    goto :goto_238

    .line 207
    :catch_216
    move-exception v0

    .line 208
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 209
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 210
    .local v2, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 212
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "sUX":Ljava/lang/String;
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;)V

    .line 215
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;)V

    .line 217
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 218
    const/4 v4, 0x1

    sput-boolean v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->DONE:Z

    .line 220
    .end local v0  # "ex":Ljava/lang/Exception;
    .end local v1  # "sw":Ljava/io/StringWriter;
    .end local v2  # "pw":Ljava/io/PrintWriter;
    .end local v3  # "sUX":Ljava/lang/String;
    :goto_238
    return-void
.end method

.method public static final init()V
    .registers 0

    .line 88
    return-void
.end method

.method public static isTurnedOn(Ljava/lang/String;)Z
    .registers 4
    .param p0, "folder"  # Ljava/lang/String;

    .line 315
    const/4 v0, 0x1

    if-eqz p0, :cond_25

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_25

    .line 316
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUTO:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_10
    if-ltz v1, :cond_25

    .line 317
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUTO:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 318
    const/4 v0, 0x0

    return v0

    .line 316
    :cond_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 323
    .end local v1  # "i":I
    :cond_25
    return v0
.end method

.method public static loadSubscribedItems()V
    .registers 8

    .line 235
    :try_start_0
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUQ:Z

    if-eqz v0, :cond_3a

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getIsDesktop()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 238
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sU:Lcom/codedisaster/steamworks/SteamUGC;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUGC;->getNumSubscribedItems()I

    move-result v0

    new-array v0, v0, [Lcom/codedisaster/steamworks/SteamPublishedFileID;

    .line 239
    .local v0, "steamPublishedFileIDS":[Lcom/codedisaster/steamworks/SteamPublishedFileID;
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sU:Lcom/codedisaster/steamworks/SteamUGC;

    invoke-virtual {v1, v0}, Lcom/codedisaster/steamworks/SteamUGC;->getSubscribedItems([Lcom/codedisaster/steamworks/SteamPublishedFileID;)I

    move-result v1

    .line 241
    .local v1, "numSubscribed":I
    nop

    .line 244
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    array-length v3, v0

    if-ge v2, v3, :cond_32

    .line 248
    new-instance v3, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-direct {v3}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;-><init>()V

    .line 249
    .local v3, "itemInstallInfo":Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sU:Lcom/codedisaster/steamworks/SteamUGC;

    aget-object v5, v0, v2

    invoke-virtual {v4, v5, v3}, Lcom/codedisaster/steamworks/SteamUGC;->getItemInstallInfo(Lcom/codedisaster/steamworks/SteamPublishedFileID;Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;)Z

    .line 254
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUII:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    nop

    .end local v3  # "itemInstallInfo":Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 259
    .end local v2  # "i":I
    :cond_32
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUII:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sput v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUIIS:I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    .line 264
    .end local v0  # "steamPublishedFileIDS":[Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .end local v1  # "numSubscribed":I
    :cond_3a
    goto :goto_3c

    .line 262
    :catch_3b
    move-exception v0

    .line 268
    :goto_3c
    :try_start_3c
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->IS_MAC:Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3e} :catch_8a

    const-string v1, "mods/"

    if-eqz v0, :cond_4d

    .line 269
    :try_start_42
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .local v0, "files":[Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_57

    .line 271
    .end local v0  # "files":[Lcom/badlogic/gdx/files/FileHandle;
    :cond_4d
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 274
    .restart local v0  # "files":[Lcom/badlogic/gdx/files/FileHandle;
    :goto_57
    array-length v2, v0

    const/4 v3, 0x0

    :goto_59
    if-ge v3, v2, :cond_81

    aget-object v4, v0, v3

    .line 275
    .local v4, "file":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    nop

    .end local v4  # "file":Lcom/badlogic/gdx/files/FileHandle;
    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    .line 278
    :cond_81
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUFS:I
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_89} :catch_8a

    .line 281
    .end local v0  # "files":[Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_8b

    .line 279
    :catch_8a
    move-exception v0

    .line 283
    :goto_8b
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->readModsTurnedOff()V

    .line 284
    return-void
.end method

.method public static readModsTurnedOff()V
    .registers 9

    .line 353
    const-string v0, "/mod.txt"

    const-string v1, "settings/ModsOff.txt"

    const/4 v2, 0x0

    .local v2, "j":I
    :goto_5
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1d

    .line 354
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUFA:Ljava/util/List;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 357
    .end local v2  # "j":I
    :cond_1d
    const/4 v2, 0x0

    .restart local v2  # "j":I
    :goto_1e
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUII:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_c7

    .line 358
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUIF:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUII:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    :try_start_34
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUII:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v6}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 362
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUII:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v6}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 364
    .local v3, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v5

    .line 366
    .local v5, "tempTags":Ljava/lang/String;
    const-string v6, "Name:\\s*\"(.*?)\""

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 367
    .local v6, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 369
    .local v7, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_9f

    .line 370
    invoke-virtual {v7, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 371
    .local v4, "name":Ljava/lang/String;
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUFAM:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    nop

    .end local v4  # "name":Ljava/lang/String;
    goto :goto_b0

    .line 373
    :cond_9f
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUFAM:Ljava/util/List;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUII:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v8}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_b0} :catch_b1

    .line 378
    .end local v3  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v5  # "tempTags":Ljava/lang/String;
    .end local v6  # "pattern":Ljava/util/regex/Pattern;
    .end local v7  # "matcher":Ljava/util/regex/Matcher;
    :cond_b0
    :goto_b0
    goto :goto_c3

    .line 376
    :catch_b1
    move-exception v3

    .line 377
    .local v3, "ex":Ljava/lang/Exception;
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUFAM:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUII:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v5}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    .end local v3  # "ex":Ljava/lang/Exception;
    :goto_c3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1e

    .line 382
    .end local v2  # "j":I
    :cond_c7
    :try_start_c7
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-nez v0, :cond_e3

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->IS_MAC:Z

    if-eqz v0, :cond_17f

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_17f

    .line 384
    :cond_e3
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->IS_MAC:Z

    if-eqz v0, :cond_ee

    .line 385
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_f4

    .line 387
    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_ee
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 390
    .restart local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_f4
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, "tempTags":Ljava/lang/String;
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUTO:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 394
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 396
    .local v2, "split":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_104
    array-length v5, v2

    if-ge v3, v5, :cond_111

    .line 397
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUTO:Ljava/util/List;

    aget-object v6, v2, v3

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    add-int/lit8 v3, v3, 0x1

    goto :goto_104

    .line 400
    .end local v3  # "i":I
    :cond_111
    const/4 v3, 0x0

    .restart local v3  # "i":I
    :goto_112
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUTO:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_16f

    .line 401
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    .local v5, "j":I
    :goto_121
    if-ltz v5, :cond_140

    .line 402
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUTO:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13d

    .line 403
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 404
    goto :goto_140

    .line 401
    :cond_13d
    add-int/lit8 v5, v5, -0x1

    goto :goto_121

    .line 408
    .end local v5  # "j":I
    :cond_140
    :goto_140
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUII:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    .restart local v5  # "j":I
    :goto_147
    if-ltz v5, :cond_16c

    .line 409
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUTO:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUII:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v7}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_169

    .line 410
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUII:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 411
    goto :goto_16c

    .line 408
    :cond_169
    add-int/lit8 v5, v5, -0x1

    goto :goto_147

    .line 400
    .end local v5  # "j":I
    :cond_16c
    :goto_16c
    add-int/lit8 v3, v3, 0x1

    goto :goto_112

    .line 416
    .end local v3  # "i":I
    :cond_16f
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sput v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUFS:I

    .line 417
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUII:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sput v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUIIS:I
    :try_end_17f
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_17f} :catch_180

    .line 421
    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1  # "tempTags":Ljava/lang/String;
    .end local v2  # "split":[Ljava/lang/String;
    :cond_17f
    goto :goto_184

    .line 419
    :catch_180
    move-exception v0

    .line 420
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 422
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_184
    return-void
.end method

.method public static removeModsTurnedOff(Ljava/lang/String;)V
    .registers 3
    .param p0, "folder"  # Ljava/lang/String;

    .line 302
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2a

    .line 303
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUTO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_e
    if-ltz v0, :cond_2a

    .line 304
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUTO:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 305
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUTO:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 307
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->saveModsTurnedOff()V

    .line 308
    return-void

    .line 303
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 312
    .end local v0  # "i":I
    :cond_2a
    return-void
.end method

.method public static saveModsTurnedOff()V
    .registers 4

    .line 327
    const-string v0, "settings/ModsOff.txt"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 329
    .local v1, "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUTO:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 330
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 331
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->delete()Z

    goto :goto_4f

    .line 335
    :cond_20
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_21
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUTO:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4f

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUTO:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_48

    const/4 v3, 0x1

    goto :goto_49

    :cond_48
    const/4 v3, 0x0

    :goto_49
    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 339
    .end local v0  # "i":I
    :cond_4f
    :goto_4f
    return-void
.end method

.method public static subscribedItems()V
    .registers 6

    .line 93
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sU:Lcom/codedisaster/steamworks/SteamUGC;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUGC;->getNumSubscribedItems()I

    move-result v0

    new-array v0, v0, [Lcom/codedisaster/steamworks/SteamPublishedFileID;

    .line 94
    .local v0, "steamPublishedFileIDS":[Lcom/codedisaster/steamworks/SteamPublishedFileID;
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sU:Lcom/codedisaster/steamworks/SteamUGC;

    invoke-virtual {v1, v0}, Lcom/codedisaster/steamworks/SteamUGC;->getSubscribedItems([Lcom/codedisaster/steamworks/SteamPublishedFileID;)I

    move-result v1

    .line 96
    .local v1, "numSubscribed":I
    nop

    .line 99
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    array-length v3, v0

    if-ge v2, v3, :cond_27

    .line 103
    new-instance v3, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-direct {v3}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;-><init>()V

    .line 104
    .local v3, "itemInstallInfo":Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sU:Lcom/codedisaster/steamworks/SteamUGC;

    aget-object v5, v0, v2

    invoke-virtual {v4, v5, v3}, Lcom/codedisaster/steamworks/SteamUGC;->getItemInstallInfo(Lcom/codedisaster/steamworks/SteamPublishedFileID;Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;)Z

    .line 106
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUII:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    .end local v3  # "itemInstallInfo":Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 112
    .end local v2  # "i":I
    :cond_27
    return-void
.end method

.method public static unlockAchievement(Ljava/lang/String;)V
    .registers 2
    .param p0, "key"  # Ljava/lang/String;

    .line 345
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUI:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0, p0}, Lcom/codedisaster/steamworks/SteamUserStats;->setAchievement(Ljava/lang/String;)Z

    .line 346
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUI:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUserStats;->storeStats()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 349
    goto :goto_c

    .line 347
    :catch_b
    move-exception v0

    .line 350
    :goto_c
    return-void
.end method
