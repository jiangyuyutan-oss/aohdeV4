.class Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Exp/Menu_InGame_MilitaryExp$2;
.super Lage/of/civilizations2/jakowski/lukasz/Button/ButtonN_Exp;
.source "Menu_InGame_MilitaryExp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Exp/Menu_InGame_MilitaryExp;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Exp/Menu_InGame_MilitaryExp;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Exp/Menu_InGame_MilitaryExp;IIIII)V
    .registers 13
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Exp/Menu_InGame_MilitaryExp;
    .param p2, "nCivID"  # I
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "iWidth"  # I
    .param p6, "iHeight"  # I

    .line 64
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Exp/Menu_InGame_MilitaryExp$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Exp/Menu_InGame_MilitaryExp;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonN_Exp;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public getWidthE()I
    .registers 2

    .line 67
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Exp/Menu_InGame_MilitaryExp$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Exp/Menu_InGame_MilitaryExp;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Exp/Menu_InGame_MilitaryExp;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
