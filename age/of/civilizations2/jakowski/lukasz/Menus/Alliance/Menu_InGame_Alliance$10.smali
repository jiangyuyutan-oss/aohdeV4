.class Lage/of/civilizations2/jakowski/lukasz/Menus/Alliance/Menu_InGame_Alliance$10;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Stats/ButtonStats;
.source "Menu_InGame_Alliance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Alliance/Menu_InGame_Alliance;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Alliance/Menu_InGame_Alliance;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Alliance/Menu_InGame_Alliance;Ljava/lang/String;IIIII)V
    .registers 15
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Alliance/Menu_InGame_Alliance;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iTextPosX"  # I
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "iWidth"  # I
    .param p7, "iHeight"  # I

    .line 363
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Alliance/Menu_InGame_Alliance$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Alliance/Menu_InGame_Alliance;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Button/Stats/ButtonStats;-><init>(Ljava/lang/String;IIIII)V

    return-void
.end method


# virtual methods
.method public getPosXE()I
    .registers 3

    .line 366
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Alliance/Menu_InGame_Alliance$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Alliance/Menu_InGame_Alliance;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Alliance/Menu_InGame_Alliance;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getWidthE()I
    .registers 3

    .line 371
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Alliance/Menu_InGame_Alliance$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Alliance/Menu_InGame_Alliance;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Alliance/Menu_InGame_Alliance;->getW()I

    move-result v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Alliance/Menu_InGame_Alliance$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Alliance/Menu_InGame_Alliance;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Alliance/Menu_InGame_Alliance;->getElementW()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    return v0
.end method
