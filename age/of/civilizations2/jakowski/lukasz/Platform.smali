.class public Lage/of/civilizations2/jakowski/lukasz/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field private static final INIT_STEAM:Z = true

.field private static initialized:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Platform;->initialized:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureInit()V
    .registers 3

    .line 331
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Platform;->initialized:Z

    if-nez v0, :cond_7

    .line 332
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Platform;->init()V

    .line 336
    :cond_7
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUI:Lcom/codedisaster/steamworks/SteamUserStats;

    const-string v1, "app_active"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUserStats;->getStatI(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_13

    .line 339
    return-void

    .line 337
    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid platform state"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getContext()Ljava/lang/Object;
    .registers 1

    .line 322
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sU:Lcom/codedisaster/steamworks/SteamUGC;

    return-object v0
.end method

.method public static getValue(Ljava/lang/String;)I
    .registers 3
    .param p0, "key"  # Ljava/lang/String;

    .line 317
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Platform;->ensureInit()V

    .line 318
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUI:Lcom/codedisaster/steamworks/SteamUserStats;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/codedisaster/steamworks/SteamUserStats;->getStatI(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static init()V
    .registers 2

    .line 34
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Platform;->initialized:Z

    if-eqz v0, :cond_5

    return-void

    .line 36
    :cond_5
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getIsDesktop()Z

    move-result v0

    if-nez v0, :cond_c

    .line 37
    return-void

    .line 44
    :cond_c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sU:Lcom/codedisaster/steamworks/SteamUGC;

    if-nez v0, :cond_71

    .line 46
    :try_start_10
    invoke-static {}, Lcom/codedisaster/steamworks/SteamAPI;->loadLibraries()V

    .line 48
    invoke-static {}, Lcom/codedisaster/steamworks/SteamAPI;->init()Z

    move-result v0

    if-nez v0, :cond_22

    const v0, 0x3399b0

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamAPI;->restartAppIfNecessary(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 49
    :cond_22
    const/4 v0, 0x1

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUInited:Z
    :try_end_25
    .catch Lcom/codedisaster/steamworks/SteamException; {:try_start_10 .. :try_end_25} :catch_26

    .line 53
    :cond_25
    goto :goto_2a

    .line 51
    :catch_26
    move-exception v0

    .line 52
    .local v0, "ex":Lcom/codedisaster/steamworks/SteamException;
    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamException;->printStackTrace()V

    .line 55
    .end local v0  # "ex":Lcom/codedisaster/steamworks/SteamException;
    :goto_2a
    new-instance v0, Lcom/codedisaster/steamworks/SteamRemoteStorage;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Platform$1;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/Platform$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamRemoteStorage;-><init>(Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUR:Lcom/codedisaster/steamworks/SteamRemoteStorage;

    .line 104
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Platform$2;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Platform$2;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUC:Lcom/codedisaster/steamworks/SteamUGCCallback;

    .line 209
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/SteamGame;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/SteamGame;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->uSG:Lage/of/civilizations2/jakowski/lukasz/SteamGame;

    .line 211
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUC:Lcom/codedisaster/steamworks/SteamUGCCallback;

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamUGC;-><init>(Lcom/codedisaster/steamworks/SteamUGCCallback;)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sU:Lcom/codedisaster/steamworks/SteamUGC;

    .line 213
    new-instance v0, Lcom/codedisaster/steamworks/SteamUtils;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Platform$3;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/Platform$3;-><init>()V

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamUtils;-><init>(Lcom/codedisaster/steamworks/SteamUtilsCallback;)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUT:Lcom/codedisaster/steamworks/SteamUtils;

    .line 221
    new-instance v0, Lcom/codedisaster/steamworks/SteamUserStats;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Platform$4;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/Platform$4;-><init>()V

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamUserStats;-><init>(Lcom/codedisaster/steamworks/SteamUserStatsCallback;)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUI:Lcom/codedisaster/steamworks/SteamUserStats;

    .line 268
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Platform$5;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/Platform$5;-><init>()V

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamFriends;-><init>(Lcom/codedisaster/steamworks/SteamFriendsCallback;)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->uSF:Lcom/codedisaster/steamworks/SteamFriends;

    .line 313
    :cond_71
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->loadSubscribedItems()V

    .line 314
    return-void
.end method

.method public static store()V
    .registers 1

    .line 326
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Platform;->ensureInit()V

    .line 327
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUI:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUserStats;->storeStats()Z

    .line 328
    return-void
.end method
