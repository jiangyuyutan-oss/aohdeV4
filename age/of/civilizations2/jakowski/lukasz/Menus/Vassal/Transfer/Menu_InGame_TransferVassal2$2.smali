.class Lage/of/civilizations2/jakowski/lukasz/Menus/Vassal/Transfer/Menu_InGame_TransferVassal2$2;
.super Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Desc;
.source "Menu_InGame_TransferVassal2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Vassal/Transfer/Menu_InGame_TransferVassal2;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Vassal/Transfer/Menu_InGame_TransferVassal2;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Vassal/Transfer/Menu_InGame_TransferVassal2;Ljava/lang/String;III)V
    .registers 6
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Vassal/Transfer/Menu_InGame_TransferVassal2;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "iWidth"  # I

    .line 66
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Vassal/Transfer/Menu_InGame_TransferVassal2$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Vassal/Transfer/Menu_InGame_TransferVassal2;

    invoke-direct {p0, p2, p3, p4, p5}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Desc;-><init>(Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"  # Z

    .line 69
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Vassal/Transfer/Menu_InGame_TransferVassal2$2;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Colors;->getColorButtonHover2(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public getWidthE()I
    .registers 2

    .line 74
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Vassal/Transfer/Menu_InGame_TransferVassal2$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Vassal/Transfer/Menu_InGame_TransferVassal2;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Vassal/Transfer/Menu_InGame_TransferVassal2;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
