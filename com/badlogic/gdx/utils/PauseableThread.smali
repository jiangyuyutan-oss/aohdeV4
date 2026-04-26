.class public Lcom/badlogic/gdx/utils/PauseableThread;
.super Ljava/lang/Thread;
.source "PauseableThread.java"


# instance fields
.field exit:Z

.field paused:Z

.field final runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"  # Ljava/lang/Runnable;

    .line 31
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/PauseableThread;->paused:Z

    .line 26
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/PauseableThread;->exit:Z

    .line 32
    iput-object p1, p0, Lcom/badlogic/gdx/utils/PauseableThread;->runnable:Ljava/lang/Runnable;

    .line 33
    return-void
.end method


# virtual methods
.method public isPaused()Z
    .registers 2

    .line 67
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/PauseableThread;->paused:Z

    return v0
.end method

.method public onPause()V
    .registers 2

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/PauseableThread;->paused:Z

    .line 55
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 59
    monitor-enter p0

    .line 60
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/PauseableThread;->paused:Z

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 62
    monitor-exit p0

    .line 63
    return-void

    .line 62
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public run()V
    .registers 2

    .line 37
    nop

    :goto_1
    monitor-enter p0

    .line 39
    :goto_2
    :try_start_2
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/PauseableThread;->paused:Z

    if-eqz v0, :cond_a

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_9} :catch_d
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    goto :goto_2

    .line 43
    :cond_a
    goto :goto_11

    .line 44
    :catchall_b
    move-exception v0

    goto :goto_1d

    .line 41
    :catch_d
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 44
    .end local v0  # "e":Ljava/lang/InterruptedException;
    :goto_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_b

    .line 46
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/PauseableThread;->exit:Z

    if-eqz v0, :cond_17

    return-void

    .line 48
    :cond_17
    iget-object v0, p0, Lcom/badlogic/gdx/utils/PauseableThread;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 44
    :goto_1d
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_b

    throw v0
.end method

.method public stopThread()V
    .registers 2

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/PauseableThread;->exit:Z

    .line 73
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/PauseableThread;->paused:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/PauseableThread;->onResume()V

    .line 74
    :cond_a
    return-void
.end method
