.class Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest2/Menu_InGame_View_GovernmentsSelected$1;
.super Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Governments;
.source "Menu_InGame_View_GovernmentsSelected.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest2/Menu_InGame_View_GovernmentsSelected;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest2/Menu_InGame_View_GovernmentsSelected;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest2/Menu_InGame_View_GovernmentsSelected;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;IIIILjava/lang/String;)V
    .registers 29
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest2/Menu_InGame_View_GovernmentsSelected;
    .param p2, "nColor"  # Lcom/badlogic/gdx/graphics/Color;
    .param p3, "sText"  # Ljava/lang/String;
    .param p4, "nGovernmentID"  # I
    .param p5, "sTextLeft"  # Ljava/lang/String;
    .param p6, "nPop"  # Ljava/lang/String;
    .param p7, "iImageID"  # I
    .param p8, "textColor"  # Lcom/badlogic/gdx/graphics/Color;
    .param p9, "iPosX"  # I
    .param p10, "iPosY"  # I
    .param p11, "iWidth"  # I
    .param p12, "civID"  # I
    .param p13, "population"  # Ljava/lang/String;

    .line 71
    move-object v13, p0

    move-object/from16 v14, p1

    iput-object v14, v13, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest2/Menu_InGame_View_GovernmentsSelected$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest2/Menu_InGame_View_GovernmentsSelected;

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move-object/from16 v12, p13

    invoke-direct/range {v0 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Governments;-><init>(Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;IIIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public actionElem(I)V
    .registers 4
    .param p1, "iID"  # I

    .line 74
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ViewGovernments(Z)V

    .line 75
    return-void
.end method
