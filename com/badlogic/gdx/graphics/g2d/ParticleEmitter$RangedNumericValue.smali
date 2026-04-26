.class public Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;
.super Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;
.source "ParticleEmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RangedNumericValue"
.end annotation


# instance fields
.field private lowMax:F

.field private lowMin:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1311
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;-><init>()V

    return-void
.end method


# virtual methods
.method public getLowMax()F
    .registers 2

    .line 1337
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMax:F

    return v0
.end method

.method public getLowMin()F
    .registers 2

    .line 1329
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMin:F

    return v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;)V
    .registers 3
    .param p1, "value"  # Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    .line 1370
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;)V

    .line 1371
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMax:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMax:F

    .line 1372
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMin:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMin:F

    .line 1373
    return-void
.end method

.method public load(Ljava/io/BufferedReader;)V
    .registers 3
    .param p1, "reader"  # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1363
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->load(Ljava/io/BufferedReader;)V

    .line 1364
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->active:Z

    if-nez v0, :cond_8

    return-void

    .line 1365
    :cond_8
    const-string v0, "lowMin"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readFloat(Ljava/io/BufferedReader;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMin:F

    .line 1366
    const-string v0, "lowMax"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readFloat(Ljava/io/BufferedReader;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMax:F

    .line 1367
    return-void
.end method

.method public newLowValue()F
    .registers 4

    .line 1315
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMin:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMax:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMin:F

    sub-float/2addr v1, v2

    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public save(Ljava/io/Writer;)V
    .registers 5
    .param p1, "output"  # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1356
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->save(Ljava/io/Writer;)V

    .line 1357
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->active:Z

    if-nez v0, :cond_8

    return-void

    .line 1358
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lowMin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lowMax: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMax:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1360
    return-void
.end method

.method public scale(F)V
    .registers 3
    .param p1, "scale"  # F

    .line 1346
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMin:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMin:F

    .line 1347
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMax:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMax:F

    .line 1348
    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;)V
    .registers 3
    .param p1, "value"  # Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    .line 1351
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMin:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMin:F

    .line 1352
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMax:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMax:F

    .line 1353
    return-void
.end method

.method public setLow(F)V
    .registers 2
    .param p1, "value"  # F

    .line 1319
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMin:F

    .line 1320
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMax:F

    .line 1321
    return-void
.end method

.method public setLow(FF)V
    .registers 3
    .param p1, "min"  # F
    .param p2, "max"  # F

    .line 1324
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMin:F

    .line 1325
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMax:F

    .line 1326
    return-void
.end method

.method public setLowMax(F)V
    .registers 2
    .param p1, "lowMax"  # F

    .line 1341
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMax:F

    .line 1342
    return-void
.end method

.method public setLowMin(F)V
    .registers 2
    .param p1, "lowMin"  # F

    .line 1333
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMin:F

    .line 1334
    return-void
.end method
