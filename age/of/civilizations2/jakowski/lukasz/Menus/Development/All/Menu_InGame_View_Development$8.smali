.class Lage/of/civilizations2/jakowski/lukasz/Menus/Development/All/Menu_InGame_View_Development$8;
.super Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;
.source "Menu_InGame_View_Development.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Development/All/Menu_InGame_View_Development;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Development/All/Menu_InGame_View_Development;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Development/All/Menu_InGame_View_Development;ILjava/lang/String;IIIIIZZ)V
    .registers 23
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Development/All/Menu_InGame_View_Development;
    .param p2, "iCurrent"  # I
    .param p3, "sText"  # Ljava/lang/String;
    .param p4, "iTextPositionX"  # I
    .param p5, "iPosX"  # I
    .param p6, "iPosY"  # I
    .param p7, "iWidth"  # I
    .param p8, "iHeight"  # I
    .param p9, "isClickable"  # Z
    .param p10, "checkboxState"  # Z

    .line 315
    move-object v10, p0

    move-object v11, p1

    iput-object v11, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/Development/All/Menu_InGame_View_Development$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Development/All/Menu_InGame_View_Development;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;-><init>(ILjava/lang/String;IIIIIZZ)V

    return-void
.end method


# virtual methods
.method public actionElem(I)V
    .registers 3
    .param p1, "iID"  # I

    .line 318
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->buildBySelectingProvinceOnMap:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->buildBySelectingProvinceOnMap:Z

    .line 319
    return-void
.end method

.method public getCheckboxSt()Z
    .registers 2

    .line 323
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->buildBySelectingProvinceOnMap:Z

    return v0
.end method
