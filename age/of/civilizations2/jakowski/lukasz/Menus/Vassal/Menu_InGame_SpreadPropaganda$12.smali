.class Lage/of/civilizations2/jakowski/lukasz/Menus/Vassal/Menu_InGame_SpreadPropaganda$12;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Button_SpreadPropaganda;
.source "Menu_InGame_SpreadPropaganda.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Vassal/Menu_InGame_SpreadPropaganda;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Vassal/Menu_InGame_SpreadPropaganda;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Vassal/Menu_InGame_SpreadPropaganda;Ljava/lang/String;IIIIIII)V
    .registers 21
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Vassal/Menu_InGame_SpreadPropaganda;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "nImageID"  # I
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "iWidth"  # I
    .param p7, "provinceID"  # I
    .param p8, "costGold"  # I
    .param p9, "costDiplomacy"  # I

    .line 293
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Vassal/Menu_InGame_SpreadPropaganda$12;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Vassal/Menu_InGame_SpreadPropaganda;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_SpreadPropaganda;-><init>(Ljava/lang/String;IIIIIII)V

    return-void
.end method


# virtual methods
.method public actionElem(I)V
    .registers 4
    .param p1, "iID"  # I

    .line 301
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Vassal/Menu_InGame_SpreadPropaganda;->provinces:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Vassal/Menu_InGame_SpreadPropaganda$12;->getCurr()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Vassal/Menu_InGame_SpreadPropaganda;->civID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_SpreadPropaganda2(I)V

    .line 303
    return-void
.end method

.method public getWidthE()I
    .registers 2

    .line 296
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Vassal/Menu_InGame_SpreadPropaganda$12;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Vassal/Menu_InGame_SpreadPropaganda;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Vassal/Menu_InGame_SpreadPropaganda;->getElementW2()I

    move-result v0

    return v0
.end method
