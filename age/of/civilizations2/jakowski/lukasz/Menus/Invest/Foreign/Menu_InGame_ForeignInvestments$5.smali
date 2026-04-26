.class Lage/of/civilizations2/jakowski/lukasz/Menus/Invest/Foreign/Menu_InGame_ForeignInvestments$5;
.super Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Population/ButtonN_Pop_TextRight_2Civs;
.source "Menu_InGame_ForeignInvestments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Invest/Foreign/Menu_InGame_ForeignInvestments;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Invest/Foreign/Menu_InGame_ForeignInvestments;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Invest/Foreign/Menu_InGame_ForeignInvestments;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;IIILjava/lang/String;II)V
    .registers 31
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Invest/Foreign/Menu_InGame_ForeignInvestments;
    .param p2, "nColor"  # Lcom/badlogic/gdx/graphics/Color;
    .param p3, "sText"  # Ljava/lang/String;
    .param p4, "nCivID"  # I
    .param p5, "sTextLeft"  # Ljava/lang/String;
    .param p6, "nPop"  # Ljava/lang/String;
    .param p7, "iImageID"  # I
    .param p8, "textColor"  # Lcom/badlogic/gdx/graphics/Color;
    .param p9, "iPosX"  # I
    .param p10, "iPosY"  # I
    .param p11, "iWidth"  # I
    .param p12, "textRight"  # Ljava/lang/String;
    .param p13, "imageRight"  # I
    .param p14, "civID2"  # I

    .line 116
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    iput-object v15, v14, Lage/of/civilizations2/jakowski/lukasz/Menus/Invest/Foreign/Menu_InGame_ForeignInvestments$5;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Invest/Foreign/Menu_InGame_ForeignInvestments;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move-object/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    invoke-direct/range {v0 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Population/ButtonN_Pop_TextRight_2Civs;-><init>(Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;IIILjava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public actionElem(I)V
    .registers 2
    .param p1, "iID"  # I

    .line 131
    return-void
.end method

.method public buildElemHover()V
    .registers 1

    .line 121
    return-void
.end method

.method public getWidthE()I
    .registers 2

    .line 125
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Invest/Foreign/Menu_InGame_ForeignInvestments$5;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Invest/Foreign/Menu_InGame_ForeignInvestments;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Invest/Foreign/Menu_InGame_ForeignInvestments;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
