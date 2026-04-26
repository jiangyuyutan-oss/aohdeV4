.class public Lcom/badlogic/gdx/utils/PerformanceCounter;
.super Ljava/lang/Object;
.source "PerformanceCounter.java"


# static fields
.field private static final nano2seconds:F = 1.0E-9f


# instance fields
.field public current:F

.field private lastTick:J

.field public final load:Lcom/badlogic/gdx/math/FloatCounter;

.field public final name:Ljava/lang/String;

.field private startTime:J

.field public final time:Lcom/badlogic/gdx/math/FloatCounter;

.field public valid:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 45
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/PerformanceCounter;-><init>(Ljava/lang/String;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "windowSize"  # I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->startTime:J

    .line 30
    iput-wide v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->lastTick:J

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->current:F

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->valid:Z

    .line 49
    iput-object p1, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->name:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/badlogic/gdx/math/FloatCounter;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/math/FloatCounter;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->time:Lcom/badlogic/gdx/math/FloatCounter;

    .line 51
    new-instance v0, Lcom/badlogic/gdx/math/FloatCounter;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/FloatCounter;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->load:Lcom/badlogic/gdx/math/FloatCounter;

    .line 52
    return-void
.end method


# virtual methods
.method public reset()V
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->time:Lcom/badlogic/gdx/math/FloatCounter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/FloatCounter;->reset()V

    .line 98
    iget-object v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->load:Lcom/badlogic/gdx/math/FloatCounter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/FloatCounter;->reset()V

    .line 99
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->startTime:J

    .line 100
    iput-wide v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->lastTick:J

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->current:F

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->valid:Z

    .line 103
    return-void
.end method

.method public start()V
    .registers 3

    .line 81
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->startTime:J

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->valid:Z

    .line 83
    return-void
.end method

.method public stop()V
    .registers 9

    .line 88
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->startTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1e

    .line 89
    iget v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->current:F

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->startTime:J

    sub-long/2addr v4, v6

    long-to-float v1, v4

    const v4, 0x3089705f  # 1.0E-9f

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->current:F

    .line 90
    iput-wide v2, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->startTime:J

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->valid:Z

    .line 93
    :cond_1e
    return-void
.end method

.method public tick()V
    .registers 7

    .line 57
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v0

    .line 58
    .local v0, "t":J
    iget-wide v2, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->lastTick:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_18

    iget-wide v2, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->lastTick:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const v3, 0x3089705f  # 1.0E-9f

    mul-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/PerformanceCounter;->tick(F)V

    .line 59
    :cond_18
    iput-wide v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->lastTick:J

    .line 60
    return-void
.end method

.method public tick(F)V
    .registers 8
    .param p1, "delta"  # F

    .line 65
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->valid:Z

    if-nez v0, :cond_e

    .line 66
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "PerformanceCounter"

    const-string v2, "Invalid data, check if you called PerformanceCounter#stop()"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void

    .line 70
    :cond_e
    iget-object v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->time:Lcom/badlogic/gdx/math/FloatCounter;

    iget v1, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->current:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/FloatCounter;->put(F)V

    .line 72
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_1c

    move v1, v0

    goto :goto_1f

    :cond_1c
    iget v1, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->current:F

    div-float/2addr v1, p1

    .line 73
    .local v1, "currentLoad":F
    :goto_1f
    iget-object v2, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->load:Lcom/badlogic/gdx/math/FloatCounter;

    const/high16 v3, 0x3f800000  # 1.0f

    cmpl-float v4, p1, v3

    if-lez v4, :cond_29

    move v4, v1

    goto :goto_32

    :cond_29
    mul-float v4, p1, v1

    sub-float/2addr v3, p1

    iget-object v5, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->load:Lcom/badlogic/gdx/math/FloatCounter;

    iget v5, v5, Lcom/badlogic/gdx/math/FloatCounter;->latest:F

    mul-float/2addr v3, v5

    add-float/2addr v4, v3

    :goto_32
    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/FloatCounter;->put(F)V

    .line 75
    iput v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->current:F

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->valid:Z

    .line 77
    return-void
.end method

.method public toString(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 4
    .param p1, "sb"  # Lcom/badlogic/gdx/utils/StringBuilder;

    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    const-string v1, ": [time: "

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->time:Lcom/badlogic/gdx/math/FloatCounter;

    iget v1, v1, Lcom/badlogic/gdx/math/FloatCounter;->value:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(F)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    const-string v1, ", load: "

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->load:Lcom/badlogic/gdx/math/FloatCounter;

    iget v1, v1, Lcom/badlogic/gdx/math/FloatCounter;->value:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(F)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 115
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 108
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    .line 109
    .local v0, "sb":Lcom/badlogic/gdx/utils/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/PerformanceCounter;->toString(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
