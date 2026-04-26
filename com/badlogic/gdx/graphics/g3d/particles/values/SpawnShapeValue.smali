.class public abstract Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;
.super Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;
.source "SpawnShapeValue.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$Configurable;
.implements Lcom/badlogic/gdx/utils/Json$Serializable;


# instance fields
.field public xOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

.field public yOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

.field public zOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;-><init>()V

    .line 32
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->xOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    .line 33
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->yOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    .line 34
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->zOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;)V
    .registers 2
    .param p1, "spawnShapeValue"  # Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;

    .line 38
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public abstract copy()Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;
.end method

.method public init()V
    .registers 1

    .line 52
    return-void
.end method

.method public load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .registers 3
    .param p1, "manager"  # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "data"  # Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .line 90
    return-void
.end method

.method public load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V
    .registers 5
    .param p1, "value"  # Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;

    .line 59
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V

    .line 60
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;

    .line 61
    .local v0, "shape":Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->xOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->xOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;)V

    .line 62
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->yOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->yOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;)V

    .line 63
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->zOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->zOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;)V

    .line 64
    return-void
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .registers 5
    .param p1, "json"  # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonData"  # Lcom/badlogic/gdx/utils/JsonValue;

    .line 78
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 79
    const-string v0, "xOffsetValue"

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->xOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    .line 80
    const-string v0, "yOffsetValue"

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->yOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    .line 81
    const-string v0, "zOffsetValue"

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->zOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    .line 82
    return-void
.end method

.method public save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .registers 3
    .param p1, "manager"  # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "data"  # Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .line 86
    return-void
.end method

.method public final spawn(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;
    .registers 5
    .param p1, "vector"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "percent"  # F

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->spawnAux(Lcom/badlogic/gdx/math/Vector3;F)V

    .line 45
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->xOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->active:Z

    if-eqz v0, :cond_14

    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->xOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->newLowValue()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 46
    :cond_14
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->yOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->active:Z

    if-eqz v0, :cond_25

    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->yOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->newLowValue()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 47
    :cond_25
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->zOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->active:Z

    if-eqz v0, :cond_36

    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->zOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->newLowValue()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 48
    :cond_36
    return-object p1
.end method

.method public abstract spawnAux(Lcom/badlogic/gdx/math/Vector3;F)V
.end method

.method public start()V
    .registers 1

    .line 55
    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .registers 4
    .param p1, "json"  # Lcom/badlogic/gdx/utils/Json;

    .line 70
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->write(Lcom/badlogic/gdx/utils/Json;)V

    .line 71
    const-string v0, "xOffsetValue"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->xOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    const-string v0, "yOffsetValue"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->yOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    const-string v0, "zOffsetValue"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->zOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    return-void
.end method
