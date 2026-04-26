.class public Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;
.super Lage/of/civilizations2/jakowski/lukasz/Menu;
.source "Menu_MM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$CivData;
    }
.end annotation


# static fields
.field public static answerChosen:I

.field public static answerClickTime:J

.field public static answers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static gameWon:Z

.field public static goBack:Lage/of/civilizations2/jakowski/lukasz/View;

.field public static isAnimating:Z

.field public static money:[I

.field public static questionCivID:I

.field public static questionID:I

.field public static textUpdated:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 54
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/View;->eMAINMENU:Lage/of/civilizations2/jakowski/lukasz/View;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->goBack:Lage/of/civilizations2/jakowski/lukasz/View;

    .line 56
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->questionID:I

    .line 58
    const/16 v1, 0xf

    new-array v1, v1, [I

    fill-array-data v1, :array_28

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->money:[I

    .line 69
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->questionCivID:I

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->answers:Ljava/util/List;

    .line 73
    const/4 v1, -0x1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->answerChosen:I

    .line 74
    const-wide/16 v1, 0x0

    sput-wide v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->answerClickTime:J

    .line 75
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->isAnimating:Z

    .line 76
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->textUpdated:Z

    .line 78
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->gameWon:Z

    return-void

    nop

    :array_28
    .array-data 4
        0x64
        0xc8
        0x12c
        0x1f4
        0x3e8
        0x7d0
        0xfa0
        0x1f40
        0x3e80
        0x7d00
        0xfa00
        0x1e848
        0x3d090
        0x7a120
        0xf4240
    .end array-data
.end method

.method public constructor <init>()V
    .registers 21

    .line 198
    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;-><init>()V

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->nextQuestion()V

    .line 203
    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    .line 204
    .local v10, "tempW":I
    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    .line 206
    .local v9, "tY":I
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Civilization/Menu_InGame_Civ_Decisions;->getButtonH()I

    move-result v11

    .line 208
    .local v11, "tempElemH":I
    new-instance v12, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$1;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v2, "Back"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v7, v10, v1

    const/4 v4, -0x1

    const/4 v8, 0x1

    move-object v1, v12

    move-object/from16 v2, p0

    move v6, v9

    invoke-direct/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;Ljava/lang/String;IIIIZ)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v1, v2

    add-int/2addr v9, v1

    .line 216
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$2;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v3, "Progress"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v18, v10, -0x4

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x4

    add-int v19, v2, v3

    const/4 v15, -0x1

    const/16 v16, 0x2

    move-object v12, v1

    move-object/from16 v13, p0

    move/from16 v17, v9

    invoke-direct/range {v12 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;Ljava/lang/String;IIIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v1

    add-int/2addr v9, v1

    .line 225
    const/4 v1, 0x0

    move v8, v1

    move v12, v9

    .end local v9  # "tY":I
    .local v8, "i":I
    .local v12, "tY":I
    :goto_7b
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->money:[I

    array-length v1, v1

    if-ge v8, v1, :cond_10a

    .line 226
    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v8, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->money:[I

    aget v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumberWthSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Images;->topGold()I

    move-result v4

    const/4 v5, 0x0

    move-object v1, v9

    move-object/from16 v2, p0

    move v6, v12

    move v7, v10

    invoke-direct/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;Ljava/lang/String;IIII)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1, v11}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setHeightE(I)V

    .line 245
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    rem-int/lit8 v2, v8, 0x2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCurr(I)V

    .line 246
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1, v8}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setMax(I)V

    .line 247
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v1

    add-int/2addr v12, v1

    .line 225
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_7b

    .line 250
    .end local v8  # "i":I
    :cond_10a
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$4;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v4, v1, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, "Money Tree"

    move-object v1, v7

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;Ljava/lang/String;IZZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sub-int/2addr v1, v10

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->PADDING:I

    sub-int v3, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->topBar2:I

    .line 278
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    add-int v4, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sub-int/2addr v1, v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosY()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v5

    add-int/2addr v2, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v2, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 250
    move-object/from16 v1, p0

    move-object v2, v7

    move v5, v10

    move-object v7, v0

    invoke-virtual/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;ZZ)V

    .line 279
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->updateLang()V

    .line 280
    return-void
.end method

.method public static getCivByPercentile()V
    .registers 12

    .line 94
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->getSortedCivs()Ljava/util/ArrayList;

    move-result-object v0

    .line 97
    .local v0, "civs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$CivData;>;"
    const/4 v1, 0x0

    const/4 v2, 0x3

    :try_start_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 101
    .local v3, "total":I
    sget v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->questionID:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_a9

    const/4 v5, 0x2

    const/16 v6, 0xb

    if-gt v4, v5, :cond_17

    const-wide v4, 0x3fa999999999999aL  # 0.05

    .local v4, "percent":D
    goto :goto_3d

    .line 102
    .end local v4  # "percent":D
    :cond_17
    const/4 v5, 0x4

    if-gt v4, v5, :cond_20

    const-wide v4, 0x3fb999999999999aL  # 0.1

    .restart local v4  # "percent":D
    goto :goto_3d

    .line 103
    .end local v4  # "percent":D
    :cond_20
    const/4 v5, 0x6

    if-gt v4, v5, :cond_29

    const-wide v4, 0x3fc999999999999aL  # 0.2

    .restart local v4  # "percent":D
    goto :goto_3d

    .line 104
    .end local v4  # "percent":D
    :cond_29
    const/16 v5, 0x8

    if-gt v4, v5, :cond_33

    const-wide v4, 0x3fd3333333333333L  # 0.3

    .restart local v4  # "percent":D
    goto :goto_3d

    .line 105
    .end local v4  # "percent":D
    :cond_33
    if-gt v4, v6, :cond_38

    const-wide/high16 v4, 0x3fe0000000000000L  # 0.5

    .restart local v4  # "percent":D
    goto :goto_3d

    .line 106
    .end local v4  # "percent":D
    :cond_38
    const-wide v4, 0x3fb999999999999aL  # 0.1

    .line 108
    .restart local v4  # "percent":D
    :goto_3d
    int-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v4

    double-to-int v7, v7

    const/4 v8, 0x1

    :try_start_45
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 112
    .local v7, "rangeSize":I
    sget v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->questionID:I

    if-gt v8, v6, :cond_4f

    .line 113
    const/4 v6, 0x0

    .local v6, "startIndex":I
    goto :goto_51

    .line 115
    .end local v6  # "startIndex":I
    :cond_4f
    sub-int v6, v3, v7

    .line 118
    .restart local v6  # "startIndex":I
    :goto_51
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v8, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int/2addr v8, v6

    .line 120
    .local v8, "index":I
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->answers:Ljava/util/List;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$CivData;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$CivData;->civID:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 123
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_6d
    if-ge v9, v2, :cond_97

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_97

    .line 124
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    move v8, v10

    .line 125
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->answers:Ljava/util/List;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$CivData;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$CivData;->civID:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 123
    add-int/lit8 v9, v9, 0x1

    goto :goto_6d

    .line 129
    .end local v9  # "i":I
    :cond_97
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->answers:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sput v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->questionCivID:I

    .line 130
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->shuffleV()V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_a8} :catch_a9

    .line 132
    return-void

    .line 133
    .end local v3  # "total":I
    .end local v4  # "percent":D
    .end local v6  # "startIndex":I
    .end local v7  # "rangeSize":I
    .end local v8  # "index":I
    :catch_a9
    move-exception v3

    .line 137
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 139
    .local v3, "index":I
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->answers:Ljava/util/List;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$CivData;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$CivData;->civID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 142
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c9
    if-ge v4, v2, :cond_f2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f2

    .line 143
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 144
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->answers:Ljava/util/List;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$CivData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$CivData;->civID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 142
    add-int/lit8 v4, v4, 0x1

    goto :goto_c9

    .line 148
    .end local v4  # "i":I
    :cond_f2
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->answers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->questionCivID:I

    .line 149
    return-void
.end method

.method public static getSortedCivs()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$CivData;",
            ">;"
        }
    .end annotation

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$CivData;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_6
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 175
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    iget-boolean v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REVOLUTIONARY:Z

    if-eqz v2, :cond_23

    .line 176
    goto :goto_35

    .line 179
    :cond_23
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v2

    .line 180
    .local v2, "provs":I
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$CivData;

    invoke-direct {v3, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$CivData;-><init>(II)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .end local v2  # "provs":I
    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 183
    .end local v1  # "i":I
    :cond_38
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 185
    return-object v0
.end method

.method static synthetic lambda$getSortedCivs$0(Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$CivData;Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$CivData;)I
    .registers 4
    .param p0, "a"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$CivData;
    .param p1, "b"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$CivData;

    .line 183
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$CivData;->provinces:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$CivData;->provinces:I

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$$ExternalSyntheticBackport0;->m(II)I

    move-result v0

    return v0
.end method

.method public static nextQuestion()V
    .registers 1

    .line 82
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->isAnimating:Z

    .line 83
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->textUpdated:Z

    .line 84
    const/4 v0, -0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->answerChosen:I

    .line 85
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->answers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 87
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->getCivByPercentile()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_11

    .line 90
    goto :goto_12

    .line 88
    :catch_11
    move-exception v0

    .line 91
    :goto_12
    return-void
.end method

.method public static shuffleV()V
    .registers 4

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v0, "tList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->answers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 157
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->answers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 160
    .end local v1  # "i":I
    :cond_1c
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->answers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 162
    :goto_21
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_40

    .line 163
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 165
    .local v1, "rand":I
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->answers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 167
    .end local v1  # "rand":I
    goto :goto_21

    .line 168
    :cond_40
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 14
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 284
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gameTopEdge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->getPosX()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->PADDING:I

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gameTopEdge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->getWidthM()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gameTopEdge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int v5, v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->getHeightM()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->PADDING:I

    add-int v6, v0, v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 285
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gameTopEdge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->getPosX()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->PADDING:I

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->getWidthM()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gameTopEdge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gameTopEdge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gameTopEdge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->getHeightM()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->PADDING:I

    add-int v6, v0, v2

    const/4 v7, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 287
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 288
    return-void
.end method

.method public drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 5
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 292
    if-eqz p4, :cond_5

    .line 293
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 295
    :cond_5
    return-void
.end method
