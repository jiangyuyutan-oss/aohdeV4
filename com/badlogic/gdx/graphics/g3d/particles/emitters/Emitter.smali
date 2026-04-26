.class public abstract Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;
.super Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
.source "Emitter.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Json$Serializable;


# instance fields
.field public maxParticleCount:I

.field public minParticleCount:I

.field public percent:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;-><init>()V

    .line 30
    const/4 v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->maxParticleCount:I

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;)V
    .registers 3
    .param p1, "regularEmitter"  # Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    .line 35
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;-><init>()V

    .line 30
    const/4 v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->maxParticleCount:I

    .line 36
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->set(Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;)V

    .line 37
    return-void
.end method


# virtual methods
.method public end()V
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    const/4 v1, 0x0

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    .line 50
    return-void
.end method

.method public getMaxParticleCount()I
    .registers 2

    .line 65
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->maxParticleCount:I

    return v0
.end method

.method public getMinParticleCount()I
    .registers 2

    .line 57
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->minParticleCount:I

    return v0
.end method

.method public init()V
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    const/4 v1, 0x0

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    .line 45
    return-void
.end method

.method public isComplete()Z
    .registers 3

    .line 53
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->percent:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .registers 5
    .param p1, "json"  # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonData"  # Lcom/badlogic/gdx/utils/JsonValue;

    .line 90
    const-string v0, "minParticleCount"

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->minParticleCount:I

    .line 91
    const-string v0, "maxParticleCount"

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->maxParticleCount:I

    .line 92
    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;)V
    .registers 3
    .param p1, "emitter"  # Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    .line 78
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->minParticleCount:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->minParticleCount:I

    .line 79
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->maxParticleCount:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->maxParticleCount:I

    .line 80
    return-void
.end method

.method public setMaxParticleCount(I)V
    .registers 2
    .param p1, "maxParticleCount"  # I

    .line 69
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->maxParticleCount:I

    .line 70
    return-void
.end method

.method public setMinParticleCount(I)V
    .registers 2
    .param p1, "minParticleCount"  # I

    .line 61
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->minParticleCount:I

    .line 62
    return-void
.end method

.method public setParticleCount(II)V
    .registers 3
    .param p1, "aMin"  # I
    .param p2, "aMax"  # I

    .line 73
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->setMinParticleCount(I)V

    .line 74
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->setMaxParticleCount(I)V

    .line 75
    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .registers 4
    .param p1, "json"  # Lcom/badlogic/gdx/utils/Json;

    .line 84
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->minParticleCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "minParticleCount"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->maxParticleCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "maxParticleCount"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    return-void
.end method
