.class public Lage/of/civilizations2/jakowski/lukasz/Z_Other/Undo/UndoTerrain;
.super Ljava/lang/Object;
.source "UndoTerrain.java"


# instance fields
.field public iProvinceID:I

.field public iTerrainID:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "iProvinceID"  # I
    .param p2, "iTerrainID"  # I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/Undo/UndoTerrain;->iProvinceID:I

    .line 15
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/Undo/UndoTerrain;->iTerrainID:I

    .line 16
    return-void
.end method
