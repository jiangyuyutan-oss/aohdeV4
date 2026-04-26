.class Lage/of/civilizations2/jakowski/lukasz/Menus/HRE/HRE/Menu_InGame_HRE$3;
.super Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextAlliesNotInWar;
.source "Menu_InGame_HRE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/HRE/HRE/Menu_InGame_HRE;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/HRE/HRE/Menu_InGame_HRE;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/HRE/HRE/Menu_InGame_HRE;Ljava/lang/String;IIIII)V
    .registers 15
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/HRE/HRE/Menu_InGame_HRE;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iTextPositionX"  # I
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "iWidth"  # I
    .param p7, "iHeight"  # I

    .line 90
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/HRE/HRE/Menu_InGame_HRE$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/HRE/HRE/Menu_InGame_HRE;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextAlliesNotInWar;-><init>(Ljava/lang/String;IIIII)V

    return-void
.end method


# virtual methods
.method public getWidthE()I
    .registers 2

    .line 93
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/HRE/HRE/Menu_InGame_HRE$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/HRE/HRE/Menu_InGame_HRE;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/HRE/HRE/Menu_InGame_HRE;->getW()I

    move-result v0

    return v0
.end method
