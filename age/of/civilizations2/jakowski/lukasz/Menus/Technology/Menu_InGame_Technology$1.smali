.class Lage/of/civilizations2/jakowski/lukasz/Menus/Technology/Menu_InGame_Technology$1;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Button_Technology;
.source "Menu_InGame_Technology.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Technology/Menu_InGame_Technology;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Technology/Menu_InGame_Technology;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Technology/Menu_InGame_Technology;IIII)V
    .registers 6
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Technology/Menu_InGame_Technology;
    .param p2, "nCivID"  # I
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "iWidth"  # I

    .line 93
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Technology/Menu_InGame_Technology$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Technology/Menu_InGame_Technology;

    invoke-direct {p0, p2, p3, p4, p5}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Technology;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public actionElem(I)V
    .registers 5
    .param p1, "iID"  # I

    .line 101
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_TECHNOLOGY_MODE:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->setActiveMapModeID(IZ)V

    .line 102
    return-void
.end method

.method public getWidthE()I
    .registers 2

    .line 96
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Technology/Menu_InGame_Technology$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Technology/Menu_InGame_Technology;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Technology/Menu_InGame_Technology;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
