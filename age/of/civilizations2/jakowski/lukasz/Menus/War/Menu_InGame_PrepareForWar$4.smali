.class Lage/of/civilizations2/jakowski/lukasz/Menus/War/Menu_InGame_PrepareForWar$4;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_CallAllies;
.source "Menu_InGame_PrepareForWar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/War/Menu_InGame_PrepareForWar;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/War/Menu_InGame_PrepareForWar;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/War/Menu_InGame_PrepareForWar;IIIIII)V
    .registers 15
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/War/Menu_InGame_PrepareForWar;
    .param p2, "i"  # I
    .param p3, "iCivA"  # I
    .param p4, "onCivID"  # I
    .param p5, "iPosX"  # I
    .param p6, "iPosY"  # I
    .param p7, "iWidth"  # I

    .line 160
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/War/Menu_InGame_PrepareForWar$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/War/Menu_InGame_PrepareForWar;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_CallAllies;-><init>(IIIIII)V

    return-void
.end method


# virtual methods
.method public getWidthE()I
    .registers 2

    .line 163
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/War/Menu_InGame_PrepareForWar$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/War/Menu_InGame_PrepareForWar;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/War/Menu_InGame_PrepareForWar;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
