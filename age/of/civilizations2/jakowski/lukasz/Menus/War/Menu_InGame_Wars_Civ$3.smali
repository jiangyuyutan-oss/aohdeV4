.class Lage/of/civilizations2/jakowski/lukasz/Menus/War/Menu_InGame_Wars_Civ$3;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Stats/Button_Stats_War_Enforce;
.source "Menu_InGame_Wars_Civ.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/War/Menu_InGame_Wars_Civ;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/War/Menu_InGame_Wars_Civ;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/War/Menu_InGame_Wars_Civ;IIIIII)V
    .registers 15
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/War/Menu_InGame_Wars_Civ;
    .param p2, "nAggressor"  # I
    .param p3, "nDefender"  # I
    .param p4, "nWarID"  # I
    .param p5, "iPosX"  # I
    .param p6, "iPosY"  # I
    .param p7, "iWidth"  # I

    .line 84
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/War/Menu_InGame_Wars_Civ$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/War/Menu_InGame_Wars_Civ;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Button/Stats/Button_Stats_War_Enforce;-><init>(IIIIII)V

    return-void
.end method


# virtual methods
.method public actionElem(I)V
    .registers 3
    .param p1, "iID"  # I

    .line 98
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/War/Menu_InGame_Wars_Civ$3;->getCurr()I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Wars/Details/Menu_InGame_WarDetails;->WAR_ID:I

    .line 99
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_WarDetails()V

    .line 100
    return-void
.end method

.method public getColorE(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"  # Z

    .line 92
    if-eqz p1, :cond_5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_GRAY_LEFT_NS_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_19

    .line 93
    :cond_5
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/War/Menu_InGame_Wars_Civ$3;->getIsClickable()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/War/Menu_InGame_Wars_Civ$3;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_GRAY_LEFT_NS_HOVER:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_19

    :cond_14
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_GRAY_LEFT_NS:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_19

    :cond_17
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_MENU_TEXT_NOT_CLICKABLE:Lcom/badlogic/gdx/graphics/Color;

    .line 92
    :goto_19
    return-object v0
.end method

.method public getWidthE()I
    .registers 2

    .line 87
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/War/Menu_InGame_Wars_Civ$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/War/Menu_InGame_Wars_Civ;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/War/Menu_InGame_Wars_Civ;->getElementW()I

    move-result v0

    return v0
.end method
