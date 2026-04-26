.class public Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;
.super Lage/of/civilizations2/jakowski/lukasz/Menu;
.source "Menu_InGame_OutlinerStats.java"


# static fields
.field public static final ANIMATION_TIME:I = 0x87

.field public static hideAnimation:Z

.field public static lTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    const-wide/16 v0, 0x0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->lTime:J

    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->hideAnimation:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 21

    .line 43
    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->getMenuW()I

    move-result v10

    .line 47
    .local v10, "tMenuWidth":I
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const/4 v4, 0x4

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 48
    .local v19, "tElementH":I
    const/4 v1, 0x0

    .line 51
    .local v1, "tPosY":I
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$1;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v14, v3, 0x2

    add-int/lit8 v17, v10, -0x2

    const/4 v13, 0x0

    const/4 v15, 0x2

    move-object v11, v2

    move-object/from16 v12, p0

    move/from16 v16, v1

    move/from16 v18, v19

    invoke-direct/range {v11 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;Ljava/lang/String;IIIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    add-int v1, v1, v19

    .line 87
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$2;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v14, v3, 0x2

    add-int/lit8 v17, v10, -0x2

    move-object v11, v2

    move/from16 v16, v1

    invoke-direct/range {v11 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;Ljava/lang/String;IIIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    add-int v1, v1, v19

    .line 129
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$3;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v14, v3, 0x2

    add-int/lit8 v17, v10, -0x2

    move-object v11, v2

    move/from16 v16, v1

    invoke-direct/range {v11 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;Ljava/lang/String;IIIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    add-int v1, v1, v19

    .line 171
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$4;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v14, v3, 0x2

    add-int/lit8 v17, v10, -0x2

    move-object v11, v2

    move/from16 v16, v1

    invoke-direct/range {v11 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;Ljava/lang/String;IIIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    add-int v1, v1, v19

    .line 212
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$5;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v14, v3, 0x2

    add-int/lit8 v17, v10, -0x2

    move-object v11, v2

    move/from16 v16, v1

    invoke-direct/range {v11 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;Ljava/lang/String;IIIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    add-int v1, v1, v19

    .line 226
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$6;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v14, v3, 0x2

    add-int/lit8 v17, v10, -0x2

    move-object v11, v2

    move/from16 v16, v1

    invoke-direct/range {v11 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;Ljava/lang/String;IIIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    add-int v1, v1, v19

    .line 240
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$7;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v14, v3, 0x2

    add-int/lit8 v17, v10, -0x2

    move-object v11, v2

    move/from16 v16, v1

    invoke-direct/range {v11 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$7;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;Ljava/lang/String;IIIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    add-int v1, v1, v19

    .line 254
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$8;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v14, v3, 0x2

    add-int/lit8 v17, v10, -0x2

    move-object v11, v2

    move/from16 v16, v1

    invoke-direct/range {v11 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$8;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;Ljava/lang/String;IIIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    add-int v1, v1, v19

    .line 268
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$9;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v14, v3, 0x2

    add-int/lit8 v17, v10, -0x2

    move-object v11, v2

    move/from16 v16, v1

    invoke-direct/range {v11 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$9;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;Ljava/lang/String;IIIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    add-int v1, v1, v19

    .line 281
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$10;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v14, v3, 0x2

    add-int/lit8 v17, v10, -0x2

    move-object v11, v2

    move/from16 v16, v1

    invoke-direct/range {v11 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$10;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;Ljava/lang/String;IIIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    add-int v1, v1, v19

    .line 295
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$11;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v14, v3, 0x2

    add-int/lit8 v17, v10, -0x2

    move-object v11, v2

    move/from16 v16, v1

    invoke-direct/range {v11 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$11;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;Ljava/lang/String;IIIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    add-int v1, v1, v19

    .line 309
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$12;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v14, v3, 0x2

    add-int/lit8 v17, v10, -0x2

    move-object v11, v2

    move/from16 v16, v1

    invoke-direct/range {v11 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$12;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;Ljava/lang/String;IIIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    add-int v1, v1, v19

    .line 325
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$13;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v14, v3, 0x2

    add-int/lit8 v17, v10, -0x2

    move-object v11, v2

    move/from16 v16, v1

    invoke-direct/range {v11 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$13;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;Ljava/lang/String;IIIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    add-int v1, v1, v19

    .line 341
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$14;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v14, v3, 0x2

    add-int/lit8 v17, v10, -0x2

    move-object v11, v2

    move/from16 v16, v1

    invoke-direct/range {v11 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$14;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;Ljava/lang/String;IIIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    add-int v1, v1, v19

    .line 357
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$15;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v14, v3, 0x2

    add-int/lit8 v17, v10, -0x2

    move-object v11, v2

    move/from16 v16, v1

    invoke-direct/range {v11 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;Ljava/lang/String;IIIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    add-int v1, v1, v19

    .line 371
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$16;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v14, v3, 0x2

    add-int/lit8 v17, v10, -0x2

    move-object v11, v2

    move/from16 v16, v1

    invoke-direct/range {v11 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$16;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;Ljava/lang/String;IIIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    add-int v1, v1, v19

    .line 382
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$17;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v14, v3, 0x2

    add-int/lit8 v17, v10, -0x2

    move-object v11, v2

    move/from16 v16, v1

    invoke-direct/range {v11 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$17;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;Ljava/lang/String;IIIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    add-int v1, v1, v19

    .line 397
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$18;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v14, v3, 0x2

    add-int/lit8 v17, v10, -0x2

    move-object v11, v2

    move/from16 v16, v1

    invoke-direct/range {v11 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$18;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;Ljava/lang/String;IIIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    add-int v1, v1, v19

    .line 412
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$19;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v14, v3, 0x2

    add-int/lit8 v17, v10, -0x2

    move-object v11, v2

    move/from16 v16, v1

    invoke-direct/range {v11 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$19;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;Ljava/lang/String;IIIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    add-int v1, v1, v19

    .line 427
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$20;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v14, v3, 0x2

    add-int/lit8 v17, v10, -0x2

    move-object v11, v2

    move/from16 v16, v1

    invoke-direct/range {v11 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats$20;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;Ljava/lang/String;IIIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    add-int v11, v1, v19

    .line 442
    .end local v1  # "tPosY":I
    .local v11, "tPosY":I
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sub-int v3, v1, v10

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->topBar:I

    .line 445
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v1, v2

    .line 447
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v1

    if-eqz v1, :cond_1ba

    goto :goto_1bb

    :cond_1ba
    const/4 v4, 0x5

    :goto_1bb
    mul-int v4, v4, v19

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosY()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 442
    const/4 v2, 0x0

    move-object/from16 v1, p0

    move v4, v5

    move v5, v10

    move-object v7, v0

    invoke-virtual/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;ZZ)V

    .line 454
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1ee
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->getMenuElemsSize()I

    move-result v2

    if-ge v1, v2, :cond_202

    .line 455
    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v3

    rem-int/lit8 v4, v1, 0x2

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCurr(I)V

    .line 454
    add-int/lit8 v1, v1, 0x1

    goto :goto_1ee

    :cond_202
    move-object/from16 v2, p0

    .line 458
    .end local v1  # "i":I
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->updateLang()V

    .line 459
    return-void
.end method

.method public static getMenuW()I
    .registers 1

    .line 40
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    mul-int/lit8 v0, v0, 0x6

    div-int/lit8 v0, v0, 0xa

    return v0
.end method


# virtual methods
.method public actionEL(I)V
    .registers 3
    .param p1, "iID"  # I

    .line 545
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->actionElem(I)V

    .line 546
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 14
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 495
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->lTime:J

    const-wide/16 v2, 0x87

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-ltz v5, :cond_42

    .line 496
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->hideAnimation:Z

    const/high16 v1, 0x43070000  # 135.0f

    if-eqz v0, :cond_27

    .line 497
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->getWidthM()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->lTime:J

    sub-long/2addr v2, v5

    long-to-float v2, v2

    div-float/2addr v2, v1

    mul-float v0, v0, v2

    float-to-int v0, v0

    add-int/2addr p2, v0

    goto :goto_3e

    .line 500
    :cond_27
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->getWidthM()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->getWidthM()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->lTime:J

    sub-long/2addr v5, v7

    long-to-float v3, v5

    div-float/2addr v3, v1

    mul-float v2, v2, v3

    float-to-int v1, v2

    sub-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 503
    :goto_3e
    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    goto :goto_88

    .line 504
    :cond_42
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->hideAnimation:Z

    if-eqz v0, :cond_88

    .line 505
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->setVisibleM(Z)V

    .line 506
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getMenu_InGame_CurrentWars()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->topBar:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu;->setPosY(I)V

    .line 507
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getMenu_InGame_CurrentWars_Info()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getMenu_InGame_CurrentWars()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosY()I

    move-result v1

    sub-int/2addr v1, v4

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getMenu_InGame_CurrentWars()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getHeightM()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu;->setPosY(I)V

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;->lTime:J

    .line 510
    return-void

    .line 515
    :cond_88
    :goto_88
    add-int/lit8 v0, p3, 0x1

    invoke-super {p0, p1, p2, v0, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 526
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 527
    return-void
.end method

.method public drawCloseButton(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 5
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 539
    return-void
.end method

.method public drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 6
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 531
    if-eqz p4, :cond_8

    .line 532
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v0, p2

    invoke-super {p0, p1, v0, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 534
    :cond_8
    return-void
.end method

.method public final setHideAnimation(Z)V
    .registers 10
    .param p1, "hideAnimation"  # Z

    .line 563
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->hideAnimation:Z

    if-eq p1, v0, :cond_2b

    .line 564
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->lTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x87

    sub-long/2addr v2, v4

    cmp-long v6, v0, v2

    if-lez v6, :cond_21

    .line 565
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v6, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->lTime:J

    sub-long/2addr v2, v6

    sub-long/2addr v4, v2

    sub-long/2addr v0, v4

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->lTime:J

    goto :goto_27

    .line 568
    :cond_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->lTime:J

    .line 571
    :goto_27
    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    .line 575
    :cond_2b
    sput-boolean p1, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->hideAnimation:Z

    .line 576
    return-void
.end method

.method public setVisibleM(Z)V
    .registers 6
    .param p1, "visible"  # Z

    .line 550
    const/4 v0, 0x1

    if-eqz p1, :cond_3c

    .line 551
    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu;->setVisibleM(Z)V

    .line 552
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->setHideAnimation(Z)V

    .line 554
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getMenu_InGame_CurrentWars()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->getHeightM()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu;->setPosY(I)V

    .line 555
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getMenu_InGame_CurrentWars_Info()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getMenu_InGame_CurrentWars()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosY()I

    move-result v2

    sub-int/2addr v2, v0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getMenu_InGame_CurrentWars()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getHeightM()I

    move-result v0

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu;->setPosY(I)V

    goto :goto_3f

    .line 558
    :cond_3c
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->setHideAnimation(Z)V

    .line 560
    :goto_3f
    return-void
.end method

.method public updateLang()V
    .registers 6

    .line 465
    const/4 v0, 0x0

    .line 467
    .local v0, "tID":I
    add-int/lit8 v1, v0, 0x1

    .end local v0  # "tID":I
    .local v1, "tID":I
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v3, "Audio"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 469
    add-int/lit8 v0, v1, 0x1

    .end local v1  # "tID":I
    .restart local v0  # "tID":I
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v3, "Wars"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 470
    add-int/lit8 v1, v0, 0x1

    .end local v0  # "tID":I
    .restart local v1  # "tID":I
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v3, "Alliances"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 471
    add-int/lit8 v0, v1, 0x1

    .end local v1  # "tID":I
    .restart local v0  # "tID":I
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v3, "Ranking"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 472
    add-int/lit8 v1, v0, 0x1

    .end local v0  # "tID":I
    .restart local v1  # "tID":I
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v3, "Wonders"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 473
    add-int/lit8 v0, v1, 0x1

    .end local v1  # "tID":I
    .restart local v0  # "tID":I
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v3, "Population"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 474
    add-int/lit8 v1, v0, 0x1

    .end local v0  # "tID":I
    .restart local v1  # "tID":I
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v4, "Economy"

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 475
    add-int/lit8 v0, v1, 0x1

    .end local v1  # "tID":I
    .restart local v0  # "tID":I
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v4, "HolyRomanEmpire"

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 476
    add-int/lit8 v1, v0, 0x1

    .end local v0  # "tID":I
    .restart local v1  # "tID":I
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v4, "ConqueredProvinces"

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 477
    add-int/lit8 v0, v1, 0x1

    .end local v1  # "tID":I
    .restart local v0  # "tID":I
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v4, "VictoryConditions"

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 478
    add-int/lit8 v1, v0, 0x1

    .end local v0  # "tID":I
    .restart local v1  # "tID":I
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v4, "ConstructedBuildings"

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 479
    add-int/lit8 v0, v1, 0x1

    .end local v1  # "tID":I
    .restart local v0  # "tID":I
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v4, "Army"

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 480
    add-int/lit8 v1, v0, 0x1

    .end local v0  # "tID":I
    .restart local v1  # "tID":I
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v4, "RecruitedArmy"

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 481
    add-int/lit8 v0, v1, 0x1

    .end local v1  # "tID":I
    .restart local v0  # "tID":I
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v4, "Demography"

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 482
    add-int/lit8 v1, v0, 0x1

    .end local v0  # "tID":I
    .restart local v1  # "tID":I
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v4, "History"

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 483
    add-int/lit8 v0, v1, 0x1

    .end local v1  # "tID":I
    .restart local v0  # "tID":I
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v4, "Timeline"

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 485
    add-int/lit8 v1, v0, 0x1

    .end local v0  # "tID":I
    .restart local v1  # "tID":I
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v4, "Provinces"

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 486
    add-int/lit8 v0, v1, 0x1

    .end local v1  # "tID":I
    .restart local v0  # "tID":I
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 487
    add-int/lit8 v1, v0, 0x1

    .end local v0  # "tID":I
    .restart local v1  # "tID":I
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v3, "TechnologyLevel"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 488
    add-int/lit8 v0, v1, 0x1

    .end local v1  # "tID":I
    .restart local v0  # "tID":I
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_OutlinerStats;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v3, "RankScore"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 489
    return-void
.end method
