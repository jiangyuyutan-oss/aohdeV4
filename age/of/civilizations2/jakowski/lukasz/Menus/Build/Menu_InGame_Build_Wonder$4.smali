.class Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Wonder$4;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction;
.source "Menu_InGame_Build_Wonder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Wonder;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Wonder;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Wonder;Ljava/lang/String;IIIIZ)V
    .registers 15
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Wonder;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iTextPositionX"  # I
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "iWidth"  # I
    .param p7, "isClickable"  # Z

    .line 86
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Wonder$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Wonder;

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
    .registers 3

    .line 99
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Wonder$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Wonder;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Wonder;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Wonder;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonders_Manager;->getHoverWonder(II)Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Wonder$4;->menuElemHover:Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover;

    .line 100
    return-void
.end method

.method public getPosXE()I
    .registers 3

    .line 89
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Wonder$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Wonder;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Wonder;->getElementW()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getSFXElem()I
    .registers 2

    .line 104
    sget v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_BUILD:I

    return v0
.end method

.method public getWidthE()I
    .registers 3

    .line 94
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Wonder$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Wonder;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Build/Menu_InGame_Build_Wonder;->getElementW()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method
