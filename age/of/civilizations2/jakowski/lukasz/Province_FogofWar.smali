.class public Lage/of/civilizations2/jakowski/lukasz/Province_FogofWar;
.super Ljava/lang/Object;
.source "Province_FogofWar.java"


# instance fields
.field private isVisible:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_FogofWar;->isVisible:Z

    return-void
.end method


# virtual methods
.method public final getIsVisible()Z
    .registers 2

    .line 20
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_FogofWar;->isVisible:Z

    return v0
.end method

.method public final setVisible(Z)V
    .registers 2
    .param p1, "isVisible"  # Z

    .line 16
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_FogofWar;->isVisible:Z

    .line 17
    return-void
.end method
