.class Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Ultimatum/Menu_InGame_Message_Ultimatum$8;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_Demands;
.source "Menu_InGame_Message_Ultimatum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Ultimatum/Menu_InGame_Message_Ultimatum;-><init>(IIILage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Ultimatum/Menu_InGame_Message_Ultimatum;

.field final synthetic val$onCivID:I


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Ultimatum/Menu_InGame_Message_Ultimatum;Ljava/lang/String;IIIII)V
    .registers 14
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Ultimatum/Menu_InGame_Message_Ultimatum;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "nCiv"  # I
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "iWidth"  # I

    .line 164
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Ultimatum/Menu_InGame_Message_Ultimatum$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Ultimatum/Menu_InGame_Message_Ultimatum;

    iput p7, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Ultimatum/Menu_InGame_Message_Ultimatum$8;->val$onCivID:I

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_Demands;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method public actionElem(I)V
    .registers 5
    .param p1, "iID"  # I

    .line 192
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvSelected()Lage/of/civilizations2/jakowski/lukasz/ProvincesDrag;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/ProvincesDrag;->clearSelectedProvinces()V

    .line 193
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Ultimatum/Menu_InGame_Message_Ultimatum$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Ultimatum/Menu_InGame_Message_Ultimatum;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Ultimatum/Menu_InGame_Message_Ultimatum;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Ultimatum/Menu_InGame_Message_Ultimatum;)Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->demandProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_36

    .line 194
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvSelected()Lage/of/civilizations2/jakowski/lukasz/ProvincesDrag;

    move-result-object v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Ultimatum/Menu_InGame_Message_Ultimatum$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Ultimatum/Menu_InGame_Message_Ultimatum;

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Ultimatum/Menu_InGame_Message_Ultimatum;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Ultimatum/Menu_InGame_Message_Ultimatum;)Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->demandProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvincesDrag;->addProv(I)Z

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 197
    .end local v0  # "i":I
    :cond_36
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Player;->iACTIVE_VIEW_MODE:I

    .line 198
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->disableAllViews()V

    .line 200
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setActiveProvID(I)V

    .line 202
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eINGAME_SHOW_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuID(Lage/of/civilizations2/jakowski/lukasz/View;)V

    .line 204
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/RenderProvince;->updateDrawProvinces()V

    .line 205
    return-void
.end method

.method public buildElemHover()V
    .registers 7

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v0, "nElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v1, "nData":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type;>;"
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Flag_Big;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Ultimatum/Menu_InGame_Message_Ultimatum$8;->val$onCivID:I

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Flag_Big;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v4, "DemandsOurProvinces"

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 180
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_32
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Ultimatum/Menu_InGame_Message_Ultimatum$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Ultimatum/Menu_InGame_Message_Ultimatum;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Ultimatum/Menu_InGame_Message_Ultimatum;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Ultimatum/Menu_InGame_Message_Ultimatum;)Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->demandProvinces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7e

    .line 181
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    const-string v5, " - "

    invoke-direct {v3, v5, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Ultimatum/Menu_InGame_Message_Ultimatum$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Ultimatum/Menu_InGame_Message_Ultimatum;

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Ultimatum/Menu_InGame_Message_Ultimatum;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Ultimatum/Menu_InGame_Message_Ultimatum;)Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->demandProvinces:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 187
    .end local v2  # "i":I
    :cond_7e
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;

    invoke-direct {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Ultimatum/Menu_InGame_Message_Ultimatum$8;->menuElemHover:Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover;

    .line 188
    return-void
.end method

.method public getWidthE()I
    .registers 2

    .line 167
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Ultimatum/Menu_InGame_Message_Ultimatum$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Ultimatum/Menu_InGame_Message_Ultimatum;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Ultimatum/Menu_InGame_Message_Ultimatum;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
