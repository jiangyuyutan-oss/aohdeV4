.class public Lcom/badlogic/gdx/math/FloatCounter;
.super Ljava/lang/Object;
.source "FloatCounter.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# instance fields
.field public average:F

.field public count:I

.field public latest:F

.field public max:F

.field public final mean:Lcom/badlogic/gdx/math/WindowedMean;

.field public min:F

.field public total:F

.field public value:F


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "windowSize"  # I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    if-le p1, v0, :cond_c

    new-instance v0, Lcom/badlogic/gdx/math/WindowedMean;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/math/WindowedMean;-><init>(I)V

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iput-object v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    .line 47
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/FloatCounter;->reset()V

    .line 48
    return-void
.end method


# virtual methods
.method public put(F)V
    .registers 4
    .param p1, "value"  # F

    .line 53
    iput p1, p0, Lcom/badlogic/gdx/math/FloatCounter;->latest:F

    .line 54
    iget v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->total:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->total:F

    .line 55
    iget v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->count:I

    .line 56
    iget v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->total:F

    iget v1, p0, Lcom/badlogic/gdx/math/FloatCounter;->count:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->average:F

    .line 58
    iget-object v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    if-eqz v0, :cond_27

    .line 59
    iget-object v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/WindowedMean;->addValue(F)V

    .line 60
    iget-object v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/WindowedMean;->getMean()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->value:F

    goto :goto_2b

    .line 62
    :cond_27
    iget v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->latest:F

    iput v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->value:F

    .line 64
    :goto_2b
    iget-object v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/WindowedMean;->hasEnoughData()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 65
    :cond_37
    iget v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->value:F

    iget v1, p0, Lcom/badlogic/gdx/math/FloatCounter;->min:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_43

    iget v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->value:F

    iput v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->min:F

    .line 66
    :cond_43
    iget v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->value:F

    iget v1, p0, Lcom/badlogic/gdx/math/FloatCounter;->max:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4f

    iget v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->value:F

    iput v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->max:F

    .line 68
    :cond_4f
    return-void
.end method

.method public reset()V
    .registers 3

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->count:I

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->total:F

    .line 75
    const v1, 0x7f7fffff  # Float.MAX_VALUE

    iput v1, p0, Lcom/badlogic/gdx/math/FloatCounter;->min:F

    .line 76
    const v1, -0x800001

    iput v1, p0, Lcom/badlogic/gdx/math/FloatCounter;->max:F

    .line 77
    iput v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->average:F

    .line 78
    iput v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->latest:F

    .line 79
    iput v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->value:F

    .line 80
    iget-object v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/WindowedMean;->clear()V

    .line 81
    :cond_1f
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FloatCounter{count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/FloatCounter;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/FloatCounter;->total:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/FloatCounter;->min:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/FloatCounter;->max:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", average="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/FloatCounter;->average:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", latest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/FloatCounter;->latest:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/FloatCounter;->value:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
