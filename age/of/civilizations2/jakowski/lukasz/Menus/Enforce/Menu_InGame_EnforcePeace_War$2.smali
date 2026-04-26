.class Lage/of/civilizations2/jakowski/lukasz/Menus/Enforce/Menu_InGame_EnforcePeace_War$2;
.super Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_Opinion;
.source "Menu_InGame_EnforcePeace_War.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Enforce/Menu_InGame_EnforcePeace_War;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Enforce/Menu_InGame_EnforcePeace_War;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Enforce/Menu_InGame_EnforcePeace_War;IIIIIIII)V
    .registers 21
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Enforce/Menu_InGame_EnforcePeace_War;
    .param p2, "iCivA"  # I
    .param p3, "iCivB"  # I
    .param p4, "nImageID"  # I
    .param p5, "nCost"  # I
    .param p6, "nDiploCost"  # I
    .param p7, "iPosX"  # I
    .param p8, "iPosY"  # I
    .param p9, "iWidth"  # I

    .line 69
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Enforce/Menu_InGame_EnforcePeace_War$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Enforce/Menu_InGame_EnforcePeace_War;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_Opinion;-><init>(IIIIIIII)V

    return-void
.end method


# virtual methods
.method public getWidthE()I
    .registers 2

    .line 72
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Enforce/Menu_InGame_EnforcePeace_War$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Enforce/Menu_InGame_EnforcePeace_War;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Enforce/Menu_InGame_EnforcePeace_War;->getElementW()I

    move-result v0

    return v0
.end method
