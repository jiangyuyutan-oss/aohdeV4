.class public Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;
.super Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
.source "SpawnInfluencer.java"


# instance fields
.field positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field public spawnShapeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;-><init>()V

    .line 37
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PointSpawnShapeValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/PointSpawnShapeValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->spawnShapeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;)V
    .registers 3
    .param p1, "source"  # Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;

    .line 44
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;-><init>()V

    .line 45
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->spawnShapeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->spawnShapeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;)V
    .registers 2
    .param p1, "spawnShapeValue"  # Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;

    .line 40
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->spawnShapeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;

    .line 42
    return-void
.end method


# virtual methods
.method public activateParticles(II)V
    .registers 8
    .param p1, "startIndex"  # I
    .param p2, "count"  # I

    .line 66
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v0, p1

    .local v0, "i":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v1, p2

    add-int/2addr v1, v0

    .local v1, "c":I
    :goto_b
    if-ge v0, v1, :cond_4d

    .line 67
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->spawnShapeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->percent:F

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->spawn(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    .line 68
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 69
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v3, v0, 0x0

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v4, v2, v3

    .line 70
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v3, v0, 0x1

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v4, v2, v3

    .line 71
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v3, v0, 0x2

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v4, v2, v3

    .line 66
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v0, v2

    goto :goto_b

    .line 73
    .end local v0  # "i":I
    .end local v1  # "c":I
    :cond_4d
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v0, p1

    .restart local v0  # "i":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v1, p2

    add-int/2addr v1, v0

    .restart local v1  # "c":I
    :goto_58
    if-ge v0, v1, :cond_9a

    .line 74
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->TMP_Q:Lcom/badlogic/gdx/math/Quaternion;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->getRotation(Lcom/badlogic/gdx/math/Quaternion;Z)Lcom/badlogic/gdx/math/Quaternion;

    .line 75
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v3, v0, 0x0

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->TMP_Q:Lcom/badlogic/gdx/math/Quaternion;

    iget v4, v4, Lcom/badlogic/gdx/math/Quaternion;->x:F

    aput v4, v2, v3

    .line 76
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v3, v0, 0x1

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->TMP_Q:Lcom/badlogic/gdx/math/Quaternion;

    iget v4, v4, Lcom/badlogic/gdx/math/Quaternion;->y:F

    aput v4, v2, v3

    .line 77
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v3, v0, 0x2

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->TMP_Q:Lcom/badlogic/gdx/math/Quaternion;

    iget v4, v4, Lcom/badlogic/gdx/math/Quaternion;->z:F

    aput v4, v2, v3

    .line 78
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v3, v0, 0x3

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->TMP_Q:Lcom/badlogic/gdx/math/Quaternion;

    iget v4, v4, Lcom/badlogic/gdx/math/Quaternion;->w:F

    aput v4, v2, v3

    .line 73
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v0, v2

    goto :goto_58

    .line 80
    .end local v0  # "i":I
    .end local v1  # "c":I
    :cond_9a
    return-void
.end method

.method public allocateChannels()V
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Position:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 56
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Rotation3D:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 57
    return-void
.end method

.method public bridge synthetic copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
    .registers 2

    .line 30
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;
    .registers 2

    .line 84
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;)V

    return-object v0
.end method

.method public init()V
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->spawnShapeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->init()V

    .line 51
    return-void
.end method

.method public load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .registers 4
    .param p1, "manager"  # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "data"  # Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .line 104
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->spawnShapeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V

    .line 105
    return-void
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .registers 5
    .param p1, "json"  # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonData"  # Lcom/badlogic/gdx/utils/JsonValue;

    .line 94
    const-string v0, "spawnShape"

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->spawnShapeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;

    .line 95
    return-void
.end method

.method public save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .registers 4
    .param p1, "manager"  # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "data"  # Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->spawnShapeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V

    .line 100
    return-void
.end method

.method public start()V
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->spawnShapeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->start()V

    .line 62
    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .registers 5
    .param p1, "json"  # Lcom/badlogic/gdx/utils/Json;

    .line 89
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->spawnShapeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;

    const-string v2, "spawnShape"

    invoke-virtual {p1, v2, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 90
    return-void
.end method
