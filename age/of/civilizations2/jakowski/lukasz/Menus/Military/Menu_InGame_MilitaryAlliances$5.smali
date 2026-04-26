.class Lage/of/civilizations2/jakowski/lukasz/Menus/Military/Menu_InGame_MilitaryAlliances$5;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Stats/Button_Stats_Title;
.source "Menu_InGame_MilitaryAlliances.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Military/Menu_InGame_MilitaryAlliances;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Military/Menu_InGame_MilitaryAlliances;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Military/Menu_InGame_MilitaryAlliances;Ljava/lang/String;IIIII)V
    .registers 15
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Military/Menu_InGame_MilitaryAlliances;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iTextPosX"  # I
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "iWidth"  # I
    .param p7, "iHeight"  # I

    .line 161
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Military/Menu_InGame_MilitaryAlliances$5;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Military/Menu_InGame_MilitaryAlliances;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Button/Stats/Button_Stats_Title;-><init>(Ljava/lang/String;IIIII)V

    return-void
.end method


# virtual methods
.method public buildElemHover()V
    .registers 7

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v0, "nElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v1, "nData":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type;>;"
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v5, "SortBy"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Military/Menu_InGame_MilitaryAlliances$5;->getTextE()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_HOVER_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 182
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;

    invoke-direct {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Military/Menu_InGame_MilitaryAlliances$5;->menuElemHover:Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover;

    .line 183
    return-void
.end method

.method public getColorE(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 4
    .param p1, "isActive"  # Z

    .line 187
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Military/Menu_InGame_MilitaryAlliances;->sortBy:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_c

    :cond_8
    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Button/Stats/Button_Stats_Title;->getColorE(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public getPosXE()I
    .registers 3

    .line 164
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Military/Menu_InGame_MilitaryAlliances$5;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Military/Menu_InGame_MilitaryAlliances;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Military/Menu_InGame_MilitaryAlliances;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getWidthE()I
    .registers 2

    .line 169
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Military/Menu_InGame_MilitaryAlliances$5;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Military/Menu_InGame_MilitaryAlliances;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Military/Menu_InGame_MilitaryAlliances;->getElementW()I

    move-result v0

    return v0
.end method
