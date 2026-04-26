.class public Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueProvince_GameData;
.super Ljava/lang/Object;
.source "PlagueProvince_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public iDeaths:I

.field public iDurationTurnsLeft:F

.field public iPlagueID_InGame:I

.field public iSinceTurnID:I


# direct methods
.method public constructor <init>(IIFI)V
    .registers 6
    .param p1, "iPlagueID_InGame"  # I
    .param p2, "iSinceTurnID"  # I
    .param p3, "iDurationTurnsLeft"  # F
    .param p4, "iDeaths"  # I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueProvince_GameData;->iPlagueID_InGame:I

    .line 16
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueProvince_GameData;->iSinceTurnID:I

    .line 17
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueProvince_GameData;->iDeaths:I

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueProvince_GameData;->iDurationTurnsLeft:F

    .line 21
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueProvince_GameData;->iPlagueID_InGame:I

    .line 22
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueProvince_GameData;->iSinceTurnID:I

    .line 23
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueProvince_GameData;->iDurationTurnsLeft:F

    .line 24
    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueProvince_GameData;->iDeaths:I

    .line 25
    return-void
.end method
