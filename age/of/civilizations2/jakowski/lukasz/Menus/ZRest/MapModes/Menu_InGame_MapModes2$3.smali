.class Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/MapModes/Menu_InGame_MapModes2$3;
.super Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;
.source "Menu_InGame_MapModes2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/MapModes/Menu_InGame_MapModes2;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/MapModes/Menu_InGame_MapModes2;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/MapModes/Menu_InGame_MapModes2;ILjava/lang/String;IIIIIZZI)V
    .registers 25
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/MapModes/Menu_InGame_MapModes2;
    .param p2, "iCurrent"  # I
    .param p3, "sText"  # Ljava/lang/String;
    .param p4, "iTextPositionX"  # I
    .param p5, "iPosX"  # I
    .param p6, "iPosY"  # I
    .param p7, "iWidth"  # I
    .param p8, "iHeight"  # I
    .param p9, "isClickable"  # Z
    .param p10, "checkboxState"  # Z
    .param p11, "posID"  # I

    .line 70
    move-object v11, p0

    move-object v12, p1

    iput-object v12, v11, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/MapModes/Menu_InGame_MapModes2$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/MapModes/Menu_InGame_MapModes2;

    move-object v0, p0

    move v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;-><init>(ILjava/lang/String;IIIIIZZI)V

    return-void
.end method


# virtual methods
.method public getWidthE()I
    .registers 2

    .line 73
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/MapModes/Menu_InGame_MapModes2$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/MapModes/Menu_InGame_MapModes2;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/MapModes/Menu_InGame_MapModes2;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/MapModes/Menu_InGame_MapModes2;)I

    move-result v0

    return v0
.end method
