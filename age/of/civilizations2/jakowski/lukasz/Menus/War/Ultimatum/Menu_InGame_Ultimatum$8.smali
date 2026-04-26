.class Lage/of/civilizations2/jakowski/lukasz/Menus/War/Ultimatum/Menu_InGame_Ultimatum$8;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_Demand;
.source "Menu_InGame_Ultimatum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/War/Ultimatum/Menu_InGame_Ultimatum;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/War/Ultimatum/Menu_InGame_Ultimatum;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/War/Ultimatum/Menu_InGame_Ultimatum;Ljava/lang/String;IIII)V
    .registers 13
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/War/Ultimatum/Menu_InGame_Ultimatum;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "nCiv"  # I
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "iWidth"  # I

    .line 315
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/War/Ultimatum/Menu_InGame_Ultimatum$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/War/Ultimatum/Menu_InGame_Ultimatum;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_Demand;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method public actionElem(I)V
    .registers 4
    .param p1, "iID"  # I

    .line 323
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ultimatum:Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/War/Ultimatum/Menu_InGame_Ultimatum$8;->getCurr()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->updateLiberationDemand(I)V

    .line 324
    return-void
.end method

.method public getCheckboxSt()Z
    .registers 3

    .line 328
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ultimatum:Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/War/Ultimatum/Menu_InGame_Ultimatum$8;->getCurr()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->isLiberationDemanded(I)Z

    move-result v0

    return v0
.end method

.method public getWidthE()I
    .registers 2

    .line 318
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/War/Ultimatum/Menu_InGame_Ultimatum$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/War/Ultimatum/Menu_InGame_Ultimatum;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/War/Ultimatum/Menu_InGame_Ultimatum;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
