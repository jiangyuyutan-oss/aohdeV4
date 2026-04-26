.class Lage/of/civilizations2/jakowski/lukasz/Menus/War/Call/Menu_InGame_JoinAWar$1;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Message/Button_Diplomacy_Message_JoinAWar;
.source "Menu_InGame_JoinAWar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/War/Call/Menu_InGame_JoinAWar;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/War/Call/Menu_InGame_JoinAWar;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/War/Call/Menu_InGame_JoinAWar;Ljava/lang/String;IIIII)V
    .registers 15
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/War/Call/Menu_InGame_JoinAWar;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "nFromCivID"  # I
    .param p4, "warAgainstCivID"  # I
    .param p5, "iPosX"  # I
    .param p6, "iPosY"  # I
    .param p7, "iWidth"  # I

    .line 83
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/War/Call/Menu_InGame_JoinAWar$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/War/Call/Menu_InGame_JoinAWar;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Message/Button_Diplomacy_Message_JoinAWar;-><init>(Ljava/lang/String;IIIII)V

    return-void
.end method


# virtual methods
.method public getWidthE()I
    .registers 2

    .line 86
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/War/Call/Menu_InGame_JoinAWar$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/War/Call/Menu_InGame_JoinAWar;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/War/Call/Menu_InGame_JoinAWar;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
