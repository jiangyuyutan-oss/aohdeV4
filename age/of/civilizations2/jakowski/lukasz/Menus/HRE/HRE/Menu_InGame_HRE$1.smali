.class Lage/of/civilizations2/jakowski/lukasz/Menus/HRE/HRE/Menu_InGame_HRE$1;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Button_HRE_Emperor;
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
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/HRE/HRE/Menu_InGame_HRE;IIII)V
    .registers 6
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/HRE/HRE/Menu_InGame_HRE;
    .param p2, "nCivID"  # I
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "iWidth"  # I

    .line 70
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/HRE/HRE/Menu_InGame_HRE$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/HRE/HRE/Menu_InGame_HRE;

    invoke-direct {p0, p2, p3, p4, p5}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_HRE_Emperor;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public getWidthE()I
    .registers 2

    .line 73
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/HRE/HRE/Menu_InGame_HRE$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/HRE/HRE/Menu_InGame_HRE;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/HRE/HRE/Menu_InGame_HRE;->getW()I

    move-result v0

    return v0
.end method
