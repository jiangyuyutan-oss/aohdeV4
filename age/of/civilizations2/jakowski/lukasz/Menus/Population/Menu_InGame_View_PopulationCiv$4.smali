.class Lage/of/civilizations2/jakowski/lukasz/Menus/Population/Menu_InGame_View_PopulationCiv$4;
.super Lage/of/civilizations2/jakowski/lukasz/Button/View/Button_View_PopulationCiv;
.source "Menu_InGame_View_PopulationCiv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Population/Menu_InGame_View_PopulationCiv;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Population/Menu_InGame_View_PopulationCiv;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Population/Menu_InGame_View_PopulationCiv;ILjava/lang/String;JIIIILjava/lang/String;)V
    .registers 23
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Population/Menu_InGame_View_PopulationCiv;
    .param p2, "iRow"  # I
    .param p3, "sText"  # Ljava/lang/String;
    .param p4, "totalPop"  # J
    .param p6, "iPosX"  # I
    .param p7, "iPosY"  # I
    .param p8, "iWidth"  # I
    .param p9, "nCivID"  # I
    .param p10, "nPopulationPerc"  # Ljava/lang/String;

    .line 148
    move-object v10, p0

    move-object v11, p1

    iput-object v11, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/Population/Menu_InGame_View_PopulationCiv$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Population/Menu_InGame_View_PopulationCiv;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-wide/from16 v3, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Button/View/Button_View_PopulationCiv;-><init>(ILjava/lang/String;JIIIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public actionElem(I)V
    .registers 2
    .param p1, "iID"  # I

    .line 152
    return-void
.end method
