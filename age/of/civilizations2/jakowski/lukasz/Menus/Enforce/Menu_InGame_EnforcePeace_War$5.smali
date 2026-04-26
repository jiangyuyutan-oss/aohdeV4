.class Lage/of/civilizations2/jakowski/lukasz/Menus/Enforce/Menu_InGame_EnforcePeace_War$5;
.super Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;
.source "Menu_InGame_EnforcePeace_War.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Enforce/Menu_InGame_EnforcePeace_War;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Enforce/Menu_InGame_EnforcePeace_War;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Enforce/Menu_InGame_EnforcePeace_War;Ljava/lang/String;IIIIZ)V
    .registers 15
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Enforce/Menu_InGame_EnforcePeace_War;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "civID"  # I
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "nWidth"  # I
    .param p7, "crop"  # Z

    .line 163
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Enforce/Menu_InGame_EnforcePeace_War$5;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Enforce/Menu_InGame_EnforcePeace_War;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;-><init>(Ljava/lang/String;IIIIZ)V

    return-void
.end method


# virtual methods
.method public getColorE(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"  # Z

    .line 166
    if-eqz p1, :cond_5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_GRAY_LEFT_NS_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_19

    .line 167
    :cond_5
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Enforce/Menu_InGame_EnforcePeace_War$5;->getIsClickable()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Enforce/Menu_InGame_EnforcePeace_War$5;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_GRAY_LEFT_NS_HOVER:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_19

    :cond_14
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_GRAY_LEFT_NS:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_19

    :cond_17
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_MENU_TEXT_NOT_CLICKABLE:Lcom/badlogic/gdx/graphics/Color;

    .line 166
    :goto_19
    return-object v0
.end method

.method public getWidthE()I
    .registers 2

    .line 172
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Enforce/Menu_InGame_EnforcePeace_War$5;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Enforce/Menu_InGame_EnforcePeace_War;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Enforce/Menu_InGame_EnforcePeace_War;->getElementW()I

    move-result v0

    return v0
.end method
