.class public Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;
.super Ljava/lang/Object;
.source "MapMode.java"


# instance fields
.field public canMoveArmy:Z

.field public drawCivNamesOver:Z

.field public drawProvinces:Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;

.field public oRenderer:Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->drawCivNamesOver:Z

    .line 16
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->canMoveArmy:Z

    return-void
.end method


# virtual methods
.method public canMoveArmy()Z
    .registers 2

    .line 31
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->canMoveArmy:Z

    return v0
.end method

.method public disableViewAction()V
    .registers 1

    .line 19
    return-void
.end method

.method public enableViewAction()V
    .registers 1

    .line 18
    return-void
.end method

.method public getProvinceInformation()Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover;
    .registers 2

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public setActiveProvinceAction()V
    .registers 1

    .line 27
    return-void
.end method

.method public updateActiveCivInfo_ExtraAction(I)V
    .registers 2
    .param p1, "newCivID"  # I

    .line 21
    return-void
.end method

.method public updateActiveProvinceID_ExtraAction(II)V
    .registers 3
    .param p1, "oldProvince"  # I
    .param p2, "newProvince"  # I

    .line 22
    return-void
.end method
