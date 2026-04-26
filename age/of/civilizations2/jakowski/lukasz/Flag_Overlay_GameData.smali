.class public Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;
.super Ljava/lang/Object;
.source "Flag_Overlay_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public iHeight:I

.field public iOverlayID:I

.field public iPosX:I

.field public iPosY:I

.field public iWidth:I

.field public oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;


# direct methods
.method public constructor <init>(I)V
    .registers 5
    .param p1, "iOverlayID"  # I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iOverlayID:I

    .line 19
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-direct {v1, v2, v2, v2}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;-><init>(FFF)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    .line 21
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iPosX:I

    .line 22
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iPosY:I

    .line 23
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iWidth:I

    .line 24
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iHeight:I

    .line 27
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iOverlayID:I

    .line 28
    return-void
.end method
