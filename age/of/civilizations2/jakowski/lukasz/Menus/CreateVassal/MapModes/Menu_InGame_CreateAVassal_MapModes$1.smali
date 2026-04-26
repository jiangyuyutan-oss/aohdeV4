.class Lage/of/civilizations2/jakowski/lukasz/Menus/CreateVassal/MapModes/Menu_InGame_CreateAVassal_MapModes$1;
.super Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes;
.source "Menu_InGame_CreateAVassal_MapModes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/CreateVassal/MapModes/Menu_InGame_CreateAVassal_MapModes;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/CreateVassal/MapModes/Menu_InGame_CreateAVassal_MapModes;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/CreateVassal/MapModes/Menu_InGame_CreateAVassal_MapModes;ILjava/lang/String;IIIIIZZ)V
    .registers 23
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/CreateVassal/MapModes/Menu_InGame_CreateAVassal_MapModes;
    .param p2, "iCurrent"  # I
    .param p3, "sText"  # Ljava/lang/String;
    .param p4, "iTextPositionX"  # I
    .param p5, "iPosX"  # I
    .param p6, "iPosY"  # I
    .param p7, "iWidth"  # I
    .param p8, "iHeight"  # I
    .param p9, "isClickable"  # Z
    .param p10, "checkboxState"  # Z

    .line 42
    move-object v10, p0

    move-object v11, p1

    iput-object v11, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/CreateVassal/MapModes/Menu_InGame_CreateAVassal_MapModes$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/CreateVassal/MapModes/Menu_InGame_CreateAVassal_MapModes;

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

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes;-><init>(ILjava/lang/String;IIIIIZZ)V

    return-void
.end method


# virtual methods
.method public getWidthE()I
    .registers 2

    .line 45
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/CreateVassal/MapModes/Menu_InGame_CreateAVassal_MapModes$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/CreateVassal/MapModes/Menu_InGame_CreateAVassal_MapModes;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/CreateVassal/MapModes/Menu_InGame_CreateAVassal_MapModes;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/CreateVassal/MapModes/Menu_InGame_CreateAVassal_MapModes;)I

    move-result v0

    return v0
.end method
