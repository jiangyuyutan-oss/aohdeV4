.class Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Port$4;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction;
.source "Menu_InGame_Build_Port.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Port;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Port;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Port;Ljava/lang/String;IIIIZ)V
    .registers 15
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Port;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iTextPositionX"  # I
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "iWidth"  # I
    .param p7, "isClickable"  # Z

    .line 133
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Port$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Port;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction;-><init>(Ljava/lang/String;IIIIZ)V

    return-void
.end method


# virtual methods
.method public buildElemHover()V
    .registers 2

    .line 146
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Port$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Port;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Port;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Port;)I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Port;->getHoverPort(I)Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Port$4;->menuElemHover:Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover;

    .line 147
    return-void
.end method

.method public getIsClickable()Z
    .registers 7

    .line 151
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovemPoints()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Port$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Port;

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Port;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Port;)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfPort()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getPort_BuildMovementCost(I)I

    move-result v1

    if-lt v0, v1, :cond_94

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    .line 152
    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Port$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Port;

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Port;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Port;)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfPort()I

    move-result v3

    add-int/2addr v3, v2

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Port$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Port;

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Port;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Port;)I

    move-result v4

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getPort_BuildCost(II)I

    move-result v3

    int-to-long v3, v3

    cmp-long v5, v0, v3

    if-ltz v5, :cond_94

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    .line 153
    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Port$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Port;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Port;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Port;)I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfPort()I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getPort_TechLevel(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_94

    goto :goto_95

    :cond_94
    const/4 v2, 0x0

    .line 151
    :goto_95
    return v2
.end method

.method public getPosXE()I
    .registers 3

    .line 136
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Port$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Port;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Port;->getElementW()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getSFXElem()I
    .registers 2

    .line 158
    sget v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_BUILD:I

    return v0
.end method

.method public getWidthE()I
    .registers 3

    .line 141
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Port$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Port;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Port;->getElementW()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method
