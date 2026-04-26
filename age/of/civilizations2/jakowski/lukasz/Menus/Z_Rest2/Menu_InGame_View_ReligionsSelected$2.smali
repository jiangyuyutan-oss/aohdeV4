.class Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest2/Menu_InGame_View_ReligionsSelected$2;
.super Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;
.source "Menu_InGame_View_ReligionsSelected.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest2/Menu_InGame_View_ReligionsSelected;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest2/Menu_InGame_View_ReligionsSelected;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest2/Menu_InGame_View_ReligionsSelected;Ljava/lang/String;Ljava/lang/String;IIIIZILage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;ZIZ)V
    .registers 29
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest2/Menu_InGame_View_ReligionsSelected;
    .param p2, "sTextX"  # Ljava/lang/String;
    .param p3, "sTextY"  # Ljava/lang/String;
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "iWidth"  # I
    .param p7, "iHeight"  # I
    .param p8, "visible"  # Z
    .param p9, "nLoadSize"  # I
    .param p10, "graphType"  # Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;
    .param p11, "split100"  # Z
    .param p12, "id"  # I
    .param p13, "drawValues"  # Z

    .line 78
    move-object v13, p0

    move-object/from16 v14, p1

    iput-object v14, v13, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest2/Menu_InGame_View_ReligionsSelected$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest2/Menu_InGame_View_ReligionsSelected;

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    invoke-direct/range {v0 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIZILage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;ZIZ)V

    return-void
.end method


# virtual methods
.method public buildElemHover()V
    .registers 2

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest2/Menu_InGame_View_ReligionsSelected$2;->menuElemHover:Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover;

    .line 82
    return-void
.end method

.method public getGraphWidth()I
    .registers 3

    .line 86
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest2/Menu_InGame_View_ReligionsSelected$2;->getWidthE()I

    move-result v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest2/Menu_InGame_View_ReligionsSelected$2;->getGraphButtonWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
