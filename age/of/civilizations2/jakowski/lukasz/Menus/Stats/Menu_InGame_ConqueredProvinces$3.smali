.class Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/Menu_InGame_ConqueredProvinces$3;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Stats/Button_Stats_Flag_Clip;
.source "Menu_InGame_ConqueredProvinces.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/Menu_InGame_ConqueredProvinces;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/Menu_InGame_ConqueredProvinces;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/Menu_InGame_ConqueredProvinces;ILjava/lang/String;IIIII)V
    .registers 19
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/Menu_InGame_ConqueredProvinces;
    .param p2, "iCivID"  # I
    .param p3, "sText"  # Ljava/lang/String;
    .param p4, "iTextPosX"  # I
    .param p5, "iPosX"  # I
    .param p6, "iPosY"  # I
    .param p7, "iWidth"  # I
    .param p8, "iHeight"  # I

    .line 172
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/Menu_InGame_ConqueredProvinces$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/Menu_InGame_ConqueredProvinces;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button/Stats/Button_Stats_Flag_Clip;-><init>(ILjava/lang/String;IIIII)V

    return-void
.end method


# virtual methods
.method public getColorE(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"  # Z

    .line 180
    if-eqz p1, :cond_5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_GRAY_LEFT_NS_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_19

    .line 181
    :cond_5
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/Menu_InGame_ConqueredProvinces$3;->getIsClickable()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/Menu_InGame_ConqueredProvinces$3;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_GRAY_LEFT_NS_HOVER:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_19

    :cond_14
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_GRAY_LEFT_NS:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_19

    :cond_17
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_MENU_TEXT_NOT_CLICKABLE:Lcom/badlogic/gdx/graphics/Color;

    .line 180
    :goto_19
    return-object v0
.end method

.method public getWidthE()I
    .registers 2

    .line 175
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/Menu_InGame_ConqueredProvinces$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/Menu_InGame_ConqueredProvinces;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/Menu_InGame_ConqueredProvinces;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
