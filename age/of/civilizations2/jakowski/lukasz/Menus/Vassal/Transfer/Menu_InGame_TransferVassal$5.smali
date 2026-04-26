.class Lage/of/civilizations2/jakowski/lukasz/Menus/Vassal/Transfer/Menu_InGame_TransferVassal$5;
.super Lage/of/civilizations2/jakowski/lukasz/TextB/Text;
.source "Menu_InGame_TransferVassal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Vassal/Transfer/Menu_InGame_TransferVassal;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Vassal/Transfer/Menu_InGame_TransferVassal;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Vassal/Transfer/Menu_InGame_TransferVassal;Ljava/lang/String;IIIII)V
    .registers 15
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Vassal/Transfer/Menu_InGame_TransferVassal;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iTextPositionX"  # I
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "iWidth"  # I
    .param p7, "iHeight"  # I

    .line 186
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Vassal/Transfer/Menu_InGame_TransferVassal$5;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Vassal/Transfer/Menu_InGame_TransferVassal;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;-><init>(Ljava/lang/String;IIIII)V

    return-void
.end method


# virtual methods
.method public getWidthE()I
    .registers 2

    .line 189
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Vassal/Transfer/Menu_InGame_TransferVassal$5;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Vassal/Transfer/Menu_InGame_TransferVassal;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Vassal/Transfer/Menu_InGame_TransferVassal;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
