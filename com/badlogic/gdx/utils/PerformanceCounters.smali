.class public Lcom/badlogic/gdx/utils/PerformanceCounters;
.super Ljava/lang/Object;
.source "PerformanceCounters.java"


# static fields
.field private static final nano2seconds:F = 1.0E-9f


# instance fields
.field public final counters:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/PerformanceCounter;",
            ">;"
        }
    .end annotation
.end field

.field private lastTick:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounters;->lastTick:J

    .line 24
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounters;->counters:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)Lcom/badlogic/gdx/utils/PerformanceCounter;
    .registers 4
    .param p1, "name"  # Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/badlogic/gdx/utils/PerformanceCounter;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/PerformanceCounter;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, "result":Lcom/badlogic/gdx/utils/PerformanceCounter;
    iget-object v1, p0, Lcom/badlogic/gdx/utils/PerformanceCounters;->counters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 35
    return-object v0
.end method

.method public add(Ljava/lang/String;I)Lcom/badlogic/gdx/utils/PerformanceCounter;
    .registers 5
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "windowSize"  # I

    .line 27
    new-instance v0, Lcom/badlogic/gdx/utils/PerformanceCounter;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/utils/PerformanceCounter;-><init>(Ljava/lang/String;I)V

    .line 28
    .local v0, "result":Lcom/badlogic/gdx/utils/PerformanceCounter;
    iget-object v1, p0, Lcom/badlogic/gdx/utils/PerformanceCounters;->counters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 29
    return-object v0
.end method

.method public tick()V
    .registers 7

    .line 39
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v0

    .line 40
    .local v0, "t":J
    iget-wide v2, p0, Lcom/badlogic/gdx/utils/PerformanceCounters;->lastTick:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_18

    iget-wide v2, p0, Lcom/badlogic/gdx/utils/PerformanceCounters;->lastTick:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const v3, 0x3089705f  # 1.0E-9f

    mul-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/PerformanceCounters;->tick(F)V

    .line 41
    :cond_18
    iput-wide v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounters;->lastTick:J

    .line 42
    return-void
.end method

.method public tick(F)V
    .registers 4
    .param p1, "deltaTime"  # F

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/PerformanceCounters;->counters:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_15

    .line 46
    iget-object v1, p0, Lcom/badlogic/gdx/utils/PerformanceCounters;->counters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/PerformanceCounter;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/PerformanceCounter;->tick(F)V

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 47
    .end local v0  # "i":I
    :cond_15
    return-void
.end method

.method public toString(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 4
    .param p1, "sb"  # Lcom/badlogic/gdx/utils/StringBuilder;

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    .line 51
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Lcom/badlogic/gdx/utils/PerformanceCounters;->counters:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_20

    .line 52
    if-eqz v0, :cond_12

    const-string v1, "; "

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 53
    :cond_12
    iget-object v1, p0, Lcom/badlogic/gdx/utils/PerformanceCounters;->counters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/PerformanceCounter;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/PerformanceCounter;->toString(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 55
    .end local v0  # "i":I
    :cond_20
    return-object p1
.end method
