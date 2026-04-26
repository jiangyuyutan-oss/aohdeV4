.class public Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;
.super Ljava/lang/Object;
.source "Province_Info_GameData3.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public fGrowthRate:F

.field public iContinentID:I

.field public iRegionID:I

.field public iShiftX:I

.field public iShiftY:I

.field public sTerrainTAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;->fGrowthRate:F

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;->iContinentID:I

    .line 20
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;->iRegionID:I

    .line 22
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;->iShiftX:I

    .line 23
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;->iShiftY:I

    return-void
.end method
