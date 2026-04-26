.class Lage/of/civilizations2/jakowski/lukasz/Menus/HRE/HRE/Menu_InGame_HRE$4;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Button_HRE_Elector;
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
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/HRE/HRE/Menu_InGame_HRE;IIIII)V
    .registers 13
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/HRE/HRE/Menu_InGame_HRE;
    .param p2, "nCivID"  # I
    .param p3, "votesFor"  # I
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "iWidth"  # I

    .line 108
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/HRE/HRE/Menu_InGame_HRE$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/HRE/HRE/Menu_InGame_HRE;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_HRE_Elector;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public getWidthE()I
    .registers 2

    .line 111
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/HRE/HRE/Menu_InGame_HRE$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/HRE/HRE/Menu_InGame_HRE;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/HRE/HRE/Menu_InGame_HRE;->getW()I

    move-result v0

    return v0
.end method
