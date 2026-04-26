.class public Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;
.super Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;
.source "RegularEmitter.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Json$Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;
    }
.end annotation


# instance fields
.field private continuous:Z

.field protected delay:F

.field protected delayTimer:F

.field public delayValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

.field protected duration:F

.field protected durationTimer:F

.field public durationValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

.field protected emission:I

.field protected emissionDelta:I

.field protected emissionDiff:I

.field private emissionMode:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

.field public emissionValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

.field protected life:I

.field private lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field protected lifeDiff:I

.field protected lifeOffset:I

.field protected lifeOffsetDiff:I

.field public lifeOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

.field public lifeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 53
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;-><init>()V

    .line 54
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    .line 55
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    .line 56
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    .line 57
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    .line 58
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    .line 60
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->setActive(Z)V

    .line 61
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->setActive(Z)V

    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->setActive(Z)V

    .line 63
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->continuous:Z

    .line 64
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;->Enabled:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionMode:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;)V
    .registers 2
    .param p1, "regularEmitter"  # Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;

    .line 68
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;-><init>()V

    .line 69
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->set(Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;)V

    .line 70
    return-void
.end method

.method private addParticles(I)V
    .registers 4
    .param p1, "count"  # I

    .line 178
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->maxParticleCount:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 179
    if-gtz p1, :cond_10

    return-void

    .line 180
    :cond_10
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->activateParticles(II)V

    .line 181
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    .line 182
    return-void
.end method


# virtual methods
.method public activateParticles(II)V
    .registers 12
    .param p1, "startIndex"  # I
    .param p2, "count"  # I

    .line 106
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->life:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeDiff:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->percent:F

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    .local v0, "currentTotaLife":I
    move v1, v0

    .line 107
    .local v1, "currentLife":I
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffset:I

    int-to-float v2, v2

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetDiff:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->percent:F

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 108
    .local v2, "offsetTime":I
    if-lez v2, :cond_29

    .line 109
    if-lt v2, v1, :cond_28

    add-int/lit8 v2, v1, -0x1

    .line 110
    :cond_28
    sub-int/2addr v1, v2

    .line 112
    :cond_29
    int-to-float v3, v1

    int-to-float v4, v0

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000  # 1.0f

    sub-float/2addr v4, v3

    .line 114
    .local v4, "lifePercent":F
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v3, p1

    .local v3, "i":I
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v5, p2

    add-int/2addr v5, v3

    .local v5, "c":I
    :goto_3a
    if-ge v3, v5, :cond_5c

    .line 115
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v7, v3, 0x0

    int-to-float v8, v1

    aput v8, v6, v7

    .line 116
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v7, v3, 0x1

    int-to-float v8, v0

    aput v8, v6, v7

    .line 117
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v7, v3, 0x2

    aput v4, v6, v7

    .line 114
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v3, v6

    goto :goto_3a

    .line 119
    .end local v3  # "i":I
    .end local v5  # "c":I
    :cond_5c
    return-void
.end method

.method public allocateChannels()V
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Life:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 75
    return-void
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
    .registers 2

    .line 258
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;)V

    return-object v0
.end method

.method public getDelay()Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    return-object v0
.end method

.method public getDuration()Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    return-object v0
.end method

.method public getEmission()Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;
    .registers 2

    .line 189
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    return-object v0
.end method

.method public getEmissionMode()Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;
    .registers 2

    .line 215
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionMode:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    return-object v0
.end method

.method public getLife()Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    return-object v0
.end method

.method public getLifeOffset()Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    return-object v0
.end method

.method public getPercentComplete()F
    .registers 3

    .line 231
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayTimer:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delay:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 232
    :cond_a
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationTimer:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->duration:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public init()V
    .registers 2

    .line 100
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->init()V

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionDelta:I

    .line 102
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->duration:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationTimer:F

    .line 103
    return-void
.end method

.method public isComplete()Z
    .registers 4

    .line 226
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayTimer:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delay:F

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_a

    return v1

    .line 227
    :cond_a
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationTimer:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->duration:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1b

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    if-nez v0, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method public isContinuous()Z
    .registers 2

    .line 205
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->continuous:Z

    return v0
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .registers 5
    .param p1, "json"  # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonData"  # Lcom/badlogic/gdx/utils/JsonValue;

    .line 274
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 275
    const-string v0, "continous"

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->continuous:Z

    .line 276
    const-string v0, "emission"

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    .line 277
    const-string v0, "delay"

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    .line 278
    const-string v0, "duration"

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    .line 279
    const-string v0, "life"

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    .line 280
    const-string v0, "lifeOffset"

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    .line 281
    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;)V
    .registers 4
    .param p1, "emitter"  # Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;

    .line 236
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->set(Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;)V

    .line 237
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;)V

    .line 238
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;)V

    .line 239
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;)V

    .line 240
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;)V

    .line 241
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;)V

    .line 242
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emission:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emission:I

    .line 243
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionDiff:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionDiff:I

    .line 244
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionDelta:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionDelta:I

    .line 245
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffset:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffset:I

    .line 246
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetDiff:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetDiff:I

    .line 247
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->life:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->life:I

    .line 248
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeDiff:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeDiff:I

    .line 249
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->duration:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->duration:F

    .line 250
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delay:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delay:F

    .line 251
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationTimer:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationTimer:F

    .line 252
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayTimer:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayTimer:F

    .line 253
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->continuous:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->continuous:Z

    .line 254
    return-void
.end method

.method public setContinuous(Z)V
    .registers 2
    .param p1, "continuous"  # Z

    .line 209
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->continuous:Z

    .line 210
    return-void
.end method

.method public setEmissionMode(Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;)V
    .registers 2
    .param p1, "emissionMode"  # Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    .line 221
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionMode:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    .line 222
    return-void
.end method

.method public start()V
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->active:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->newLowValue()F

    move-result v0

    goto :goto_f

    :cond_e
    move v0, v1

    :goto_f
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delay:F

    .line 80
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayTimer:F

    .line 81
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationTimer:F

    .line 83
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->newLowValue()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->duration:F

    .line 84
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationTimer:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->duration:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->percent:F

    .line 86
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newLowValue()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emission:I

    .line 87
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newHighValue()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionDiff:I

    .line 88
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->isRelative()Z

    move-result v0

    if-nez v0, :cond_45

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionDiff:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emission:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionDiff:I

    .line 90
    :cond_45
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newLowValue()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->life:I

    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newHighValue()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeDiff:I

    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->isRelative()Z

    move-result v0

    if-nez v0, :cond_66

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeDiff:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->life:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeDiff:I

    .line 94
    :cond_66
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->active:Z

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newLowValue()F

    move-result v0

    float-to-int v0, v0

    goto :goto_75

    :cond_74
    const/4 v0, 0x0

    :goto_75
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffset:I

    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newHighValue()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetDiff:I

    .line 96
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->isRelative()Z

    move-result v0

    if-nez v0, :cond_8f

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetDiff:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetDiff:I

    .line 97
    :cond_8f
    return-void
.end method

.method public update()V
    .registers 11

    .line 122
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->deltaTime:F

    const/high16 v1, 0x447a0000  # 1000.0f

    mul-float/2addr v0, v1

    .line 124
    .local v0, "deltaMillis":F
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayTimer:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delay:F

    cmpg-float v2, v2, v3

    const/4 v3, 0x0

    if-gez v2, :cond_17

    .line 125
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayTimer:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayTimer:F

    goto/16 :goto_a9

    .line 127
    :cond_17
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionMode:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;->Disabled:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    if-eq v2, v4, :cond_1f

    const/4 v2, 0x1

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    .line 129
    .local v2, "emit":Z
    :goto_20
    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationTimer:F

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->duration:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_35

    .line 130
    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationTimer:F

    add-float/2addr v4, v0

    iput v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationTimer:F

    .line 131
    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationTimer:F

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->duration:F

    div-float/2addr v4, v5

    iput v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->percent:F

    goto :goto_48

    .line 133
    :cond_35
    iget-boolean v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->continuous:Z

    if-eqz v4, :cond_47

    if-eqz v2, :cond_47

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionMode:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;->Enabled:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    if-ne v4, v5, :cond_47

    .line 134
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->start()V

    goto :goto_48

    .line 136
    :cond_47
    const/4 v2, 0x0

    .line 139
    :goto_48
    if-eqz v2, :cond_a9

    .line 141
    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionDelta:I

    int-to-float v4, v4

    add-float/2addr v4, v0

    float-to-int v4, v4

    iput v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionDelta:I

    .line 142
    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emission:I

    int-to-float v4, v4

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionDiff:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->percent:F

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 143
    .local v4, "emissionTime":F
    cmpl-float v5, v4, v3

    if-lez v5, :cond_93

    .line 144
    div-float v4, v1, v4

    .line 145
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionDelta:I

    int-to-float v1, v1

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_93

    .line 146
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionDelta:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    float-to-int v1, v1

    .line 147
    .local v1, "emitCount":I
    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->maxParticleCount:I

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    sub-int/2addr v5, v6

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 148
    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionDelta:I

    int-to-float v5, v5

    int-to-float v6, v1

    mul-float/2addr v6, v4

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionDelta:I

    .line 149
    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionDelta:I

    int-to-float v5, v5

    rem-float/2addr v5, v4

    float-to-int v5, v5

    iput v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionDelta:I

    .line 150
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->addParticles(I)V

    .line 153
    .end local v1  # "emitCount":I
    :cond_93
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->minParticleCount:I

    if-ge v1, v5, :cond_a9

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->minParticleCount:I

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    sub-int/2addr v1, v5

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->addParticles(I)V

    .line 158
    .end local v2  # "emit":Z
    .end local v4  # "emissionTime":F
    :cond_a9
    :goto_a9
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    .line 159
    .local v1, "activeParticles":I
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_b1
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    if-ge v2, v5, :cond_f4

    .line 160
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v6, v4, 0x0

    aget v7, v5, v6

    sub-float/2addr v7, v0

    aput v7, v5, v6

    cmpg-float v5, v7, v3

    if-gtz v5, :cond_d0

    .line 161
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->removeElement(I)V

    .line 162
    goto :goto_b1

    .line 164
    :cond_d0
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v6, v4, 0x2

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v8, v4, 0x0

    aget v7, v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v8, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v9, v4, 0x1

    aget v8, v8, v9

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000  # 1.0f

    sub-float/2addr v8, v7

    aput v8, v5, v6

    .line 168
    add-int/lit8 v2, v2, 0x1

    .line 169
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v4, v5

    goto :goto_b1

    .line 172
    .end local v2  # "i":I
    .end local v4  # "k":I
    :cond_f4
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    if-ge v2, v1, :cond_10f

    .line 173
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    sub-int v4, v1, v4

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->killParticles(II)V

    .line 175
    :cond_10f
    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .registers 4
    .param p1, "json"  # Lcom/badlogic/gdx/utils/Json;

    .line 263
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->write(Lcom/badlogic/gdx/utils/Json;)V

    .line 264
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->continuous:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "continous"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 265
    const-string v0, "emission"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 266
    const-string v0, "delay"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 267
    const-string v0, "duration"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 268
    const-string v0, "life"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 269
    const-string v0, "lifeOffset"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 270
    return-void
.end method
