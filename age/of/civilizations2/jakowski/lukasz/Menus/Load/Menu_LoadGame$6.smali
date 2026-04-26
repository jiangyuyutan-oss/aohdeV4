.class Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame$6;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_ScenarioLoad;
.source "Menu_LoadGame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame;ILjava/lang/String;ILjava/lang/String;IIIIZ)V
    .registers 23
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame;
    .param p2, "iLoadID"  # I
    .param p3, "sText"  # Ljava/lang/String;
    .param p4, "iNumOfCivs"  # I
    .param p5, "sDate"  # Ljava/lang/String;
    .param p6, "iPosX"  # I
    .param p7, "iPosY"  # I
    .param p8, "iWidth"  # I
    .param p9, "iHeight"  # I
    .param p10, "isClickable"  # Z

    .line 172
    move-object v10, p0

    move-object v11, p1

    iput-object v11, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame$6;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_ScenarioLoad;-><init>(ILjava/lang/String;ILjava/lang/String;IIIIZ)V

    return-void
.end method


# virtual methods
.method public getIsClickable()Z
    .registers 2

    .line 175
    const/4 v0, 0x0

    return v0
.end method
