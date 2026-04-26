.class public Lcom/badlogic/gdx/utils/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/Timer$TimerThread;,
        Lcom/badlogic/gdx/utils/Timer$Task;
    }
.end annotation


# static fields
.field static thread:Lcom/badlogic/gdx/utils/Timer$TimerThread;

.field static final threadLock:Ljava/lang/Object;


# instance fields
.field final tasks:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/Timer$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/Timer;->threadLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    .line 57
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Timer;->start()V

    .line 58
    return-void
.end method

.method public static instance()Lcom/badlogic/gdx/utils/Timer;
    .registers 3

    .line 37
    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 38
    :try_start_3
    invoke-static {}, Lcom/badlogic/gdx/utils/Timer;->thread()Lcom/badlogic/gdx/utils/Timer$TimerThread;

    move-result-object v1

    .line 39
    .local v1, "thread":Lcom/badlogic/gdx/utils/Timer$TimerThread;
    iget-object v2, v1, Lcom/badlogic/gdx/utils/Timer$TimerThread;->instance:Lcom/badlogic/gdx/utils/Timer;

    if-nez v2, :cond_12

    new-instance v2, Lcom/badlogic/gdx/utils/Timer;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Timer;-><init>()V

    iput-object v2, v1, Lcom/badlogic/gdx/utils/Timer$TimerThread;->instance:Lcom/badlogic/gdx/utils/Timer;

    .line 40
    :cond_12
    iget-object v2, v1, Lcom/badlogic/gdx/utils/Timer$TimerThread;->instance:Lcom/badlogic/gdx/utils/Timer;

    monitor-exit v0

    return-object v2

    .line 41
    .end local v1  # "thread":Lcom/badlogic/gdx/utils/Timer$TimerThread;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public static post(Lcom/badlogic/gdx/utils/Timer$Task;)Lcom/badlogic/gdx/utils/Timer$Task;
    .registers 2
    .param p0, "task"  # Lcom/badlogic/gdx/utils/Timer$Task;

    .line 170
    invoke-static {}, Lcom/badlogic/gdx/utils/Timer;->instance()Lcom/badlogic/gdx/utils/Timer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Timer;->postTask(Lcom/badlogic/gdx/utils/Timer$Task;)Lcom/badlogic/gdx/utils/Timer$Task;

    move-result-object v0

    return-object v0
.end method

.method public static schedule(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;
    .registers 3
    .param p0, "task"  # Lcom/badlogic/gdx/utils/Timer$Task;
    .param p1, "delaySeconds"  # F

    .line 176
    invoke-static {}, Lcom/badlogic/gdx/utils/Timer;->instance()Lcom/badlogic/gdx/utils/Timer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;

    move-result-object v0

    return-object v0
.end method

.method public static schedule(Lcom/badlogic/gdx/utils/Timer$Task;FF)Lcom/badlogic/gdx/utils/Timer$Task;
    .registers 4
    .param p0, "task"  # Lcom/badlogic/gdx/utils/Timer$Task;
    .param p1, "delaySeconds"  # F
    .param p2, "intervalSeconds"  # F

    .line 182
    invoke-static {}, Lcom/badlogic/gdx/utils/Timer;->instance()Lcom/badlogic/gdx/utils/Timer;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FF)Lcom/badlogic/gdx/utils/Timer$Task;

    move-result-object v0

    return-object v0
.end method

.method public static schedule(Lcom/badlogic/gdx/utils/Timer$Task;FFI)Lcom/badlogic/gdx/utils/Timer$Task;
    .registers 5
    .param p0, "task"  # Lcom/badlogic/gdx/utils/Timer$Task;
    .param p1, "delaySeconds"  # F
    .param p2, "intervalSeconds"  # F
    .param p3, "repeatCount"  # I

    .line 188
    invoke-static {}, Lcom/badlogic/gdx/utils/Timer;->instance()Lcom/badlogic/gdx/utils/Timer;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FFI)Lcom/badlogic/gdx/utils/Timer$Task;

    move-result-object v0

    return-object v0
.end method

.method private static thread()Lcom/badlogic/gdx/utils/Timer$TimerThread;
    .registers 3

    .line 45
    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_3
    sget-object v1, Lcom/badlogic/gdx/utils/Timer;->thread:Lcom/badlogic/gdx/utils/Timer$TimerThread;

    if-eqz v1, :cond_f

    sget-object v1, Lcom/badlogic/gdx/utils/Timer;->thread:Lcom/badlogic/gdx/utils/Timer$TimerThread;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Timer$TimerThread;->files:Lcom/badlogic/gdx/Files;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    if-eq v1, v2, :cond_1f

    .line 47
    :cond_f
    sget-object v1, Lcom/badlogic/gdx/utils/Timer;->thread:Lcom/badlogic/gdx/utils/Timer$TimerThread;

    if-eqz v1, :cond_18

    sget-object v1, Lcom/badlogic/gdx/utils/Timer;->thread:Lcom/badlogic/gdx/utils/Timer$TimerThread;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Timer$TimerThread;->dispose()V

    .line 48
    :cond_18
    new-instance v1, Lcom/badlogic/gdx/utils/Timer$TimerThread;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Timer$TimerThread;-><init>()V

    sput-object v1, Lcom/badlogic/gdx/utils/Timer;->thread:Lcom/badlogic/gdx/utils/Timer$TimerThread;

    .line 50
    :cond_1f
    sget-object v1, Lcom/badlogic/gdx/utils/Timer;->thread:Lcom/badlogic/gdx/utils/Timer$TimerThread;

    monitor-exit v0

    return-object v1

    .line 51
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 6

    monitor-enter p0

    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_6
    if-ge v0, v1, :cond_21

    .line 118
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/Timer$Task;

    .line 119
    .local v2, "task":Lcom/badlogic/gdx/utils/Timer$Task;
    monitor-enter v2
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_28

    .line 120
    const-wide/16 v3, 0x0

    :try_start_13
    iput-wide v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->executeTimeMillis:J

    .line 121
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->timer:Lcom/badlogic/gdx/utils/Timer;

    .line 122
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1c

    .line 117
    .end local v2  # "task":Lcom/badlogic/gdx/utils/Timer$Task;
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 122
    .restart local v2  # "task":Lcom/badlogic/gdx/utils/Timer$Task;
    :catchall_1c
    move-exception v3

    :goto_1d
    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1f

    :try_start_1e
    throw v3

    .end local p0  # "this":Lcom/badlogic/gdx/utils/Timer;
    :catchall_1f
    move-exception v3

    goto :goto_1d

    .line 124
    .end local v0  # "i":I
    .end local v1  # "n":I
    .end local v2  # "task":Lcom/badlogic/gdx/utils/Timer$Task;
    :cond_21
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_28

    .line 125
    monitor-exit p0

    return-void

    .line 116
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized delay(J)V
    .registers 8
    .param p1, "delayMillis"  # J

    monitor-enter p0

    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_6
    if-ge v0, v1, :cond_1f

    .line 160
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/Timer$Task;

    .line 161
    .local v2, "task":Lcom/badlogic/gdx/utils/Timer$Task;
    monitor-enter v2
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_21

    .line 162
    :try_start_11
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->executeTimeMillis:J

    add-long/2addr v3, p1

    iput-wide v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->executeTimeMillis:J

    .line 163
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1a

    .line 159
    .end local v2  # "task":Lcom/badlogic/gdx/utils/Timer$Task;
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 163
    .restart local v2  # "task":Lcom/badlogic/gdx/utils/Timer$Task;
    :catchall_1a
    move-exception v3

    :goto_1b
    :try_start_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1d

    :try_start_1c
    throw v3
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_21

    .end local p0  # "this":Lcom/badlogic/gdx/utils/Timer;
    :catchall_1d
    move-exception v3

    goto :goto_1b

    .line 165
    .end local v0  # "i":I
    .end local v1  # "n":I
    .end local v2  # "task":Lcom/badlogic/gdx/utils/Timer$Task;
    :cond_1f
    monitor-exit p0

    return-void

    .line 158
    .end local p1  # "delayMillis":J
    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isEmpty()Z
    .registers 2

    monitor-enter p0

    .line 130
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_c

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    monitor-exit p0

    return v0

    .line 130
    .end local p0  # "this":Lcom/badlogic/gdx/utils/Timer;
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public postTask(Lcom/badlogic/gdx/utils/Timer$Task;)Lcom/badlogic/gdx/utils/Timer$Task;
    .registers 4
    .param p1, "task"  # Lcom/badlogic/gdx/utils/Timer$Task;

    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FFI)Lcom/badlogic/gdx/utils/Timer$Task;

    move-result-object v0

    return-object v0
.end method

.method public scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;
    .registers 5
    .param p1, "task"  # Lcom/badlogic/gdx/utils/Timer$Task;
    .param p2, "delaySeconds"  # F

    .line 67
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FFI)Lcom/badlogic/gdx/utils/Timer$Task;

    move-result-object v0

    return-object v0
.end method

.method public scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FF)Lcom/badlogic/gdx/utils/Timer$Task;
    .registers 5
    .param p1, "task"  # Lcom/badlogic/gdx/utils/Timer$Task;
    .param p2, "delaySeconds"  # F
    .param p3, "intervalSeconds"  # F

    .line 72
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FFI)Lcom/badlogic/gdx/utils/Timer$Task;

    move-result-object v0

    return-object v0
.end method

.method public scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FFI)Lcom/badlogic/gdx/utils/Timer$Task;
    .registers 15
    .param p1, "task"  # Lcom/badlogic/gdx/utils/Timer$Task;
    .param p2, "delaySeconds"  # F
    .param p3, "intervalSeconds"  # F
    .param p4, "repeatCount"  # I

    .line 78
    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_4e

    .line 80
    :try_start_4
    monitor-enter p1
    :try_end_5
    .catchall {:try_start_4 .. :try_end_5} :catchall_4b

    .line 81
    :try_start_5
    iget-object v1, p1, Lcom/badlogic/gdx/utils/Timer$Task;->timer:Lcom/badlogic/gdx/utils/Timer;

    if-nez v1, :cond_40

    .line 82
    iput-object p0, p1, Lcom/badlogic/gdx/utils/Timer$Task;->timer:Lcom/badlogic/gdx/utils/Timer;

    .line 83
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    .line 84
    .local v1, "timeMillis":J
    const/high16 v3, 0x447a0000  # 1000.0f

    mul-float v4, p2, v3

    float-to-long v4, v4

    add-long/2addr v4, v1

    .line 85
    .local v4, "executeTimeMillis":J
    sget-object v6, Lcom/badlogic/gdx/utils/Timer;->thread:Lcom/badlogic/gdx/utils/Timer$TimerThread;

    iget-wide v6, v6, Lcom/badlogic/gdx/utils/Timer$TimerThread;->pauseTimeMillis:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2a

    sget-object v6, Lcom/badlogic/gdx/utils/Timer;->thread:Lcom/badlogic/gdx/utils/Timer$TimerThread;

    iget-wide v6, v6, Lcom/badlogic/gdx/utils/Timer$TimerThread;->pauseTimeMillis:J

    sub-long v6, v1, v6

    sub-long/2addr v4, v6

    .line 86
    :cond_2a
    iput-wide v4, p1, Lcom/badlogic/gdx/utils/Timer$Task;->executeTimeMillis:J

    .line 87
    mul-float/2addr v3, p3

    float-to-long v6, v3

    iput-wide v6, p1, Lcom/badlogic/gdx/utils/Timer$Task;->intervalMillis:J

    .line 88
    iput p4, p1, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    .line 89
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 90
    .end local v1  # "timeMillis":J
    .end local v4  # "executeTimeMillis":J
    monitor-exit p1
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_48

    .line 91
    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_4b

    .line 92
    :try_start_39
    sget-object v1, Lcom/badlogic/gdx/utils/Timer;->threadLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 93
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_4e

    .line 94
    return-object p1

    .line 81
    :cond_40
    :try_start_40
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The same task may not be scheduled twice."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1  # "task":Lcom/badlogic/gdx/utils/Timer$Task;
    .end local p2  # "delaySeconds":F
    .end local p3  # "intervalSeconds":F
    .end local p4  # "repeatCount":I
    throw v1

    .line 90
    .restart local p1  # "task":Lcom/badlogic/gdx/utils/Timer$Task;
    .restart local p2  # "delaySeconds":F
    .restart local p3  # "intervalSeconds":F
    .restart local p4  # "repeatCount":I
    :catchall_48
    move-exception v1

    monitor-exit p1
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_48

    .end local p1  # "task":Lcom/badlogic/gdx/utils/Timer$Task;
    .end local p2  # "delaySeconds":F
    .end local p3  # "intervalSeconds":F
    .end local p4  # "repeatCount":I
    :try_start_4a
    throw v1

    .line 91
    .restart local p1  # "task":Lcom/badlogic/gdx/utils/Timer$Task;
    .restart local p2  # "delaySeconds":F
    .restart local p3  # "intervalSeconds":F
    .restart local p4  # "repeatCount":I
    :catchall_4b
    move-exception v1

    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4b

    .end local p1  # "task":Lcom/badlogic/gdx/utils/Timer$Task;
    .end local p2  # "delaySeconds":F
    .end local p3  # "intervalSeconds":F
    .end local p4  # "repeatCount":I
    :try_start_4d
    throw v1

    .line 93
    .restart local p1  # "task":Lcom/badlogic/gdx/utils/Timer$Task;
    .restart local p2  # "delaySeconds":F
    .restart local p3  # "intervalSeconds":F
    .restart local p4  # "repeatCount":I
    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_4e

    throw v1
.end method

.method public start()V
    .registers 5

    .line 106
    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_3
    invoke-static {}, Lcom/badlogic/gdx/utils/Timer;->thread()Lcom/badlogic/gdx/utils/Timer$TimerThread;

    move-result-object v1

    .line 108
    .local v1, "thread":Lcom/badlogic/gdx/utils/Timer$TimerThread;
    iget-object v2, v1, Lcom/badlogic/gdx/utils/Timer$TimerThread;->instances:Lcom/badlogic/gdx/utils/Array;

    .line 109
    .local v2, "instances":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/utils/Timer;>;"
    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v3

    if-eqz v3, :cond_12

    monitor-exit v0

    return-void

    .line 110
    :cond_12
    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 111
    sget-object v3, Lcom/badlogic/gdx/utils/Timer;->threadLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 112
    .end local v1  # "thread":Lcom/badlogic/gdx/utils/Timer$TimerThread;
    .end local v2  # "instances":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/utils/Timer;>;"
    monitor-exit v0

    .line 113
    return-void

    .line 112
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public stop()V
    .registers 4

    .line 99
    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_3
    invoke-static {}, Lcom/badlogic/gdx/utils/Timer;->thread()Lcom/badlogic/gdx/utils/Timer$TimerThread;

    move-result-object v1

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Timer$TimerThread;->instances:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 101
    monitor-exit v0

    .line 102
    return-void

    .line 101
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method declared-synchronized update(JJ)J
    .registers 10
    .param p1, "timeMillis"  # J
    .param p3, "waitMillis"  # J

    monitor-enter p0

    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_6
    if-ge v0, v1, :cond_56

    .line 135
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/Timer$Task;

    .line 136
    .local v2, "task":Lcom/badlogic/gdx/utils/Timer$Task;
    monitor-enter v2
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_58

    .line 137
    :try_start_11
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->executeTimeMillis:J

    cmp-long v3, v3, p1

    if-lez v3, :cond_21

    .line 138
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->executeTimeMillis:J

    sub-long/2addr v3, p1

    invoke-static {p3, p4, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    move-wide p3, v3

    .line 139
    monitor-exit v2

    goto :goto_4e

    .line 141
    :cond_21
    iget v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    if-nez v3, :cond_32

    .line 142
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->timer:Lcom/badlogic/gdx/utils/Timer;

    .line 143
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 144
    add-int/lit8 v0, v0, -0x1

    .line 145
    add-int/lit8 v1, v1, -0x1

    goto :goto_48

    .line 147
    :cond_32
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->intervalMillis:J

    add-long/2addr v3, p1

    iput-wide v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->executeTimeMillis:J

    .line 148
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->intervalMillis:J

    invoke-static {p3, p4, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    move-wide p3, v3

    .line 149
    iget v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    if-lez v3, :cond_48

    iget v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    .line 151
    :cond_48
    :goto_48
    iget-object v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v3, v2}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    .line 152
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_11 .. :try_end_4e} :catchall_51

    .line 134
    .end local v2  # "task":Lcom/badlogic/gdx/utils/Timer$Task;
    :goto_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 152
    .restart local v2  # "task":Lcom/badlogic/gdx/utils/Timer$Task;
    :catchall_51
    move-exception v3

    :goto_52
    :try_start_52
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_54

    :try_start_53
    throw v3
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_58

    .end local p0  # "this":Lcom/badlogic/gdx/utils/Timer;
    :catchall_54
    move-exception v3

    goto :goto_52

    .line 154
    .end local v0  # "i":I
    .end local v1  # "n":I
    .end local v2  # "task":Lcom/badlogic/gdx/utils/Timer$Task;
    :cond_56
    monitor-exit p0

    return-wide p3

    .line 133
    .end local p1  # "timeMillis":J
    .end local p3  # "waitMillis":J
    :catchall_58
    move-exception p1

    monitor-exit p0

    throw p1
.end method
