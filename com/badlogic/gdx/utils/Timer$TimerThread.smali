.class Lcom/badlogic/gdx/utils/Timer$TimerThread;
.super Ljava/lang/Object;
.source "Timer.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/badlogic/gdx/LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimerThread"
.end annotation


# instance fields
.field final app:Lcom/badlogic/gdx/Application;

.field final files:Lcom/badlogic/gdx/Files;

.field instance:Lcom/badlogic/gdx/utils/Timer;

.field final instances:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/Timer;",
            ">;"
        }
    .end annotation
.end field

.field pauseTimeMillis:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Timer$TimerThread;->instances:Lcom/badlogic/gdx/utils/Array;

    .line 257
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Timer$TimerThread;->files:Lcom/badlogic/gdx/Files;

    .line 258
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Timer$TimerThread;->app:Lcom/badlogic/gdx/Application;

    .line 259
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Timer$TimerThread;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, p0}, Lcom/badlogic/gdx/Application;->addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V

    .line 260
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Timer$TimerThread;->resume()V

    .line 262
    new-instance v0, Ljava/lang/Thread;

    const-string v2, "Timer"

    invoke-direct {v0, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 263
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 264
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 265
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 3

    .line 313
    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_3
    sget-object v1, Lcom/badlogic/gdx/utils/Timer;->thread:Lcom/badlogic/gdx/utils/Timer$TimerThread;

    if-ne v1, p0, :cond_a

    const/4 v1, 0x0

    sput-object v1, Lcom/badlogic/gdx/utils/Timer;->thread:Lcom/badlogic/gdx/utils/Timer$TimerThread;

    .line 315
    :cond_a
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Timer$TimerThread;->instances:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 316
    sget-object v1, Lcom/badlogic/gdx/utils/Timer;->threadLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 317
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1b

    .line 318
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Timer$TimerThread;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, p0}, Lcom/badlogic/gdx/Application;->removeLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V

    .line 319
    return-void

    .line 317
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public pause()V
    .registers 6

    .line 306
    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/badlogic/gdx/utils/Timer$TimerThread;->pauseTimeMillis:J

    .line 308
    sget-object v1, Lcom/badlogic/gdx/utils/Timer;->threadLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 309
    monitor-exit v0

    .line 310
    return-void

    .line 309
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public resume()V
    .registers 7

    .line 296
    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    iget-wide v3, p0, Lcom/badlogic/gdx/utils/Timer$TimerThread;->pauseTimeMillis:J

    sub-long/2addr v1, v3

    .line 298
    .local v1, "delayMillis":J
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, p0, Lcom/badlogic/gdx/utils/Timer$TimerThread;->instances:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v4, "n":I
    :goto_13
    if-ge v3, v4, :cond_23

    .line 299
    iget-object v5, p0, Lcom/badlogic/gdx/utils/Timer$TimerThread;->instances:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/Timer;

    invoke-virtual {v5, v1, v2}, Lcom/badlogic/gdx/utils/Timer;->delay(J)V

    .line 298
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 300
    .end local v3  # "i":I
    .end local v4  # "n":I
    :cond_23
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/badlogic/gdx/utils/Timer$TimerThread;->pauseTimeMillis:J

    .line 301
    sget-object v3, Lcom/badlogic/gdx/utils/Timer;->threadLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 302
    .end local v1  # "delayMillis":J
    monitor-exit v0

    .line 303
    return-void

    .line 302
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public run()V
    .registers 12

    .line 269
    nop

    :goto_1
    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 270
    :try_start_4
    sget-object v1, Lcom/badlogic/gdx/utils/Timer;->thread:Lcom/badlogic/gdx/utils/Timer$TimerThread;

    if-ne v1, p0, :cond_80

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Timer$TimerThread;->files:Lcom/badlogic/gdx/Files;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    if-eq v1, v2, :cond_10

    goto/16 :goto_80

    .line 272
    :cond_10
    const-wide/16 v1, 0x1388

    .line 273
    .local v1, "waitMillis":J
    iget-wide v3, p0, Lcom/badlogic/gdx/utils/Timer$TimerThread;->pauseTimeMillis:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_64

    .line 274
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    const-wide/32 v7, 0xf4240

    div-long/2addr v3, v7

    .line 275
    .local v3, "timeMillis":J
    const/4 v7, 0x0

    .local v7, "i":I
    iget-object v8, p0, Lcom/badlogic/gdx/utils/Timer$TimerThread;->instances:Lcom/badlogic/gdx/utils/Array;

    iget v8, v8, Lcom/badlogic/gdx/utils/Array;->size:I
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_85

    .local v8, "n":I
    :goto_27
    if-ge v7, v8, :cond_64

    .line 277
    :try_start_29
    iget-object v9, p0, Lcom/badlogic/gdx/utils/Timer$TimerThread;->instances:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v9, v7}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/utils/Timer;

    invoke-virtual {v9, v3, v4, v1, v2}, Lcom/badlogic/gdx/utils/Timer;->update(JJ)J

    move-result-wide v9
    :try_end_35
    .catchall {:try_start_29 .. :try_end_35} :catchall_3a

    move-wide v1, v9

    .line 280
    nop

    .line 275
    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    .line 278
    :catchall_3a
    move-exception v5

    .line 279
    .local v5, "ex":Ljava/lang/Throwable;
    :try_start_3b
    new-instance v6, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Task failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/badlogic/gdx/utils/Timer$TimerThread;->instances:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v10, v7}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/badlogic/gdx/utils/Timer;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9, v5}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 284
    .end local v3  # "timeMillis":J
    .end local v5  # "ex":Ljava/lang/Throwable;
    .end local v7  # "i":I
    .end local v8  # "n":I
    :cond_64
    sget-object v3, Lcom/badlogic/gdx/utils/Timer;->thread:Lcom/badlogic/gdx/utils/Timer$TimerThread;

    if-ne v3, p0, :cond_7e

    iget-object v3, p0, Lcom/badlogic/gdx/utils/Timer$TimerThread;->files:Lcom/badlogic/gdx/Files;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;
    :try_end_6c
    .catchall {:try_start_3b .. :try_end_6c} :catchall_85

    if-eq v3, v4, :cond_6f

    goto :goto_7e

    .line 287
    :cond_6f
    cmp-long v3, v1, v5

    if-lez v3, :cond_7b

    :try_start_73
    sget-object v3, Lcom/badlogic/gdx/utils/Timer;->threadLock:Ljava/lang/Object;

    invoke-virtual {v3, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_78
    .catch Ljava/lang/InterruptedException; {:try_start_73 .. :try_end_78} :catch_79
    .catchall {:try_start_73 .. :try_end_78} :catchall_85

    goto :goto_7b

    .line 288
    :catch_79
    move-exception v3

    goto :goto_7c

    .line 289
    :cond_7b
    :goto_7b
    nop

    .line 290
    .end local v1  # "waitMillis":J
    :goto_7c
    :try_start_7c
    monitor-exit v0

    goto :goto_1

    .line 284
    .restart local v1  # "waitMillis":J
    :cond_7e
    :goto_7e
    monitor-exit v0

    goto :goto_81

    .line 270
    .end local v1  # "waitMillis":J
    :cond_80
    :goto_80
    monitor-exit v0
    :try_end_81
    .catchall {:try_start_7c .. :try_end_81} :catchall_85

    .line 292
    :goto_81
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Timer$TimerThread;->dispose()V

    .line 293
    return-void

    .line 290
    :catchall_85
    move-exception v1

    :try_start_86
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw v1
.end method
