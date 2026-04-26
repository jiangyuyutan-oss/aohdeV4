.class public Lcom/badlogic/gdx/backends/android/AndroidDaydream;
.super Landroid/service/dreams/DreamService;
.source "AndroidDaydream.java"

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

.field protected graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

.field protected handler:Landroid/os/Handler;

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


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 49
    invoke-static {}, Lcom/badlogic/gdx/utils/GdxNativesLoader;->load()V

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 47
    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->firstResume:Z

    .line 61
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->runnables:Lcom/badlogic/gdx/utils/Array;

    .line 62
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->executedRunnables:Lcom/badlogic/gdx/utils/Array;

    .line 63
    new-instance v0, Lcom/badlogic/gdx/utils/SnapshotArray;

    const-class v1, Lcom/badlogic/gdx/LifecycleListener;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->lifecycleListeners:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 64
    const/4 v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->logLevel:I

    return-void
.end method

.method private init(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Z)V
    .registers 7
    .param p1, "listener"  # Lcom/badlogic/gdx/ApplicationListener;
    .param p2, "config"  # Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;
    .param p3, "isForView"  # Z

    .line 111
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationLogger;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplicationLogger;-><init>()V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->setApplicationLogger(Lcom/badlogic/gdx/ApplicationLogger;)V

    .line 112
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    iget-object v1, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    if-nez v1, :cond_14

    new-instance v1, Lcom/badlogic/gdx/backends/android/surfaceview/FillResolutionStrategy;

    invoke-direct {v1}, Lcom/badlogic/gdx/backends/android/surfaceview/FillResolutionStrategy;-><init>()V

    goto :goto_16

    :cond_14
    iget-object v1, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    :goto_16
    invoke-direct {v0, p0, p2, v1}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    invoke-virtual {p0, p0, p0, v0, p2}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->createInput(Lcom/badlogic/gdx/Application;Landroid/content/Context;Ljava/lang/Object;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    .line 115
    invoke-virtual {p0, p0, p2}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->createAudio(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Lcom/badlogic/gdx/backends/android/AndroidAudio;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    .line 116
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->createFiles()Lcom/badlogic/gdx/backends/android/AndroidFiles;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->files:Lcom/badlogic/gdx/backends/android/AndroidFiles;

    .line 117
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidNet;

    invoke-direct {v0, p0, p2}, Lcom/badlogic/gdx/backends/android/AndroidNet;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->net:Lcom/badlogic/gdx/backends/android/AndroidNet;

    .line 118
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->listener:Lcom/badlogic/gdx/ApplicationListener;

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->handler:Landroid/os/Handler;

    .line 120
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidClipboard;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/backends/android/AndroidClipboard;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->clipboard:Lcom/badlogic/gdx/backends/android/AndroidClipboard;

    .line 123
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidDaydream$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream$1;-><init>(Lcom/badlogic/gdx/backends/android/AndroidDaydream;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V

    .line 142
    sput-object p0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    .line 143
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    .line 144
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getAudio()Lcom/badlogic/gdx/Audio;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    .line 145
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getFiles()Lcom/badlogic/gdx/Files;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    .line 146
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    .line 147
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getNet()Lcom/badlogic/gdx/Net;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    .line 149
    const/4 v0, 0x1

    if-nez p3, :cond_83

    .line 150
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->setFullscreen(Z)V

    .line 151
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v1}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->createLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    :cond_83
    iget-boolean v1, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useWakelock:Z

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->createWakeLock(Z)V

    .line 155
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->hideStatusBar(Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    .line 158
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v0, :cond_9c

    .line 159
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/backends/android/AndroidInput;->setKeyboardAvailable(Z)V

    .line 160
    :cond_9c
    return-void
.end method


# virtual methods
.method public addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V
    .registers 4
    .param p1, "listener"  # Lcom/badlogic/gdx/LifecycleListener;

    .line 366
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->lifecycleListeners:Lcom/badlogic/gdx/utils/SnapshotArray;

    monitor-enter v0

    .line 367
    :try_start_3
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->lifecycleListeners:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->add(Ljava/lang/Object;)V

    .line 368
    monitor-exit v0

    .line 369
    return-void

    .line 368
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

    .line 410
    new-instance v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;-><init>(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    return-object v0
.end method

.method protected createFiles()Lcom/badlogic/gdx/backends/android/AndroidFiles;
    .registers 4

    .line 419
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getFilesDir()Ljava/io/File;

    .line 420
    new-instance v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2}, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;-><init>(Landroid/content/res/AssetManager;Landroid/content/ContextWrapper;Z)V

    return-object v0
.end method

.method public createInput(Lcom/badlogic/gdx/Application;Landroid/content/Context;Ljava/lang/Object;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Lcom/badlogic/gdx/backends/android/AndroidInput;
    .registers 7
    .param p1, "activity"  # Lcom/badlogic/gdx/Application;
    .param p2, "context"  # Landroid/content/Context;
    .param p3, "view"  # Ljava/lang/Object;
    .param p4, "config"  # Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    .line 415
    new-instance v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    invoke-direct {v0, p0, p0, v1, p4}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;-><init>(Lcom/badlogic/gdx/Application;Landroid/content/Context;Ljava/lang/Object;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    return-object v0
.end method

.method protected createLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .registers 3

    .line 163
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 165
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 166
    return-object v0
.end method

.method protected createWakeLock(Z)V
    .registers 4
    .param p1, "use"  # Z

    .line 170
    if-eqz p1, :cond_b

    .line 171
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 173
    :cond_b
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "message"  # Ljava/lang/String;

    .line 316
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->logLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getApplicationLogger()Lcom/badlogic/gdx/ApplicationLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/ApplicationLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_c
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "message"  # Ljava/lang/String;
    .param p3, "exception"  # Ljava/lang/Throwable;

    .line 321
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->logLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getApplicationLogger()Lcom/badlogic/gdx/ApplicationLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/ApplicationLogger;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 322
    :cond_c
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "message"  # Ljava/lang/String;

    .line 336
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->logLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getApplicationLogger()Lcom/badlogic/gdx/ApplicationLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/ApplicationLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_c
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "message"  # Ljava/lang/String;
    .param p3, "exception"  # Ljava/lang/Throwable;

    .line 341
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->logLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getApplicationLogger()Lcom/badlogic/gdx/ApplicationLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/ApplicationLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 342
    :cond_c
    return-void
.end method

.method public exit()V
    .registers 3

    .line 306
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidDaydream$2;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream$2;-><init>(Lcom/badlogic/gdx/backends/android/AndroidDaydream;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 312
    return-void
.end method

.method public getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;
    .registers 2

    .line 230
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->listener:Lcom/badlogic/gdx/ApplicationListener;

    return-object v0
.end method

.method public getApplicationLogger()Lcom/badlogic/gdx/ApplicationLogger;
    .registers 2

    .line 361
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->applicationLogger:Lcom/badlogic/gdx/ApplicationLogger;

    return-object v0
.end method

.method public getApplicationWindow()Landroid/view/Window;
    .registers 2

    .line 400
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public getAudio()Lcom/badlogic/gdx/Audio;
    .registers 2

    .line 235
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    return-object v0
.end method

.method public getClipboard()Lcom/badlogic/gdx/utils/Clipboard;
    .registers 2

    .line 285
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->clipboard:Lcom/badlogic/gdx/backends/android/AndroidClipboard;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 380
    return-object p0
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

    .line 390
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->executedRunnables:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getFiles()Lcom/badlogic/gdx/Files;
    .registers 2

    .line 240
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->files:Lcom/badlogic/gdx/backends/android/AndroidFiles;

    return-object v0
.end method

.method public getGraphics()Lcom/badlogic/gdx/Graphics;
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .line 405
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public bridge synthetic getInput()Lcom/badlogic/gdx/Input;
    .registers 2

    .line 46
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object v0

    return-object v0
.end method

.method public getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;
    .registers 2

    .line 250
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    return-object v0
.end method

.method public getJavaHeap()J
    .registers 5

    .line 270
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

    .line 395
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->lifecycleListeners:Lcom/badlogic/gdx/utils/SnapshotArray;

    return-object v0
.end method

.method public getLogLevel()I
    .registers 2

    .line 351
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->logLevel:I

    return v0
.end method

.method public getNativeHeap()J
    .registers 3

    .line 275
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNet()Lcom/badlogic/gdx/Net;
    .registers 2

    .line 255
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->net:Lcom/badlogic/gdx/backends/android/AndroidNet;

    return-object v0
.end method

.method public getPreferences(Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;
    .registers 4
    .param p1, "name"  # Ljava/lang/String;

    .line 280
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

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

    .line 385
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->runnables:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getType()Lcom/badlogic/gdx/Application$ApplicationType;
    .registers 2

    .line 260
    sget-object v0, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .line 265
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method protected hideStatusBar(Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V
    .registers 4
    .param p1, "config"  # Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    .line 176
    iget-boolean v0, p1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->hideStatusBar:Z

    if-nez v0, :cond_5

    return-void

    .line 178
    :cond_5
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 180
    .local v0, "rootView":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 181
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 182
    return-void
.end method

.method public initialize(Lcom/badlogic/gdx/ApplicationListener;)V
    .registers 3
    .param p1, "listener"  # Lcom/badlogic/gdx/ApplicationListener;

    .line 71
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;-><init>()V

    .line 72
    .local v0, "config":Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->initialize(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    .line 73
    return-void
.end method

.method public initialize(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V
    .registers 4
    .param p1, "listener"  # Lcom/badlogic/gdx/ApplicationListener;
    .param p2, "config"  # Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->init(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Z)V

    .line 83
    return-void
.end method

.method public initializeForView(Lcom/badlogic/gdx/ApplicationListener;)Landroid/view/View;
    .registers 4
    .param p1, "listener"  # Lcom/badlogic/gdx/ApplicationListener;

    .line 92
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;-><init>()V

    .line 93
    .local v0, "config":Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->initializeForView(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public initializeForView(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Landroid/view/View;
    .registers 4
    .param p1, "listener"  # Lcom/badlogic/gdx/ApplicationListener;
    .param p2, "config"  # Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    .line 106
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->init(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Z)V

    .line 107
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "message"  # Ljava/lang/String;

    .line 326
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->logLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getApplicationLogger()Lcom/badlogic/gdx/ApplicationLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/ApplicationLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_c
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "message"  # Ljava/lang/String;
    .param p3, "exception"  # Ljava/lang/Throwable;

    .line 331
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->logLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getApplicationLogger()Lcom/badlogic/gdx/ApplicationLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/ApplicationLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 332
    :cond_c
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "config"  # Landroid/content/res/Configuration;

    .line 298
    invoke-super {p0, p1}, Landroid/service/dreams/DreamService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, "keyboardAvailable":Z
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    const/4 v0, 0x1

    .line 301
    :cond_a
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/backends/android/AndroidInput;->setKeyboardAvailable(Z)V

    .line 302
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .line 225
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDetachedFromWindow()V

    .line 226
    return-void
.end method

.method public onDreamingStarted()V
    .registers 2

    .line 203
    sput-object p0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    .line 204
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    .line 205
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getAudio()Lcom/badlogic/gdx/Audio;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    .line 206
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getFiles()Lcom/badlogic/gdx/Files;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    .line 207
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    .line 208
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getNet()Lcom/badlogic/gdx/Net;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    .line 210
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    invoke-interface {v0}, Lcom/badlogic/gdx/backends/android/AndroidInput;->onDreamingStarted()V

    .line 212
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    if-eqz v0, :cond_2e

    .line 213
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->onResumeGLSurfaceView()V

    .line 216
    :cond_2e
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->firstResume:Z

    if-nez v0, :cond_38

    .line 217
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->resume()V

    goto :goto_3b

    .line 219
    :cond_38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->firstResume:Z

    .line 220
    :goto_3b
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    .line 221
    return-void
.end method

.method public onDreamingStopped()V
    .registers 4

    .line 186
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->isContinuousRendering()Z

    move-result v0

    .line 187
    .local v0, "isContinuous":Z
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->setContinuousRendering(Z)V

    .line 188
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v1}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->pause()V

    .line 190
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    invoke-interface {v1}, Lcom/badlogic/gdx/backends/android/AndroidInput;->onDreamingStopped()V

    .line 192
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v1}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->clearManagedCaches()V

    .line 193
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v1}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->destroy()V

    .line 194
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->setContinuousRendering(Z)V

    .line 196
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v1}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->onPauseGLSurfaceView()V

    .line 198
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    .line 199
    return-void
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "runnable"  # Ljava/lang/Runnable;

    .line 290
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->runnables:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v0

    .line 291
    :try_start_3
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->runnables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 292
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    .line 293
    monitor-exit v0

    .line 294
    return-void

    .line 293
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public removeLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V
    .registers 5
    .param p1, "listener"  # Lcom/badlogic/gdx/LifecycleListener;

    .line 373
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->lifecycleListeners:Lcom/badlogic/gdx/utils/SnapshotArray;

    monitor-enter v0

    .line 374
    :try_start_3
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->lifecycleListeners:Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/utils/SnapshotArray;->removeValue(Ljava/lang/Object;Z)Z

    .line 375
    monitor-exit v0

    .line 376
    return-void

    .line 375
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

    .line 425
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_17

    .line 428
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1a

    .line 432
    :cond_17
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 434
    :goto_1a
    return-void
.end method

.method public setApplicationLogger(Lcom/badlogic/gdx/ApplicationLogger;)V
    .registers 2
    .param p1, "applicationLogger"  # Lcom/badlogic/gdx/ApplicationLogger;

    .line 356
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->applicationLogger:Lcom/badlogic/gdx/ApplicationLogger;

    .line 357
    return-void
.end method

.method public setLogLevel(I)V
    .registers 2
    .param p1, "logLevel"  # I

    .line 346
    iput p1, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->logLevel:I

    .line 347
    return-void
.end method

.method public useImmersiveMode(Z)V
    .registers 3
    .param p1, "b"  # Z

    .line 438
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
