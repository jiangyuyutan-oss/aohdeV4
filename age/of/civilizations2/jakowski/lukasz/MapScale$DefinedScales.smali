.class public Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;
.super Ljava/lang/Object;
.source "MapScale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/MapScale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefinedScales"
.end annotation


# instance fields
.field public definedScale_Default:I

.field public definedScales:[F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/16 v0, 0xf

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;->definedScale_Default:I

    .line 66
    const/16 v0, 0x1e

    new-array v0, v0, [F

    fill-array-data v0, :array_12

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;->definedScales:[F

    return-void

    nop

    :array_12
    .array-data 4
        0x41200000  # 10.0f
        0x41100000  # 9.0f
        0x41000000  # 8.0f
        0x40e00000  # 7.0f
        0x40c00000  # 6.0f
        0x40a00000  # 5.0f
        0x40800000  # 4.0f
        0x406147ae  # 3.52f
        0x40400000  # 3.0f
        0x402147ae  # 2.52f
        0x40000000  # 2.0f
        0x3fe147ae  # 1.76f
        0x3fc28f5c  # 1.52f
        0x3f9eb852  # 1.24f
        0x3f800000  # 1.0f
        0x3f6b851f  # 0.92f
        0x3f4ccccd  # 0.8f
        0x3f2e147b  # 0.68f
        0x3f19999a  # 0.6f
        0x3f051eb8  # 0.52f
        0x3ee147ae  # 0.44f
        0x3ecccccd  # 0.4f
        0x3ea3d70a  # 0.32f
        0x3e75c28f  # 0.24f
        0x3e23d70a  # 0.16f
        0x3df5c28f  # 0.12f
        0x3dbc6a7f  # 0.092f
        0x3da3d70a  # 0.08f
        0x3d75c28f  # 0.06f
        0x3d75c28f  # 0.06f
    .end array-data
.end method
