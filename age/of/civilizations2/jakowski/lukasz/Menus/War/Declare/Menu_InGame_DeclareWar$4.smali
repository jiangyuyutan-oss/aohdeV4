.class Lage/of/civilizations2/jakowski/lukasz/Menus/War/Declare/Menu_InGame_DeclareWar$4;
.super Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Desc;
.source "Menu_InGame_DeclareWar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/War/Declare/Menu_InGame_DeclareWar;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/War/Declare/Menu_InGame_DeclareWar;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/War/Declare/Menu_InGame_DeclareWar;Ljava/lang/String;III)V
    .registers 6
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/War/Declare/Menu_InGame_DeclareWar;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "iWidth"  # I

    .line 122
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/War/Declare/Menu_InGame_DeclareWar$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/War/Declare/Menu_InGame_DeclareWar;

    invoke-direct {p0, p2, p3, p4, p5}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Desc;-><init>(Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"  # Z

    .line 125
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/War/Declare/Menu_InGame_DeclareWar$4;->getIsHovered()Z

    move-result v0

    if-nez v0, :cond_c

    if-eqz p1, :cond_9

    goto :goto_c

    :cond_9
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_e

    :cond_c
    :goto_c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_1:Lcom/badlogic/gdx/graphics/Color;

    :goto_e
    return-object v0
.end method

.method public getWidthE()I
    .registers 2

    .line 130
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/War/Declare/Menu_InGame_DeclareWar$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/War/Declare/Menu_InGame_DeclareWar;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/War/Declare/Menu_InGame_DeclareWar;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
