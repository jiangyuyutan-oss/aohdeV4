.class Lage/of/civilizations2/jakowski/lukasz/Menus/War/Call/Menu_InGame_CallToArms$3;
.super Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;
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
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/War/Call/Menu_InGame_CallToArms;Ljava/lang/String;IIIIIF)V
    .registers 19
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/War/Call/Menu_InGame_CallToArms;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iTextPositionX"  # I
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "iWidth"  # I
    .param p7, "iHeight"  # I
    .param p8, "nScale"  # F

    .line 106
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Lage/of/civilizations2/jakowski/lukasz/Menus/War/Call/Menu_InGame_CallToArms$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/War/Call/Menu_InGame_CallToArms;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;-><init>(Ljava/lang/String;IIIIIF)V

    return-void
.end method


# virtual methods
.method public getWidthE()I
    .registers 2

    .line 109
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/War/Call/Menu_InGame_CallToArms$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/War/Call/Menu_InGame_CallToArms;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/War/Call/Menu_InGame_CallToArms;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
