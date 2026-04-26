.class public Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;
.super Ljava/lang/Object;
.source "ServiceRibbon_Overlay_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private iPosX:I

.field private iWidth:I

.field private reflected:Z


# direct methods
.method public constructor <init>(IIZ)V
    .registers 4
    .param p1, "iPosX"  # I
    .param p2, "iWidth"  # I
    .param p3, "reflected"  # Z

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->iPosX:I

    .line 26
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->iWidth:I

    .line 27
    iput-boolean p3, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->reflected:Z

    .line 28
    return-void
.end method


# virtual methods
.method public final getPosX()I
    .registers 2

    .line 33
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->iPosX:I

    return v0
.end method

.method public final getReflected()Z
    .registers 2

    .line 49
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->reflected:Z

    return v0
.end method

.method public final getWidth()I
    .registers 2

    .line 41
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->iWidth:I

    return v0
.end method

.method public final setPosX(I)V
    .registers 2
    .param p1, "iPosX"  # I

    .line 37
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->iPosX:I

    .line 38
    return-void
.end method

.method public final setReflected(Z)V
    .registers 2
    .param p1, "reflected"  # Z

    .line 53
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->reflected:Z

    .line 54
    return-void
.end method

.method public final setWidth(I)V
    .registers 2
    .param p1, "iWidth"  # I

    .line 45
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->iWidth:I

    .line 46
    return-void
.end method
