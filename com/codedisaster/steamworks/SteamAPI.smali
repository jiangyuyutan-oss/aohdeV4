.class public Lcom/codedisaster/steamworks/SteamAPI;
.super Ljava/lang/Object;
.source "SteamAPI.java"


# static fields
.field private static isNativeAPILoaded:Z

.field private static isRunning:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    const/4 v0, 0x0

    sput-boolean v0, Lcom/codedisaster/steamworks/SteamAPI;->isRunning:Z

    .line 8
    sput-boolean v0, Lcom/codedisaster/steamworks/SteamAPI;->isNativeAPILoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    .line 47
    sget-boolean v0, Lcom/codedisaster/steamworks/SteamAPI;->isNativeAPILoaded:Z

    if-eqz v0, :cond_d

    .line 51
    invoke-static {}, Lcom/codedisaster/steamworks/SteamAPI;->nativeInit()Z

    move-result v0

    sput-boolean v0, Lcom/codedisaster/steamworks/SteamAPI;->isRunning:Z

    .line 53
    sget-boolean v0, Lcom/codedisaster/steamworks/SteamAPI;->isRunning:Z

    return v0

    .line 48
    :cond_d
    new-instance v0, Lcom/codedisaster/steamworks/SteamException;

    const-string v1, "Native libraries not loaded.\nEnsure to call SteamAPI.loadLibraries() first!"

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static isIsNativeAPILoaded()Z
    .registers 1

    .line 83
    sget-boolean v0, Lcom/codedisaster/steamworks/SteamAPI;->isNativeAPILoaded:Z

    return v0
.end method

.method public static isSteamRunning()Z
    .registers 1

    .line 70
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamAPI;->isSteamRunning(Z)Z

    move-result v0

    return v0
.end method

.method public static isSteamRunning(Z)Z
    .registers 2
    .param p0, "checkNative"  # Z

    .line 74
    sget-boolean v0, Lcom/codedisaster/steamworks/SteamAPI;->isRunning:Z

    if-eqz v0, :cond_e

    if-eqz p0, :cond_c

    invoke-static {}, Lcom/codedisaster/steamworks/SteamAPI;->isSteamRunningNative()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static native isSteamRunningNative()Z
.end method

.method public static loadLibraries()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    .line 11
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamAPI;->loadLibraries(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public static loadLibraries(Ljava/lang/String;)V
    .registers 3
    .param p0, "libraryPath"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    .line 16
    sget-boolean v0, Lcom/codedisaster/steamworks/SteamAPI;->isNativeAPILoaded:Z

    if-eqz v0, :cond_5

    .line 17
    return-void

    .line 20
    :cond_5
    const-string v0, "steam_api"

    if-nez p0, :cond_15

    sget-boolean v1, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->DEBUG:Z

    if-eqz v1, :cond_15

    .line 21
    invoke-static {}, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->getSdkRedistributableBinPath()Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, "sdkPath":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->loadLibrary(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .end local v1  # "sdkPath":Ljava/lang/String;
    goto :goto_18

    .line 24
    :cond_15
    invoke-static {v0, p0}, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->loadLibrary(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :goto_18
    const-string v0, "steamworks4j"

    invoke-static {v0, p0}, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->loadLibrary(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Lcom/codedisaster/steamworks/SteamAPI;->isNativeAPILoaded:Z

    .line 30
    return-void
.end method

.method private static native nativeInit()Z
.end method

.method private static native nativeRestartAppIfNecessary(I)Z
.end method

.method private static native nativeShutdown()V
.end method

.method public static printDebugInfo(Ljava/io/PrintStream;)V
    .registers 3
    .param p0, "stream"  # Ljava/io/PrintStream;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Steam API initialized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/codedisaster/steamworks/SteamAPI;->isRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Steam client active: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/codedisaster/steamworks/SteamAPI;->isSteamRunning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public static native releaseCurrentThreadMemory()V
.end method

.method public static restartAppIfNecessary(I)Z
    .registers 3
    .param p0, "appId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    .line 38
    sget-boolean v0, Lcom/codedisaster/steamworks/SteamAPI;->isNativeAPILoaded:Z

    if-eqz v0, :cond_9

    .line 42
    invoke-static {p0}, Lcom/codedisaster/steamworks/SteamAPI;->nativeRestartAppIfNecessary(I)Z

    move-result v0

    return v0

    .line 39
    :cond_9
    new-instance v0, Lcom/codedisaster/steamworks/SteamException;

    const-string v1, "Native libraries not loaded.\nEnsure to call SteamAPI.loadLibraries() first!"

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native runCallbacks()V
.end method

.method public static shutdown()V
    .registers 1

    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/codedisaster/steamworks/SteamAPI;->isRunning:Z

    .line 58
    invoke-static {}, Lcom/codedisaster/steamworks/SteamAPI;->nativeShutdown()V

    .line 59
    return-void
.end method

.method public static skipLoadLibraries()V
    .registers 1

    .line 33
    const/4 v0, 0x1

    sput-boolean v0, Lcom/codedisaster/steamworks/SteamAPI;->isNativeAPILoaded:Z

    .line 34
    return-void
.end method
