.class Lcom/badlogic/gdx/math/MathUtils$Sin;
.super Ljava/lang/Object;
.source "MathUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/MathUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Sin"
.end annotation


# static fields
.field static final table:[F


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 57
    const/16 v0, 0x4000

    new-array v1, v0, [F

    sput-object v1, Lcom/badlogic/gdx/math/MathUtils$Sin;->table:[F

    .line 60
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_21

    .line 61
    sget-object v2, Lcom/badlogic/gdx/math/MathUtils$Sin;->table:[F

    int-to-float v3, v1

    const/high16 v4, 0x3f000000  # 0.5f

    add-float/2addr v3, v4

    const/high16 v4, 0x46800000  # 16384.0f

    div-float/2addr v3, v4

    const v4, 0x40c90fdb

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v2, v1

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 62
    .end local v1  # "i":I
    :cond_21
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    const/16 v1, 0x168

    if-ge v0, v1, :cond_40

    .line 63
    sget-object v1, Lcom/badlogic/gdx/math/MathUtils$Sin;->table:[F

    int-to-float v2, v0

    const v3, 0x42360b61

    mul-float/2addr v2, v3

    float-to-int v2, v2

    and-int/lit16 v2, v2, 0x3fff

    int-to-float v3, v0

    const v4, 0x3c8efa35

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v1, v2

    .line 62
    add-int/lit8 v0, v0, 0x5a

    goto :goto_22

    .line 64
    .end local v0  # "i":I
    :cond_40
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
