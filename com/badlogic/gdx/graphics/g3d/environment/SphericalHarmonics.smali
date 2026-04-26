.class public Lcom/badlogic/gdx/graphics/g3d/environment/SphericalHarmonics;
.super Ljava/lang/Object;
.source "SphericalHarmonics.java"


# static fields
.field private static final coeff:[F


# instance fields
.field public final data:[F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/environment/SphericalHarmonics;->coeff:[F

    return-void

    :array_a
    .array-data 4
        0x3e906ec1
        0x3efa2a2c
        0x3efa2a2c
        0x3efa2a2c
        0x3f8bd89d
        0x3f8bd89d
        0x3f8bd89d
        0x3ea17b0f
        0x3f0bd89d
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, 0x1b

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SphericalHarmonics;->data:[F

    .line 35
    return-void
.end method

.method public constructor <init>([F)V
    .registers 4
    .param p1, "copyFrom"  # [F

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    array-length v0, p1

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_11

    .line 39
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SphericalHarmonics;->data:[F

    .line 40
    return-void

    .line 38
    :cond_11
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Incorrect array size"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final clamp(F)F
    .registers 3
    .param p0, "v"  # F

    .line 28
    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_6

    :goto_5
    goto :goto_e

    :cond_6
    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_d

    goto :goto_5

    :cond_d
    move v0, p0

    :goto_e
    return v0
.end method


# virtual methods
.method public set(FFF)Lcom/badlogic/gdx/graphics/g3d/environment/SphericalHarmonics;
    .registers 7
    .param p1, "r"  # F
    .param p2, "g"  # F
    .param p3, "b"  # F

    .line 57
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SphericalHarmonics;->data:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    .line 58
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SphericalHarmonics;->data:[F

    add-int/lit8 v2, v0, 0x1

    .end local v0  # "idx":I
    .local v2, "idx":I
    aput p1, v1, v0

    .line 59
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SphericalHarmonics;->data:[F

    add-int/lit8 v1, v2, 0x1

    .end local v2  # "idx":I
    .local v1, "idx":I
    aput p2, v0, v2

    .line 60
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SphericalHarmonics;->data:[F

    add-int/lit8 v2, v1, 0x1

    .end local v1  # "idx":I
    .restart local v2  # "idx":I
    aput p3, v0, v1

    move v0, v2

    goto :goto_1

    .line 62
    .end local v2  # "idx":I
    :cond_1a
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/g3d/environment/SphericalHarmonics;
    .registers 5
    .param p1, "color"  # Lcom/badlogic/gdx/graphics/Color;

    .line 53
    iget v0, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/environment/SphericalHarmonics;->set(FFF)Lcom/badlogic/gdx/graphics/g3d/environment/SphericalHarmonics;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;)Lcom/badlogic/gdx/graphics/g3d/environment/SphericalHarmonics;
    .registers 3
    .param p1, "other"  # Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    .line 49
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/environment/SphericalHarmonics;->set([F)Lcom/badlogic/gdx/graphics/g3d/environment/SphericalHarmonics;

    move-result-object v0

    return-object v0
.end method

.method public set([F)Lcom/badlogic/gdx/graphics/g3d/environment/SphericalHarmonics;
    .registers 5
    .param p1, "values"  # [F

    .line 43
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SphericalHarmonics;->data:[F

    array-length v1, v1

    if-ge v0, v1, :cond_f

    .line 44
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SphericalHarmonics;->data:[F

    aget v2, p1, v0

    aput v2, v1, v0

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 45
    .end local v0  # "i":I
    :cond_f
    return-object p0
.end method
