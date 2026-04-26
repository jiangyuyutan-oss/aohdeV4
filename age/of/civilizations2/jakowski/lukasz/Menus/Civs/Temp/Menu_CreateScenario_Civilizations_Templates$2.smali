.class Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates$2;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_DiplomacyAction;
.source "Menu_CreateScenario_Civilizations_Templates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field id:I

.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates;ILjava/lang/String;IIIIIZ)V
    .registers 21
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates;
    .param p2, "nImageID"  # I
    .param p3, "sText"  # Ljava/lang/String;
    .param p4, "iTextPositionX"  # I
    .param p5, "iPosX"  # I
    .param p6, "iPosY"  # I
    .param p7, "iWidth"  # I
    .param p8, "iHeight"  # I
    .param p9, "isClickable"  # Z

    .line 117
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_DiplomacyAction;-><init>(ILjava/lang/String;IIIIIZ)V

    .line 118
    const/4 v0, 0x0

    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates$2;->id:I

    return-void
.end method


# virtual methods
.method public actionElem(I)V
    .registers 7
    .param p1, "iID"  # I

    .line 133
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates;->civTemplate:Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivTemplate;

    if-eqz v0, :cond_cc

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates;->civTemplate:Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivTemplate;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivTemplate;->provinces:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates$2;->id:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_cc

    .line 134
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvSelected()Lage/of/civilizations2/jakowski/lukasz/ProvincesDrag;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/ProvincesDrag;->clearSelectedProvinces()V

    .line 136
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates;->civTemplate:Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivTemplate;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivTemplate;->provinces:Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates$2;->id:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "b":I
    :goto_37
    if-ltz v0, :cond_cc

    .line 137
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates;->civTemplate:Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivTemplate;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivTemplate;->provinces:Ljava/util/List;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates$2;->id:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates;->civTemplate:Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivTemplate;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivTemplate;->provinces:Ljava/util/List;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates$2;->id:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_a7

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates;->civTemplate:Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivTemplate;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivTemplate;->provinces:Ljava/util/List;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates$2;->id:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates;->CIV_ID:I

    if-ne v1, v2, :cond_c8

    .line 138
    :cond_a7
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvSelected()Lage/of/civilizations2/jakowski/lukasz/ProvincesDrag;

    move-result-object v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates;->civTemplate:Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivTemplate;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivTemplate;->provinces:Ljava/util/List;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates$2;->id:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvincesDrag;->addProv(I)Z
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c8} :catch_cd

    .line 136
    :cond_c8
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_37

    .line 144
    .end local v0  # "b":I
    :cond_cc
    goto :goto_d1

    .line 142
    :catch_cd
    move-exception v0

    .line 143
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 145
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_d1
    return-void
.end method

.method public buildElemHover()V
    .registers 6

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v0, "nElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v1, "nData":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type;>;"
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates$2;->getTextE()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_HOVER_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 156
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;

    invoke-direct {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates$2;->menuElemHover:Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover;

    .line 157
    return-void
.end method

.method public getCurr()I
    .registers 2

    .line 127
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates$2;->id:I

    return v0
.end method

.method public setMin(I)V
    .registers 2
    .param p1, "iMin"  # I

    .line 122
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Civs/Temp/Menu_CreateScenario_Civilizations_Templates$2;->id:I

    .line 123
    return-void
.end method
