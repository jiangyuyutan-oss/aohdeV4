.class public abstract Lcom/badlogic/gdx/utils/Timer$Task;
.super Ljava/lang/Object;
.source "Timer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Task"
.end annotation


# instance fields
.field final app:Lcom/badlogic/gdx/Application;

.field executeTimeMillis:J

.field intervalMillis:J

.field repeatCount:I

.field volatile timer:Lcom/badlogic/gdx/utils/Timer;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Timer$Task;->app:Lcom/badlogic/gdx/Application;

    .line 201
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Timer$Task;->app:Lcom/badlogic/gdx/Application;

    if-eqz v0, :cond_c

    .line 202
    return-void

    .line 201
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Gdx.app not available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cancel()V
    .registers 5

    .line 210
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Timer$Task;->timer:Lcom/badlogic/gdx/utils/Timer;

    .line 211
    .local v0, "timer":Lcom/badlogic/gdx/utils/Timer;
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_1c

    .line 212
    monitor-enter v0

    .line 213
    :try_start_8
    monitor-enter p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_19

    .line 214
    :try_start_9
    iput-wide v2, p0, Lcom/badlogic/gdx/utils/Timer$Task;->executeTimeMillis:J

    .line 215
    iput-object v1, p0, Lcom/badlogic/gdx/utils/Timer$Task;->timer:Lcom/badlogic/gdx/utils/Timer;

    .line 216
    iget-object v1, v0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 217
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_16

    .line 218
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_19

    goto :goto_22

    .line 217
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    .end local v0  # "timer":Lcom/badlogic/gdx/utils/Timer;
    :try_start_18
    throw v1

    .line 218
    .restart local v0  # "timer":Lcom/badlogic/gdx/utils/Timer;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_19

    throw v1

    .line 220
    :cond_1c
    monitor-enter p0

    .line 221
    :try_start_1d
    iput-wide v2, p0, Lcom/badlogic/gdx/utils/Timer$Task;->executeTimeMillis:J

    .line 222
    iput-object v1, p0, Lcom/badlogic/gdx/utils/Timer$Task;->timer:Lcom/badlogic/gdx/utils/Timer;

    .line 223
    monitor-exit p0

    .line 225
    :goto_22
    return-void

    .line 223
    :catchall_23
    move-exception v1

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_23

    throw v1
.end method

.method public declared-synchronized getExecuteTimeMillis()J
    .registers 3

    monitor-enter p0

    .line 243
    :try_start_1
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/Timer$Task;->executeTimeMillis:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    .line 243
    .end local p0  # "this":Lcom/badlogic/gdx/utils/Timer$Task;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isScheduled()Z
    .registers 2

    .line 238
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Timer$Task;->timer:Lcom/badlogic/gdx/utils/Timer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public abstract run()V
.end method
