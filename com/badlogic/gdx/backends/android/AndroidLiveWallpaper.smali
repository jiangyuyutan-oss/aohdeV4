.class public Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;
.super Ljava/lang/Object;
.source "AndroidLiveWallpaper.java"

# interfaces
.implements Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;


# instance fields
.field protected applicationLogger:Lcom/badlogic/gdx/ApplicationLogger;

.field protected audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

.field protected clipboard:Lcom/badlogic/gdx/backends/android/AndroidClipboard;

.field protected final executedRunnables:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected files:Lcom/badlogic/gdx/backends/android/AndroidFiles;

.field protected firstResume:Z

.field protected graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

.field protected input:Lcom/badlogic/gdx/backends/android/AndroidInput;

.field protected final lifecycleListeners:Lcom/badlogic/gdx/utils/SnapshotArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/SnapshotArray<",
            "Lcom/badlogic/gdx/LifecycleListener;",
            ">;"
        }
    .end annotation
.end field

.field protected listener:Lcom/badlogic/gdx/ApplicationListener;

.field protected logLevel:I

.field protected net:Lcom/badlogic/gdx/backends/android/AndroidNet;

.field protected final runnables:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected service:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

.field protected volatile wallpaperColors:[Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 39
    invoke-static {}, Lcom/badlogic/gdx/utils/GdxNativesLoader;->load()V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;)V
    .registers 4
    .param p1, "service"  # Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->firstResume:Z

    .line 52
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->runnables:Lcom/badlogic/gdx/utils/Array;

    .line 53
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->executedRunnables:Lcom/badlogic/gdx/utils/Array;

    .line 54
    new-instance v0, Lcom/badlogic/gdx/utils/SnapshotArray;

    const-class v1, Lcom/badlogic/gdx/LifecycleListener;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->lifecycleListeners:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->logLevel:I

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->wallpaperColors:[Lcom/badlogic/gdx/graphics/Color;

    .line 60
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->service:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    .line 61
    return-void
.end method


# virtual methods
.method public addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V
    .registers 4
    .param p1, "listener"  # Lcom/badlogic/gdx/LifecycleListener;

    .line 302
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->lifecycleListeners:Lcom/badlogic/gdx/utils/SnapshotArray;

    monitor-enter v0

    .line 303
    :try_start_3
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->lifecycleListeners:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->add(Ljava/lang/Object;)V

    .line 304
    monitor-exit v0

    .line 305
    return-void

    .line 304
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public createAudio(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Lcom/badlogic/gdx/backends/android/AndroidAudio;
    .registers 4
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "config"  # Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    .line 351
    new-instance v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;-><init>(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    return-object v0
.end method

.method protected createFiles()Lcom/badlogic/gdx/backends/android/AndroidFiles;
    .registers 5

    .line 361
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->getService()Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->getFilesDir()Ljava/io/File;

    .line 362
    new-instance v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->getService()Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->getService()Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;-><init>(Landroid/content/res/AssetManager;Landroid/content/ContextWrapper;Z)V

    return-object v0
.end method

.method public createInput(Lcom/badlogic/gdx/Application;Landroid/content/Context;Ljava/lang/Object;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Lcom/badlogic/gdx/backends/android/AndroidInput;
    .registers 8
    .param p1, "activity"  # Lcom/badlogic/gdx/Application;
    .param p2, "context"  # Landroid/content/Context;
    .param p3, "view"  # Ljava/lang/Object;
    .param p4, "config"  # Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    .line 356
    new-instance v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->getService()Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    iget-object v2, v2, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->view:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    invoke-direct {v0, p0, v1, v2, p4}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;-><init>(Lcom/badlogic/gdx/Application;Landroid/content/Context;Ljava/lang/Object;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    return-object v0
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "message"  # Ljava/lang/String;

    .line 247
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->logLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->getApplicationLogger()Lcom/badlogic/gdx/ApplicationLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/ApplicationLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_c
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "message"  # Ljava/lang/String;
    .param p3, "exception"  # Ljava/lang/Throwable;

    .line 252
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->logLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->getApplicationLogger()Lcom/badlogic/gdx/ApplicationLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/ApplicationLogger;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 253
    :cond_c
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "message"  # Ljava/lang/String;

    .line 267
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->logLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->getApplicationLogger()Lcom/badlogic/gdx/ApplicationLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/ApplicationLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_c
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "message"  # Ljava/lang/String;
    .param p3, "exception"  # Ljava/lang/Throwable;

    .line 272
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->logLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->getApplicationLogger()Lcom/badlogic/gdx/ApplicationLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/ApplicationLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    :cond_c
    return-void
.end method

.method public exit()V
    .registers 1

    .line 298
    return-void
.end method

.method public getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->listener:Lcom/badlogic/gdx/ApplicationListener;

    return-object v0
.end method

.method public getApplicationLogger()Lcom/badlogic/gdx/ApplicationLogger;
    .registers 2

    .line 292
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->applicationLogger:Lcom/badlogic/gdx/ApplicationLogger;

    return-object v0
.end method

.method public getApplicationWindow()Landroid/view/Window;
    .registers 2

    .line 341
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAudio()Lcom/badlogic/gdx/Audio;
    .registers 2

    .line 192
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    return-object v0
.end method

.method public getClipboard()Lcom/badlogic/gdx/utils/Clipboard;
    .registers 2

    .line 242
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->clipboard:Lcom/badlogic/gdx/backends/android/AndroidClipboard;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 316
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->service:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    return-object v0
.end method

.method public getExecutedRunnables()Lcom/badlogic/gdx/utils/Array;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->executedRunnables:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getFiles()Lcom/badlogic/gdx/Files;
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->files:Lcom/badlogic/gdx/backends/android/AndroidFiles;

    return-object v0
.end method

.method public getGraphics()Lcom/badlogic/gdx/Graphics;
    .registers 2

    .line 202
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .line 346
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic getInput()Lcom/badlogic/gdx/Input;
    .registers 2

    .line 37
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object v0

    return-object v0
.end method

.method public getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    return-object v0
.end method

.method public getJavaHeap()J
    .registers 5

    .line 227
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getLifecycleListeners()Lcom/badlogic/gdx/utils/SnapshotArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/SnapshotArray<",
            "Lcom/badlogic/gdx/LifecycleListener;",
            ">;"
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->lifecycleListeners:Lcom/badlogic/gdx/utils/SnapshotArray;

    return-object v0
.end method

.method public getLogLevel()I
    .registers 2

    .line 282
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->logLevel:I

    return v0
.end method

.method public getNativeHeap()J
    .registers 3

    .line 232
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNet()Lcom/badlogic/gdx/Net;
    .registers 2

    .line 212
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->net:Lcom/badlogic/gdx/backends/android/AndroidNet;

    return-object v0
.end method

.method public getPreferences(Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;
    .registers 5
    .param p1, "name"  # Ljava/lang/String;

    .line 237
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->service:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/backends/android/AndroidPreferences;-><init>(Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method public getRunnables()Lcom/badlogic/gdx/utils/Array;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->runnables:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getService()Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->service:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    return-object v0
.end method

.method public getType()Lcom/badlogic/gdx/Application$ApplicationType;
    .registers 2

    .line 217
    sget-object v0, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .line 222
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->service:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V
    .registers 5
    .param p1, "listener"  # Lcom/badlogic/gdx/ApplicationListener;
    .param p2, "config"  # Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    .line 64
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->getVersion()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_6c

    .line 67
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationLogger;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplicationLogger;-><init>()V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->setApplicationLogger(Lcom/badlogic/gdx/ApplicationLogger;)V

    .line 68
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    iget-object v1, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    if-nez v1, :cond_1c

    new-instance v1, Lcom/badlogic/gdx/backends/android/surfaceview/FillResolutionStrategy;

    invoke-direct {v1}, Lcom/badlogic/gdx/backends/android/surfaceview/FillResolutionStrategy;-><init>()V

    goto :goto_1e

    :cond_1c
    iget-object v1, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    :goto_1e
    invoke-direct {v0, p0, p2, v1}, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;-><init>(Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    .line 73
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->getService()Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->view:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    invoke-virtual {p0, p0, v0, v1, p2}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->createInput(Lcom/badlogic/gdx/Application;Landroid/content/Context;Ljava/lang/Object;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    .line 76
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->getService()Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->createAudio(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Lcom/badlogic/gdx/backends/android/AndroidAudio;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    .line 77
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->createFiles()Lcom/badlogic/gdx/backends/android/AndroidFiles;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->files:Lcom/badlogic/gdx/backends/android/AndroidFiles;

    .line 78
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidNet;

    invoke-direct {v0, p0, p2}, Lcom/badlogic/gdx/backends/android/AndroidNet;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->net:Lcom/badlogic/gdx/backends/android/AndroidNet;

    .line 79
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->listener:Lcom/badlogic/gdx/ApplicationListener;

    .line 80
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidClipboard;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->getService()Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/backends/android/AndroidClipboard;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->clipboard:Lcom/badlogic/gdx/backends/android/AndroidClipboard;

    .line 85
    sput-object p0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    .line 86
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    sput-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    .line 87
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    sput-object v0, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    .line 88
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->files:Lcom/badlogic/gdx/backends/android/AndroidFiles;

    sput-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    .line 89
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    sput-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->net:Lcom/badlogic/gdx/backends/android/AndroidNet;

    sput-object v0, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    .line 91
    return-void

    .line 65
    :cond_6c
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "LibGDX requires Android API Level 14 or later."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "message"  # Ljava/lang/String;

    .line 257
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->logLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->getApplicationLogger()Lcom/badlogic/gdx/ApplicationLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/ApplicationLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_c
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "message"  # Ljava/lang/String;
    .param p3, "exception"  # Ljava/lang/Throwable;

    .line 262
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->logLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->getApplicationLogger()Lcom/badlogic/gdx/ApplicationLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/ApplicationLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 263
    :cond_c
    return-void
.end method

.method public notifyColorsChanged(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .registers 7
    .param p1, "primaryColor"  # Lcom/badlogic/gdx/graphics/Color;
    .param p2, "secondaryColor"  # Lcom/badlogic/gdx/graphics/Color;
    .param p3, "tertiaryColor"  # Lcom/badlogic/gdx/graphics/Color;

    .line 391
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-ge v0, v1, :cond_7

    .line 392
    return-void

    .line 393
    :cond_7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/Color;

    .line 394
    .local v0, "colors":[Lcom/badlogic/gdx/graphics/Color;
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 395
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, p2}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 396
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, p3}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 397
    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->wallpaperColors:[Lcom/badlogic/gdx/graphics/Color;

    .line 398
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->service:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->linkedEngine:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    .line 399
    .local v1, "engine":Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;
    if-eqz v1, :cond_2d

    .line 400
    invoke-virtual {v1}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->notifyColorsChanged()V

    .line 401
    :cond_2d
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    if-eqz v0, :cond_9

    .line 159
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->onDestroyGLSurfaceView()V

    .line 163
    :cond_9
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    if-eqz v0, :cond_12

    .line 165
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-interface {v0}, Lcom/badlogic/gdx/backends/android/AndroidAudio;->dispose()V

    .line 167
    :cond_12
    return-void
.end method

.method public onPause()V
    .registers 3

    .line 94
    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->DEBUG:Z

    const-string v1, "WallpaperService"

    if-eqz v0, :cond_b

    const-string v0, " > AndroidLiveWallpaper - onPause()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_b
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-interface {v0}, Lcom/badlogic/gdx/backends/android/AndroidAudio;->pause()V

    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    invoke-interface {v0}, Lcom/badlogic/gdx/backends/android/AndroidInput;->onPause()V

    .line 117
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    if-eqz v0, :cond_1e

    .line 118
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->onPauseGLSurfaceView()V

    .line 121
    :cond_1e
    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->DEBUG:Z

    if-eqz v0, :cond_27

    const-string v0, " > AndroidLiveWallpaper - onPause() done!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_27
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 125
    sput-object p0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    .line 126
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    sput-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    .line 127
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    sput-object v0, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    .line 128
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->files:Lcom/badlogic/gdx/backends/android/AndroidFiles;

    sput-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    .line 129
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    sput-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->net:Lcom/badlogic/gdx/backends/android/AndroidNet;

    sput-object v0, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    invoke-interface {v0}, Lcom/badlogic/gdx/backends/android/AndroidInput;->onResume()V

    .line 134
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    if-eqz v0, :cond_24

    .line 135
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->onResumeGLSurfaceView()V

    .line 138
    :cond_24
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->firstResume:Z

    if-nez v0, :cond_33

    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-interface {v0}, Lcom/badlogic/gdx/backends/android/AndroidAudio;->resume()V

    .line 140
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->resume()V

    goto :goto_36

    .line 142
    :cond_33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->firstResume:Z

    .line 143
    :goto_36
    return-void
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "runnable"  # Ljava/lang/Runnable;

    .line 185
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->runnables:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v0

    .line 186
    :try_start_3
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->runnables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 187
    monitor-exit v0

    .line 188
    return-void

    .line 187
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public removeLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V
    .registers 5
    .param p1, "listener"  # Lcom/badlogic/gdx/LifecycleListener;

    .line 309
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->lifecycleListeners:Lcom/badlogic/gdx/utils/SnapshotArray;

    monitor-enter v0

    .line 310
    :try_start_3
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->lifecycleListeners:Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/utils/SnapshotArray;->removeValue(Ljava/lang/Object;Z)Z

    .line 311
    monitor-exit v0

    .line 312
    return-void

    .line 311
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "runnable"  # Ljava/lang/Runnable;

    .line 367
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_17

    .line 370
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1a

    .line 374
    :cond_17
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 376
    :goto_1a
    return-void
.end method

.method public setApplicationLogger(Lcom/badlogic/gdx/ApplicationLogger;)V
    .registers 2
    .param p1, "applicationLogger"  # Lcom/badlogic/gdx/ApplicationLogger;

    .line 287
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->applicationLogger:Lcom/badlogic/gdx/ApplicationLogger;

    .line 288
    return-void
.end method

.method public setLogLevel(I)V
    .registers 2
    .param p1, "logLevel"  # I

    .line 277
    iput p1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->logLevel:I

    .line 278
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"  # Landroid/content/Intent;

    .line 336
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->service:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->startActivity(Landroid/content/Intent;)V

    .line 337
    return-void
.end method

.method public useImmersiveMode(Z)V
    .registers 3
    .param p1, "b"  # Z

    .line 380
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
