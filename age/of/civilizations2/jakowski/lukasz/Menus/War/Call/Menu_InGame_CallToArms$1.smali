.class Lage/of/civilizations2/jakowski/lukasz/Menus/War/Call/Menu_InGame_CallToArms$1;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_CallToArms;
.source "Menu_InGame_CallToArms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/War/Call/Menu_InGame_CallToArms;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/War/Call/Menu_InGame_CallToArms;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/War/Call/Menu_InGame_CallToArms;ILjava/lang/String;IIIII)V
    .registers 19
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/War/Call/Menu_InGame_CallToArms;
    .param p2, "iImageID"  # I
    .param p3, "sText"  # Ljava/lang/String;
    .param p4, "warAgainstCivID"  # I
    .param p5, "iPosX"  # I
    .param p6, "iPosY"  # I
    .param p7, "iWidth"  # I
    .param p8, "nCOST"  # I

    .line 78
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Lage/of/civilizations2/jakowski/lukasz/Menus/War/Call/Menu_InGame_CallToArms$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/War/Call/Menu_InGame_CallToArms;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_CallToArms;-><init>(ILjava/lang/String;IIIII)V

    return-void
.end method


# virtual methods
.method public getWidthE()I
    .registers 2

    .line 81
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/War/Call/Menu_InGame_CallToArms$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/War/Call/Menu_InGame_CallToArms;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/War/Call/Menu_InGame_CallToArms;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
