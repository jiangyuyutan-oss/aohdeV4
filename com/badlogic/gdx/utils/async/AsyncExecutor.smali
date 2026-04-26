.class public Lcom/badlogic/gdx/utils/async/AsyncExecutor;
.super Ljava/lang/Object;
.source "AsyncExecutor.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field private final executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "maxConcurrent"  # I

    .line 37
    const-string v0, "AsynchExecutor-Thread"

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/async/AsyncExecutor;-><init>(ILjava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "maxConcurrent"  # I
    .param p2, "name"  # Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/badlogic/gdx/utils/async/AsyncExecutor$1;

    invoke-direct {v0, p0, p2}, Lcom/badlogic/gdx/utils/async/AsyncExecutor$1;-><init>(Lcom/badlogic/gdx/utils/async/AsyncExecutor;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/async/AsyncExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    .line 52
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 5

    .line 73
    iget-object v0, p0, Lcom/badlogic/gdx/utils/async/AsyncExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 75
    :try_start_5
    iget-object v0, p0, Lcom/badlogic/gdx/utils/async/AsyncExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v2, 0x7fffffffffffffffL

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_11} :catch_13

    .line 78
    nop

    .line 79
    return-void

    .line 76
    :catch_13
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Couldn\'t shutdown loading thread"

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public submit(Lcom/badlogic/gdx/utils/async/AsyncTask;)Lcom/badlogic/gdx/utils/async/AsyncResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/badlogic/gdx/utils/async/AsyncTask<",
            "TT;>;)",
            "Lcom/badlogic/gdx/utils/async/AsyncResult<",
            "TT;>;"
        }
    .end annotation

    .line 58
    .local p1, "task":Lcom/badlogic/gdx/utils/async/AsyncTask;, "Lcom/badlogic/gdx/utils/async/AsyncTask<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/async/AsyncExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_19

    .line 61
    new-instance v0, Lcom/badlogic/gdx/utils/async/AsyncResult;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/async/AsyncExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/badlogic/gdx/utils/async/AsyncExecutor$2;

    invoke-direct {v2, p0, p1}, Lcom/badlogic/gdx/utils/async/AsyncExecutor$2;-><init>(Lcom/badlogic/gdx/utils/async/AsyncExecutor;Lcom/badlogic/gdx/utils/async/AsyncTask;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/async/AsyncResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0

    .line 59
    :cond_19
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Cannot run tasks on an executor that has been shutdown (disposed)"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
