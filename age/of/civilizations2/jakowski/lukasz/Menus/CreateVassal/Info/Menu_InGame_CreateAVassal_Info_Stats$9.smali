.class Lage/of/civilizations2/jakowski/lukasz/Menus/CreateVassal/Info/Menu_InGame_CreateAVassal_Info_Stats$9;
.super Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextLeftSide_Icon;
.source "Menu_InGame_CreateAVassal_Info_Stats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/CreateVassal/Info/Menu_InGame_CreateAVassal_Info_Stats;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/CreateVassal/Info/Menu_InGame_CreateAVassal_Info_Stats;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/CreateVassal/Info/Menu_InGame_CreateAVassal_Info_Stats;Ljava/lang/String;III)V
    .registers 6
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/CreateVassal/Info/Menu_InGame_CreateAVassal_Info_Stats;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "iImageID"  # I

    .line 125
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/CreateVassal/Info/Menu_InGame_CreateAVassal_Info_Stats$9;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/CreateVassal/Info/Menu_InGame_CreateAVassal_Info_Stats;

    invoke-direct {p0, p2, p3, p4, p5}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextLeftSide_Icon;-><init>(Ljava/lang/String;III)V

    return-void
.end method
