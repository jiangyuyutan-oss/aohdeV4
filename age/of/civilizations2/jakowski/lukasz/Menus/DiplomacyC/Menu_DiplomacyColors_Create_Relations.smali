.class public Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations;
.super Lage/of/civilizations2/jakowski/lukasz/Menu;
.source "Menu_DiplomacyColors_Create_Relations.java"


# direct methods
.method public constructor <init>()V
    .registers 17

    .line 31
    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    .line 37
    .local v8, "tempPosX":I
    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$1;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const-string v3, "-100"

    const/4 v4, -0x1

    const/4 v7, 0x1

    move-object v1, v9

    move-object/from16 v2, p0

    move v5, v8

    invoke-direct/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations;Ljava/lang/String;IIIZ)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 61
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$2;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const-string v11, "-90"

    const/4 v12, -0x1

    const/4 v15, 0x1

    move-object v9, v1

    move-object/from16 v10, p0

    move v13, v8

    invoke-direct/range {v9 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations;Ljava/lang/String;IIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 85
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$3;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const-string v11, "-80"

    move-object v9, v1

    move v13, v8

    invoke-direct/range {v9 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations;Ljava/lang/String;IIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 109
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$4;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const-string v11, "-70"

    move-object v9, v1

    move v13, v8

    invoke-direct/range {v9 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations;Ljava/lang/String;IIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 133
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$5;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const-string v11, "-60"

    move-object v9, v1

    move v13, v8

    invoke-direct/range {v9 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations;Ljava/lang/String;IIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 157
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$6;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const-string v11, "-50"

    move-object v9, v1

    move v13, v8

    invoke-direct/range {v9 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations;Ljava/lang/String;IIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 181
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$7;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const-string v11, "-40"

    move-object v9, v1

    move v13, v8

    invoke-direct/range {v9 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$7;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations;Ljava/lang/String;IIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 205
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$8;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const-string v11, "-30"

    move-object v9, v1

    move v13, v8

    invoke-direct/range {v9 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$8;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations;Ljava/lang/String;IIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 229
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$9;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const-string v11, "-20"

    move-object v9, v1

    move v13, v8

    invoke-direct/range {v9 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$9;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations;Ljava/lang/String;IIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 253
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$10;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const-string v11, "-10"

    move-object v9, v1

    move v13, v8

    invoke-direct/range {v9 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$10;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations;Ljava/lang/String;IIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 279
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$11;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const-string v11, "NEUTRAL"

    move-object v9, v1

    move v13, v8

    invoke-direct/range {v9 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$11;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations;Ljava/lang/String;IIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 303
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$12;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const-string v11, "10"

    move-object v9, v1

    move v13, v8

    invoke-direct/range {v9 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$12;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations;Ljava/lang/String;IIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 327
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$13;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const-string v11, "20"

    move-object v9, v1

    move v13, v8

    invoke-direct/range {v9 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$13;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations;Ljava/lang/String;IIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 351
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$14;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const-string v11, "30"

    move-object v9, v1

    move v13, v8

    invoke-direct/range {v9 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$14;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations;Ljava/lang/String;IIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 375
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$15;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const-string v11, "40"

    move-object v9, v1

    move v13, v8

    invoke-direct/range {v9 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations;Ljava/lang/String;IIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 399
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$16;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const-string v11, "50"

    move-object v9, v1

    move v13, v8

    invoke-direct/range {v9 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$16;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations;Ljava/lang/String;IIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 423
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$17;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const-string v11, "60"

    move-object v9, v1

    move v13, v8

    invoke-direct/range {v9 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$17;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations;Ljava/lang/String;IIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 447
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$18;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const-string v11, "70"

    move-object v9, v1

    move v13, v8

    invoke-direct/range {v9 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$18;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations;Ljava/lang/String;IIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 471
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$19;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const-string v11, "80"

    move-object v9, v1

    move v13, v8

    invoke-direct/range {v9 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$19;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations;Ljava/lang/String;IIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 495
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$20;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const-string v11, "90"

    move-object v9, v1

    move v13, v8

    invoke-direct/range {v9 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$20;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations;Ljava/lang/String;IIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 519
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$21;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const-string v11, "100"

    move-object v9, v1

    move v13, v8

    invoke-direct/range {v9 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations$21;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations;Ljava/lang/String;IIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 544
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Transparent;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int v2, v8, v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Transparent;-><init>(IIIIZ)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int v4, v1, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int v6, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations;->initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;)V

    .line 547
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations;->updateLang()V

    .line 548
    return-void
.end method


# virtual methods
.method public final actionEL(I)V
    .registers 8
    .param p1, "iID"  # I

    .line 572
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x5

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC;->setPosX(I)V

    .line 573
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x7

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC;->setPosY(I)V

    .line 575
    const/4 v0, 0x1

    const/16 v1, 0xa

    if-ge p1, v1, :cond_66

    .line 576
    rsub-int/lit8 v1, p1, 0x9

    sput v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    .line 577
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_NEGATIVE:[Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    rsub-int/lit8 v3, p1, 0x9

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_NEGATIVE:[Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    rsub-int/lit8 v4, p1, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_NEGATIVE:[Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    rsub-int/lit8 v5, p1, 0x9

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC;->setActiveRGBColor(FFF)V

    .line 578
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC$PickerAction;->COLOR_DIPLOMACY_NEGATIVE:Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC$PickerAction;

    invoke-virtual {v1, v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC$PickerAction;)V

    goto :goto_d3

    .line 580
    :cond_66
    const/16 v1, 0xb

    if-le p1, v1, :cond_a7

    .line 581
    add-int/lit8 v1, p1, -0xb

    sput v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    .line 582
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_POSITIVE:[Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    add-int/lit8 v3, p1, -0xb

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_POSITIVE:[Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    add-int/lit8 v4, p1, -0xb

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_POSITIVE:[Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    add-int/lit8 v5, p1, -0xb

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC;->setActiveRGBColor(FFF)V

    .line 583
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC$PickerAction;->COLOR_DIPLOMACY_POSITIVE:Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC$PickerAction;

    invoke-virtual {v1, v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC$PickerAction;)V

    goto :goto_d3

    .line 586
    :cond_a7
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_NEUTRAL:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_NEUTRAL:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_NEUTRAL:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC;->setActiveRGBColor(FFF)V

    .line 587
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC$PickerAction;->COLOR_DIPLOMACY_NEUTRAL:Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC$PickerAction;

    invoke-virtual {v1, v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC$PickerAction;)V

    .line 600
    :goto_d3
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 9
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 555
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations;->getPosY()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations;->getMenuElemsSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosXE()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations;->getMenuElemsSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/DiplomacyC/Menu_DiplomacyColors_Create_Relations;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-static {p1, p2, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawEditorTitle_EdgeR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 557
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 558
    return-void
.end method

.method public getImageHeight(I)I
    .registers 3
    .param p1, "image"  # I

    .line 565
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUT:Lcom/codedisaster/steamworks/SteamUtils;

    invoke-virtual {v0, p1}, Lcom/codedisaster/steamworks/SteamUtils;->getImageHeight(I)I

    move-result v0

    return v0
.end method

.method public getImageWidth(I)I
    .registers 3
    .param p1, "image"  # I

    .line 561
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUT:Lcom/codedisaster/steamworks/SteamUtils;

    invoke-virtual {v0, p1}, Lcom/codedisaster/steamworks/SteamUtils;->getImageWidth(I)I

    move-result v0

    return v0
.end method
