.class public Lcom/badlogic/gdx/backends/android/AndroidApplication;
.super Landroid/app/Activity;
.source "AndroidApplication.java"

# interfaces
.implements Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;


# instance fields
.field private final androidEventListeners:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/backends/android/AndroidEventListener;",
            ">;"
        }
    .end annotation
.end field

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

.field public handler:Landroid/os/Handler;

.field protected hideStatusBar:Z

.field protected input:Lcom/badlogic/gdx/backends/android/AndroidInput;

.field private isWaitingForAudio:Z

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

.field protected useImmersiveMode:Z

.field private wasFocusChanged:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 44
    invoke-static {}, Lcom/badlogic/gdx/utils/GdxNativesLoader;->load()V

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->firstResume:Z

    .line 56
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->runnables:Lcom/badlogic/gdx/utils/Array;

    .line 57
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->executedRunnables:Lcom/badlogic/gdx/utils/Array;

    .line 58
    new-instance v0, Lcom/badlogic/gdx/utils/SnapshotArray;

    const-class v1, Lcom/badlogic/gdx/LifecycleListener;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->lifecycleListeners:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 59
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->androidEventListeners:Lcom/badlogic/gdx/utils/Array;

    .line 60
    const/4 v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->logLevel:I

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->useImmersiveMode:Z

    .line 63
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->hideStatusBar:Z

    .line 64
    const/4 v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->wasFocusChanged:I

    .line 65
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->isWaitingForAudio:Z

    return-void
.end method

.method private init(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Z)V
    .registers 8
    .param p1, "listener"  # Lcom/badlogic/gdx/ApplicationListener;
    .param p2, "config"  # Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;
    .param p3, "isForView"  # Z

    .line 115
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getVersion()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_e3

    .line 118
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationLogger;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplicationLogger;-><init>()V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->setApplicationLogger(Lcom/badlogic/gdx/ApplicationLogger;)V

    .line 119
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    iget-object v1, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    if-nez v1, :cond_1c

    new-instance v1, Lcom/badlogic/gdx/backends/android/surfaceview/FillResolutionStrategy;

    invoke-direct {v1}, Lcom/badlogic/gdx/backends/android/surfaceview/FillResolutionStrategy;-><init>()V

    goto :goto_1e

    :cond_1c
    iget-object v1, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    :goto_1e
    invoke-direct {v0, p0, p2, v1}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    .line 121
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    invoke-virtual {p0, p0, p0, v0, p2}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->createInput(Lcom/badlogic/gdx/Application;Landroid/content/Context;Ljava/lang/Object;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    .line 122
    invoke-virtual {p0, p0, p2}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->createAudio(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Lcom/badlogic/gdx/backends/android/AndroidAudio;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    .line 123
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->createFiles()Lcom/badlogic/gdx/backends/android/AndroidFiles;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->files:Lcom/badlogic/gdx/backends/android/AndroidFiles;

    .line 124
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidNet;

    invoke-direct {v0, p0, p2}, Lcom/badlogic/gdx/backends/android/AndroidNet;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->net:Lcom/badlogic/gdx/backends/android/AndroidNet;

    .line 125
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->listener:Lcom/badlogic/gdx/ApplicationListener;

    .line 126
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->handler:Landroid/os/Handler;

    .line 127
    iget-boolean v0, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useImmersiveMode:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->useImmersiveMode:Z

    .line 128
    iget-boolean v0, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->hideStatusBar:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->hideStatusBar:Z

    .line 129
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidClipboard;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/backends/android/AndroidClipboard;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->clipboard:Lcom/badlogic/gdx/backends/android/AndroidClipboard;

    .line 132
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidApplication$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication$1;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplication;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V

    .line 150
    sput-object p0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    .line 151
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    .line 152
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getAudio()Lcom/badlogic/gdx/Audio;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    .line 153
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getFiles()Lcom/badlogic/gdx/Files;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    .line 154
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    .line 155
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getNet()Lcom/badlogic/gdx/Net;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    .line 157
    const/4 v0, 0x1

    if-nez p3, :cond_ae

    .line 159
    :try_start_83
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->requestWindowFeature(I)Z
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_86} :catch_87

    .line 162
    goto :goto_8f

    .line 160
    :catch_87
    move-exception v1

    .line 161
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "AndroidApplication"

    const-string v3, "Content already displayed, cannot request FEATURE_NO_TITLE"

    invoke-virtual {p0, v2, v3, v1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    .end local v1  # "ex":Ljava/lang/Exception;
    :goto_8f
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 164
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 165
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v1}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->createLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    :cond_ae
    iget-boolean v1, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useWakelock:Z

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->createWakeLock(Z)V

    .line 169
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->hideStatusBar:Z

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->hideStatusBar(Z)V

    .line 170
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->useImmersiveMode:Z

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->useImmersiveMode(Z)V

    .line 171
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->useImmersiveMode:Z

    if-eqz v1, :cond_d1

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getVersion()I

    move-result v1

    const/16 v2, 0x13

    if-lt v1, v2, :cond_d1

    .line 172
    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener;

    invoke-direct {v1}, Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener;-><init>()V

    .line 173
    .local v1, "vlistener":Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener;
    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener;->createListener(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;)V

    .line 177
    .end local v1  # "vlistener":Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener;
    :cond_d1
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v0, :cond_e2

    .line 178
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/backends/android/AndroidInput;->setKeyboardAvailable(Z)V

    .line 179
    :cond_e2
    return-void

    .line 116
    :cond_e3
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "LibGDX requires Android API Level 14 or later."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addAndroidEventListener(Lcom/badlogic/gdx/backends/android/AndroidEventListener;)V
    .registers 4
    .param p1, "listener"  # Lcom/badlogic/gdx/backends/android/AndroidEventListener;

    .line 454
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->androidEventListeners:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v0

    .line 455
    :try_start_3
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->androidEventListeners:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 456
    monitor-exit v0

    .line 457
    return-void

    .line 456
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V
    .registers 4
    .param p1, "listener"  # Lcom/badlogic/gdx/LifecycleListener;

    .line 428
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->lifecycleListeners:Lcom/badlogic/gdx/utils/SnapshotArray;

    monitor-enter v0

    .line 429
    :try_start_3
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->lifecycleListeners:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->add(Ljava/lang/Object;)V

    .line 430
    monitor-exit v0

    .line 431
    return-void

    .line 430
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

    .line 498
    new-instance v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;-><init>(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    return-object v0
.end method

.method protected createFiles()Lcom/badlogic/gdx/backends/android/AndroidFiles;
    .registers 4

    .line 507
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getFilesDir()Ljava/io/File;

    .line 508
    new-instance v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getAssets()Landroid/content/res/AssetManager;

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

    .line 503
    new-instance v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    invoke-direct {v0, p0, p0, v1, p4}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;-><init>(Lcom/badlogic/gdx/Application;Landroid/content/Context;Ljava/lang/Object;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    return-object v0
.end method

.method protected createLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .registers 3

    .line 182
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 184
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 185
    return-object v0
.end method

.method protected createWakeLock(Z)V
    .registers 4
    .param p1, "use"  # Z

    .line 189
    if-eqz p1, :cond_b

    .line 190
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 192
    :cond_b
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "message"  # Ljava/lang/String;

    .line 378
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->logLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getApplicationLogger()Lcom/badlogic/gdx/ApplicationLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/ApplicationLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_c
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "message"  # Ljava/lang/String;
    .param p3, "exception"  # Ljava/lang/Throwable;

    .line 383
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->logLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getApplicationLogger()Lcom/badlogic/gdx/ApplicationLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/ApplicationLogger;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 384
    :cond_c
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "message"  # Ljava/lang/String;

    .line 398
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->logLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getApplicationLogger()Lcom/badlogic/gdx/ApplicationLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/ApplicationLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :cond_c
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "message"  # Ljava/lang/String;
    .param p3, "exception"  # Ljava/lang/Throwable;

    .line 403
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->logLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getApplicationLogger()Lcom/badlogic/gdx/ApplicationLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/ApplicationLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 404
    :cond_c
    return-void
.end method

.method public exit()V
    .registers 3

    .line 368
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidApplication$2;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication$2;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplication;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 374
    return-void
.end method

.method public getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;
    .registers 2

    .line 291
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->listener:Lcom/badlogic/gdx/ApplicationListener;

    return-object v0
.end method

.method public getApplicationLogger()Lcom/badlogic/gdx/ApplicationLogger;
    .registers 2

    .line 423
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->applicationLogger:Lcom/badlogic/gdx/ApplicationLogger;

    return-object v0
.end method

.method public getApplicationWindow()Landroid/view/Window;
    .registers 2

    .line 488
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public getAudio()Lcom/badlogic/gdx/Audio;
    .registers 2

    .line 296
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    return-object v0
.end method

.method public getClipboard()Lcom/badlogic/gdx/utils/Clipboard;
    .registers 2

    .line 347
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->clipboard:Lcom/badlogic/gdx/backends/android/AndroidClipboard;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 468
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

    .line 478
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->executedRunnables:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getFiles()Lcom/badlogic/gdx/Files;
    .registers 2

    .line 306
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->files:Lcom/badlogic/gdx/backends/android/AndroidFiles;

    return-object v0
.end method

.method public getGraphics()Lcom/badlogic/gdx/Graphics;
    .registers 2

    .line 311
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .line 493
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public bridge synthetic getInput()Lcom/badlogic/gdx/Input;
    .registers 2

    .line 42
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object v0

    return-object v0
.end method

.method public getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;
    .registers 2

    .line 301
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    return-object v0
.end method

.method public getJavaHeap()J
    .registers 5

    .line 331
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

    .line 483
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->lifecycleListeners:Lcom/badlogic/gdx/utils/SnapshotArray;

    return-object v0
.end method

.method public getLogLevel()I
    .registers 2

    .line 413
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->logLevel:I

    return v0
.end method

.method public getNativeHeap()J
    .registers 3

    .line 336
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNet()Lcom/badlogic/gdx/Net;
    .registers 2

    .line 316
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->net:Lcom/badlogic/gdx/backends/android/AndroidNet;

    return-object v0
.end method

.method public getPreferences(Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;
    .registers 4
    .param p1, "name"  # Ljava/lang/String;

    .line 341
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

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

    .line 473
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->runnables:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getType()Lcom/badlogic/gdx/Application$ApplicationType;
    .registers 2

    .line 321
    sget-object v0, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .line 326
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method protected hideStatusBar(Z)V
    .registers 4
    .param p1, "hide"  # Z

    .line 195
    if-nez p1, :cond_3

    return-void

    .line 197
    :cond_3
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 198
    .local v0, "rootView":Landroid/view/View;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 199
    return-void
.end method

.method public initialize(Lcom/badlogic/gdx/ApplicationListener;)V
    .registers 3
    .param p1, "listener"  # Lcom/badlogic/gdx/ApplicationListener;

    .line 72
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;-><init>()V

    .line 73
    .local v0, "config":Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->initialize(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    .line 74
    return-void
.end method

.method public initialize(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V
    .registers 4
    .param p1, "listener"  # Lcom/badlogic/gdx/ApplicationListener;
    .param p2, "config"  # Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->init(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Z)V

    .line 85
    return-void
.end method

.method public initializeForView(Lcom/badlogic/gdx/ApplicationListener;)Landroid/view/View;
    .registers 4
    .param p1, "listener"  # Lcom/badlogic/gdx/ApplicationListener;

    .line 95
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;-><init>()V

    .line 96
    .local v0, "config":Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->initializeForView(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public initializeForView(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Landroid/view/View;
    .registers 4
    .param p1, "listener"  # Lcom/badlogic/gdx/ApplicationListener;
    .param p2, "config"  # Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    .line 110
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->init(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Z)V

    .line 111
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "message"  # Ljava/lang/String;

    .line 388
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->logLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getApplicationLogger()Lcom/badlogic/gdx/ApplicationLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/ApplicationLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_c
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "message"  # Ljava/lang/String;
    .param p3, "exception"  # Ljava/lang/Throwable;

    .line 393
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->logLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getApplicationLogger()Lcom/badlogic/gdx/ApplicationLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/ApplicationLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 394
    :cond_c
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"  # I
    .param p2, "resultCode"  # I
    .param p3, "data"  # Landroid/content/Intent;

    .line 442
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 445
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->androidEventListeners:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v0

    .line 446
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    :try_start_7
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->androidEventListeners:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_1b

    .line 447
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->androidEventListeners:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/backends/android/AndroidEventListener;

    invoke-interface {v2, p1, p2, p3}, Lcom/badlogic/gdx/backends/android/AndroidEventListener;->onActivityResult(IILandroid/content/Intent;)V

    .line 446
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 449
    .end local v1  # "i":I
    :cond_1b
    monitor-exit v0

    .line 450
    return-void

    .line 449
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "config"  # Landroid/content/res/Configuration;

    .line 360
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, "keyboardAvailable":Z
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    const/4 v0, 0x1

    .line 363
    :cond_a
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/backends/android/AndroidInput;->setKeyboardAvailable(Z)V

    .line 364
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 286
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 287
    return-void
.end method

.method protected onPause()V
    .registers 5

    .line 231
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->isContinuousRendering()Z

    move-result v0

    .line 232
    .local v0, "isContinuous":Z
    sget-boolean v1, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->enforceContinuousRendering:Z

    .line 235
    .local v1, "isContinuousEnforced":Z
    const/4 v2, 0x1

    sput-boolean v2, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->enforceContinuousRendering:Z

    .line 236
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->setContinuousRendering(Z)V

    .line 239
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->pause()V

    .line 241
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    invoke-interface {v2}, Lcom/badlogic/gdx/backends/android/AndroidInput;->onPause()V

    .line 243
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 244
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->clearManagedCaches()V

    .line 245
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->destroy()V

    .line 248
    :cond_2a
    sput-boolean v1, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->enforceContinuousRendering:Z

    .line 249
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->setContinuousRendering(Z)V

    .line 251
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->onPauseGLSurfaceView()V

    .line 253
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 254
    return-void
.end method

.method protected onResume()V
    .registers 4

    .line 258
    sput-object p0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    .line 259
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    .line 260
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getAudio()Lcom/badlogic/gdx/Audio;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    .line 261
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getFiles()Lcom/badlogic/gdx/Files;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    .line 262
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    .line 263
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getNet()Lcom/badlogic/gdx/Net;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    .line 265
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    invoke-interface {v0}, Lcom/badlogic/gdx/backends/android/AndroidInput;->onResume()V

    .line 267
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    if-eqz v0, :cond_2e

    .line 268
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->onResumeGLSurfaceView()V

    .line 271
    :cond_2e
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->firstResume:Z

    const/4 v1, 0x0

    if-nez v0, :cond_39

    .line 272
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->resume()V

    goto :goto_3b

    .line 274
    :cond_39
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->firstResume:Z

    .line 276
    :goto_3b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->isWaitingForAudio:Z

    .line 277
    iget v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->wasFocusChanged:I

    if-eq v2, v0, :cond_47

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->wasFocusChanged:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4e

    .line 278
    :cond_47
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-interface {v0}, Lcom/badlogic/gdx/backends/android/AndroidAudio;->resume()V

    .line 279
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->isWaitingForAudio:Z

    .line 281
    :cond_4e
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 282
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .param p1, "hasFocus"  # Z

    .line 203
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 204
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->useImmersiveMode:Z

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->useImmersiveMode(Z)V

    .line 205
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->hideStatusBar:Z

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->hideStatusBar(Z)V

    .line 206
    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    .line 207
    const/4 v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->wasFocusChanged:I

    .line 208
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->isWaitingForAudio:Z

    if-eqz v1, :cond_21

    .line 209
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-interface {v1}, Lcom/badlogic/gdx/backends/android/AndroidAudio;->resume()V

    .line 210
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->isWaitingForAudio:Z

    goto :goto_21

    .line 213
    :cond_1f
    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->wasFocusChanged:I

    .line 215
    :cond_21
    :goto_21
    return-void
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "runnable"  # Ljava/lang/Runnable;

    .line 352
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->runnables:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v0

    .line 353
    :try_start_3
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->runnables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 354
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    .line 355
    monitor-exit v0

    .line 356
    return-void

    .line 355
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public removeAndroidEventListener(Lcom/badlogic/gdx/backends/android/AndroidEventListener;)V
    .registers 5
    .param p1, "listener"  # Lcom/badlogic/gdx/backends/android/AndroidEventListener;

    .line 461
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->androidEventListeners:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v0

    .line 462
    :try_start_3
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->androidEventListeners:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 463
    monitor-exit v0

    .line 464
    return-void

    .line 463
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public removeLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V
    .registers 5
    .param p1, "listener"  # Lcom/badlogic/gdx/LifecycleListener;

    .line 435
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->lifecycleListeners:Lcom/badlogic/gdx/utils/SnapshotArray;

    monitor-enter v0

    .line 436
    :try_start_3
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->lifecycleListeners:Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/utils/SnapshotArray;->removeValue(Ljava/lang/Object;Z)Z

    .line 437
    monitor-exit v0

    .line 438
    return-void

    .line 437
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public setApplicationLogger(Lcom/badlogic/gdx/ApplicationLogger;)V
    .registers 2
    .param p1, "applicationLogger"  # Lcom/badlogic/gdx/ApplicationLogger;

    .line 418
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->applicationLogger:Lcom/badlogic/gdx/ApplicationLogger;

    .line 419
    return-void
.end method

.method public setLogLevel(I)V
    .registers 2
    .param p1, "logLevel"  # I

    .line 408
    iput p1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->logLevel:I

    .line 409
    return-void
.end method

.method public useImmersiveMode(Z)V
    .registers 4
    .param p1, "use"  # Z

    .line 220
    if-eqz p1, :cond_19

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getVersion()I

    move-result v0

    const/16 v1, 0x13

    if-ge v0, v1, :cond_b

    goto :goto_19

    .line 222
    :cond_b
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 223
    .local v0, "view":Landroid/view/View;
    const/16 v1, 0x1706

    .line 226
    .local v1, "code":I
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 227
    return-void

    .line 220
    .end local v0  # "view":Landroid/view/View;
    .end local v1  # "code":I
    :cond_19
    :goto_19
    return-void
.end method
