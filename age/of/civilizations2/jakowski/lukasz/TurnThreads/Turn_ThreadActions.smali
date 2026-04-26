.class public Lage/of/civilizations2/jakowski/lukasz/TurnThreads/Turn_ThreadActions;
.super Ljava/lang/Thread;
.source "Turn_ThreadActions.java"


# instance fields
.field private processTurn:Z

.field private running:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TurnThreads/Turn_ThreadActions;->running:Z

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TurnThreads/Turn_ThreadActions;->processTurn:Z

    return-void
.end method

.method private performTurnLogic()V
    .registers 3

    .line 39
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Actions;->doActions()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_9
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    .line 43
    :goto_4
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TurnThreads/Turn_ThreadActions;->processTurn:Z

    .line 44
    goto :goto_e

    .line 43
    :catchall_7
    move-exception v1

    goto :goto_f

    .line 40
    :catch_9
    move-exception v1

    .line 41
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_a
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_7

    .end local v1  # "ex":Ljava/lang/Exception;
    goto :goto_4

    .line 45
    :goto_e
    return-void

    .line 43
    :goto_f
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TurnThreads/Turn_ThreadActions;->processTurn:Z

    .line 44
    goto :goto_13

    :goto_12
    throw v1

    :goto_13
    goto :goto_12
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 13
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_35

    .line 15
    :try_start_a
    monitor-enter p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_b} :catch_30

    .line 17
    :goto_b
    :try_start_b
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TurnThreads/Turn_ThreadActions;->processTurn:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TurnThreads/Turn_ThreadActions;->running:Z

    if-eqz v0, :cond_17

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_16} :catch_1a
    .catchall {:try_start_b .. :try_end_16} :catchall_18

    goto :goto_b

    .line 22
    :cond_17
    goto :goto_22

    .line 23
    :catchall_18
    move-exception v0

    goto :goto_2e

    .line 20
    :catch_1a
    move-exception v0

    .line 21
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 23
    .end local v0  # "e":Ljava/lang/InterruptedException;
    :goto_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_18

    .line 25
    :try_start_23
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TurnThreads/Turn_ThreadActions;->running:Z

    if-eqz v0, :cond_34

    .line 26
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/TurnThreads/Turn_ThreadActions;->performTurnLogic()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TurnThreads/Turn_ThreadActions;->processTurn:Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2d} :catch_30

    goto :goto_34

    .line 23
    :goto_2e
    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_18

    :try_start_2f
    throw v0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_30} :catch_30

    .line 29
    :catch_30
    move-exception v0

    .line 30
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 31
    .end local v0  # "ex":Ljava/lang/Exception;
    :cond_34
    :goto_34
    goto :goto_0

    .line 33
    :cond_35
    return-void
.end method

.method public stopWorker()V
    .registers 2

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TurnThreads/Turn_ThreadActions;->running:Z

    .line 54
    monitor-enter p0

    .line 55
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 56
    monitor-exit p0

    .line 57
    return-void

    .line 56
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized triggerTurn()V
    .registers 2

    monitor-enter p0

    .line 48
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TurnThreads/Turn_ThreadActions;->processTurn:Z

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 50
    monitor-exit p0

    return-void

    .line 47
    .end local p0  # "this":Lage/of/civilizations2/jakowski/lukasz/TurnThreads/Turn_ThreadActions;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
