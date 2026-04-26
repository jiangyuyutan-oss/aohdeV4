.class public Lcom/badlogic/gdx/backends/android/AsynchronousAndroidAudio;
.super Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;
.source "AsynchronousAndroidAudio.java"


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final handlerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "config"  # Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;-><init>(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    .line 23
    iget-boolean v0, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->disableAudio:Z

    if-nez v0, :cond_23

    .line 24
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "libGDX Sound Management"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AsynchronousAndroidAudio;->handlerThread:Landroid/os/HandlerThread;

    .line 25
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AsynchronousAndroidAudio;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AsynchronousAndroidAudio;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AsynchronousAndroidAudio;->handler:Landroid/os/Handler;

    goto :goto_28

    .line 28
    :cond_23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AsynchronousAndroidAudio;->handler:Landroid/os/Handler;

    .line 29
    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AsynchronousAndroidAudio;->handlerThread:Landroid/os/HandlerThread;

    .line 31
    :goto_28
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->dispose()V

    .line 36
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AsynchronousAndroidAudio;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_c

    .line 37
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AsynchronousAndroidAudio;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 39
    :cond_c
    return-void
.end method

.method public newSound(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Sound;
    .registers 5
    .param p1, "file"  # Lcom/badlogic/gdx/files/FileHandle;

    .line 43
    invoke-super {p0, p1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->newSound(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Sound;

    move-result-object v0

    .line 44
    .local v0, "sound":Lcom/badlogic/gdx/audio/Sound;
    new-instance v1, Lcom/badlogic/gdx/backends/android/AsynchronousSound;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AsynchronousAndroidAudio;->handler:Landroid/os/Handler;

    invoke-direct {v1, v0, v2}, Lcom/badlogic/gdx/backends/android/AsynchronousSound;-><init>(Lcom/badlogic/gdx/audio/Sound;Landroid/os/Handler;)V

    return-object v1
.end method
