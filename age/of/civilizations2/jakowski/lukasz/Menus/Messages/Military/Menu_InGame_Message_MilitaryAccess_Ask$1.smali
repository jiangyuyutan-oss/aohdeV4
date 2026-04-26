.class Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Military/Menu_InGame_Message_MilitaryAccess_Ask$1;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Message/Button_Diplomacy_Message_Pact;
.source "Menu_InGame_Message_MilitaryAccess_Ask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Military/Menu_InGame_Message_MilitaryAccess_Ask;-><init>(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Military/Menu_InGame_Message_MilitaryAccess_Ask;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Military/Menu_InGame_Message_MilitaryAccess_Ask;ILjava/lang/String;ILjava/lang/String;III)V
    .registers 19
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Military/Menu_InGame_Message_MilitaryAccess_Ask;
    .param p2, "nImageID"  # I
    .param p3, "sText"  # Ljava/lang/String;
    .param p4, "nAggressor"  # I
    .param p5, "sRight"  # Ljava/lang/String;
    .param p6, "iPosX"  # I
    .param p7, "iPosY"  # I
    .param p8, "iWidth"  # I

    .line 77
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Military/Menu_InGame_Message_MilitaryAccess_Ask$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Military/Menu_InGame_Message_MilitaryAccess_Ask;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Message/Button_Diplomacy_Message_Pact;-><init>(ILjava/lang/String;ILjava/lang/String;III)V

    return-void
.end method


# virtual methods
.method public getWidthE()I
    .registers 2

    .line 80
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Military/Menu_InGame_Message_MilitaryAccess_Ask$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Military/Menu_InGame_Message_MilitaryAccess_Ask;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Military/Menu_InGame_Message_MilitaryAccess_Ask;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
