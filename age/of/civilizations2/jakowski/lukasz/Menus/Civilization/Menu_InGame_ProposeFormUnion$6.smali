.class Lage/of/civilizations2/jakowski/lukasz/Menus/Civilization/Menu_InGame_ProposeFormUnion$6;
.super Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3;
.source "Menu_InGame_ProposeFormUnion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Civilization/Menu_InGame_ProposeFormUnion;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Civilization/Menu_InGame_ProposeFormUnion;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Civilization/Menu_InGame_ProposeFormUnion;IIIII)V
    .registers 13
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Civilization/Menu_InGame_ProposeFormUnion;
    .param p2, "iCivA"  # I
    .param p3, "nImageID"  # I
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "iWidth"  # I

    .line 118
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Civilization/Menu_InGame_ProposeFormUnion$6;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Civilization/Menu_InGame_ProposeFormUnion;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public getWidthE()I
    .registers 2

    .line 121
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Civilization/Menu_InGame_ProposeFormUnion$6;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Civilization/Menu_InGame_ProposeFormUnion;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Civilization/Menu_InGame_ProposeFormUnion;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
