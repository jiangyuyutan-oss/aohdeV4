.class public Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;
.super Ljava/lang/Object;
.source "PND.java"


# instance fields
.field public drawAngleLow:F

.field public drawMatrix4:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/math/Matrix4;",
            ">;"
        }
    .end annotation
.end field

.field public drawPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Provinces/Point_XY;",
            ">;"
        }
    .end annotation
.end field

.field public fCenterX:F

.field public fCenterY:F

.field public fX:F

.field public fX2:F

.field public fY:F

.field public fY2:F

.field public fontScale:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->drawPoints:Ljava/util/List;

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->drawAngleLow:F

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->drawMatrix4:Ljava/util/List;

    .line 26
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fontScale:F

    return-void
.end method
