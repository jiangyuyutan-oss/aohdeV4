.class public Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;
.super Lage/of/civilizations2/jakowski/lukasz/Menu;
.source "Menu_InGame_WorldPopulation.java"


# static fields
.field public static iSort:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->iSort:I

    return-void
.end method

.method public constructor <init>()V
    .registers 46

    .line 64
    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 67
    .local v10, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    const/4 v1, 0x3

    mul-int/lit8 v11, v0, 0x3

    .line 69
    .local v11, "tempWidth":I
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const/4 v3, 0x4

    mul-int/lit8 v2, v2, 0x4

    add-int v20, v0, v2

    .line 70
    .local v20, "tElemHeight":I
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flagRect2:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v30

    .line 72
    .local v30, "tElemHeight2":I
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$1;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v4, "Name"

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const/4 v9, 0x2

    mul-int/lit8 v15, v2, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    mul-int/lit8 v18, v2, 0x2

    const/16 v16, 0x2

    const/16 v17, 0x0

    move-object v12, v0

    move-object/from16 v13, p0

    move/from16 v19, v20

    invoke-direct/range {v12 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;Ljava/lang/String;IIIII)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$2;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v4, "Population"

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    mul-int/lit8 v5, v5, 0x2

    add-int v16, v2, v5

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    move-object v12, v0

    invoke-direct/range {v12 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;Ljava/lang/String;IIIII)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$3;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v5, "Civilizations"

    invoke-virtual {v2, v5}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    mul-int/lit8 v5, v5, 0x3

    add-int v16, v2, v5

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    move-object v12, v0

    invoke-direct/range {v12 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;Ljava/lang/String;IIIII)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$4;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v5, "Provinces"

    invoke-virtual {v2, v5}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    mul-int/lit8 v5, v5, 0x4

    add-int v16, v2, v5

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    move-object v12, v0

    invoke-direct/range {v12 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;Ljava/lang/String;IIIII)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$5;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v5, "MostPopulous"

    invoke-virtual {v2, v5}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    mul-int/lit8 v5, v5, 0x4

    add-int v16, v2, v5

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    move-object v12, v0

    invoke-direct/range {v12 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;Ljava/lang/String;IIIII)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$6;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v5, "LargestCity"

    invoke-virtual {v2, v5}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    const/4 v6, 0x5

    mul-int/lit8 v5, v5, 0x5

    add-int v16, v2, v5

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    move-object v12, v0

    invoke-direct/range {v12 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;Ljava/lang/String;IIIII)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int v0, v0, v20

    .line 247
    .local v0, "tPosY":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v2

    .line 248
    .local v8, "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v2

    .line 249
    .local v7, "tCivilizations":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v2

    .line 250
    .local v5, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v2, "tLargestCity":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v12

    .line 252
    .local v15, "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v12

    .line 254
    .local v14, "tMostPopulousID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_117
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapContinents()Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->getContinentsSize()I

    move-result v13

    const/16 v31, -0x1

    const/4 v6, 0x0

    if-ge v12, v13, :cond_156

    .line 255
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x5

    goto :goto_117

    .line 264
    .end local v12  # "i":I
    :cond_156
    const/4 v12, 0x0

    .restart local v12  # "i":I
    :goto_157
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v13

    const/4 v6, 0x1

    if-ge v12, v13, :cond_31e

    .line 265
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v13, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v13

    if-gez v13, :cond_316

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v13, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v13

    if-nez v13, :cond_316

    .line 266
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v13, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getContinent()I

    move-result v13

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getContinent()I

    move-result v3

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v1

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v13, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getContinent()I

    move-result v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getContinent()I

    move-result v3

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    if-lez v1, :cond_2ab

    .line 270
    const/4 v1, 0x1

    .line 272
    .local v1, "tAdd":Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1e0
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getContinent()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_263

    .line 273
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getContinent()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v13, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v13

    if-ne v6, v13, :cond_25e

    .line 274
    const/4 v1, 0x0

    .line 275
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getContinent()I

    move-result v6

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v13, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getContinent()I

    move-result v13

    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v9, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v9

    add-int/2addr v13, v9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v3, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 276
    goto :goto_263

    .line 272
    :cond_25e
    add-int/lit8 v3, v3, 0x1

    const/4 v9, 0x2

    goto/16 :goto_1e0

    .line 280
    .end local v3  # "j":I
    :cond_263
    :goto_263
    if-eqz v1, :cond_2ab

    .line 281
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getContinent()I

    move-result v3

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getContinent()I

    move-result v3

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    .end local v1  # "tAdd":Z
    :cond_2ab
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getContinent()I

    move-result v1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_2d3

    .line 287
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getContinent()I

    move-result v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_316

    .line 289
    :cond_2d3
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getContinent()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v3

    if-ge v1, v3, :cond_316

    .line 290
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getContinent()I

    move-result v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_316
    :goto_316
    add-int/lit8 v12, v12, 0x1

    const/4 v1, 0x3

    const/4 v3, 0x4

    const/4 v6, 0x0

    const/4 v9, 0x2

    goto/16 :goto_157

    .line 295
    .end local v12  # "i":I
    :cond_31e
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_31f
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_36b

    .line 296
    const/4 v3, 0x1

    .restart local v3  # "j":I
    :goto_326
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_368

    .line 297
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-le v9, v12, :cond_365

    .line 298
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v14, v1, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_365
    add-int/lit8 v3, v3, 0x1

    goto :goto_326

    .line 295
    .end local v3  # "j":I
    :cond_368
    add-int/lit8 v1, v1, 0x1

    goto :goto_31f

    .line 307
    .end local v1  # "i":I
    :cond_36b
    const/4 v1, 0x0

    .line 308
    .local v1, "tTotalPop":I
    const/4 v3, 0x0

    .line 309
    .local v3, "tCivsTotal":I
    const/4 v9, 0x0

    .line 310
    .local v9, "tProvincesTotal":I
    const/4 v12, -0x1

    .line 311
    .local v12, "tLargestCityTotal":I
    const/4 v13, 0x1

    .line 312
    .local v13, "tMostPopulousTotal":I
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    move/from16 v16, v12

    move/from16 v17, v13

    .end local v12  # "tLargestCityTotal":I
    .end local v13  # "tMostPopulousTotal":I
    .local v16, "tLargestCityTotal":I
    .local v17, "tMostPopulousTotal":I
    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->countPop()J

    move-result-wide v12

    move-object/from16 v18, v14

    move-object v6, v15

    .end local v14  # "tMostPopulousID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v15  # "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .local v6, "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .local v18, "tMostPopulousID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-wide/16 v14, 0x1

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    long-to-int v13, v12

    .line 315
    .local v13, "tempMostPopulation":I
    const/4 v12, 0x0

    move/from16 v14, v16

    move/from16 v44, v9

    move v9, v1

    move/from16 v1, v44

    .end local v16  # "tLargestCityTotal":I
    .local v1, "tProvincesTotal":I
    .local v9, "tTotalPop":I
    .local v12, "i":I
    .local v14, "tLargestCityTotal":I
    :goto_390
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    if-ge v12, v15, :cond_41e

    .line 316
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/2addr v9, v15

    .line 317
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/2addr v1, v15

    .line 319
    if-gez v14, :cond_3ce

    .line 320
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ltz v15, :cond_3c9

    .line 321
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move/from16 v16, v1

    move/from16 v23, v3

    goto :goto_416

    .line 320
    :cond_3c9
    move/from16 v16, v1

    move/from16 v23, v3

    goto :goto_416

    .line 324
    :cond_3ce
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ltz v15, :cond_412

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v15, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v15

    move/from16 v16, v1

    .end local v1  # "tProvincesTotal":I
    .local v16, "tProvincesTotal":I
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    move/from16 v23, v3

    .end local v3  # "tCivsTotal":I
    .local v23, "tCivsTotal":I
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v1

    if-ge v15, v1, :cond_416

    .line 325
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v14, v1

    .end local v14  # "tLargestCityTotal":I
    .local v1, "tLargestCityTotal":I
    goto :goto_416

    .line 324
    .end local v16  # "tProvincesTotal":I
    .end local v23  # "tCivsTotal":I
    .local v1, "tProvincesTotal":I
    .restart local v3  # "tCivsTotal":I
    .restart local v14  # "tLargestCityTotal":I
    :cond_412
    move/from16 v16, v1

    move/from16 v23, v3

    .line 315
    .end local v1  # "tProvincesTotal":I
    .end local v3  # "tCivsTotal":I
    .restart local v16  # "tProvincesTotal":I
    .restart local v23  # "tCivsTotal":I
    :cond_416
    :goto_416
    add-int/lit8 v12, v12, 0x1

    move/from16 v1, v16

    move/from16 v3, v23

    goto/16 :goto_390

    .end local v16  # "tProvincesTotal":I
    .end local v23  # "tCivsTotal":I
    .restart local v1  # "tProvincesTotal":I
    .restart local v3  # "tCivsTotal":I
    :cond_41e
    move/from16 v23, v3

    .line 330
    .end local v3  # "tCivsTotal":I
    .end local v12  # "i":I
    .restart local v23  # "tCivsTotal":I
    const/4 v3, 0x1

    move v12, v13

    move/from16 v13, v17

    move/from16 v15, v23

    .end local v17  # "tMostPopulousTotal":I
    .end local v23  # "tCivsTotal":I
    .local v3, "i":I
    .local v12, "tempMostPopulation":I
    .local v13, "tMostPopulousTotal":I
    .local v15, "tCivsTotal":I
    :goto_426
    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    move-object/from16 v17, v6

    .end local v6  # "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .local v17, "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v6

    if-ge v3, v6, :cond_488

    .line 331
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v6

    if-lez v6, :cond_475

    .line 332
    add-int/lit8 v15, v15, 0x1

    .line 334
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->countPop()J

    move-result-wide v23

    move/from16 v16, v13

    move v6, v14

    .end local v13  # "tMostPopulousTotal":I
    .end local v14  # "tLargestCityTotal":I
    .local v6, "tLargestCityTotal":I
    .local v16, "tMostPopulousTotal":I
    int-to-long v13, v12

    cmp-long v19, v23, v13

    if-lez v19, :cond_46c

    .line 335
    move v13, v3

    .line 336
    .end local v16  # "tMostPopulousTotal":I
    .restart local v13  # "tMostPopulousTotal":I
    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v14, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    move/from16 v19, v12

    move/from16 v16, v13

    .end local v12  # "tempMostPopulation":I
    .end local v13  # "tMostPopulousTotal":I
    .restart local v16  # "tMostPopulousTotal":I
    .local v19, "tempMostPopulation":I
    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->countPop()J

    move-result-wide v12

    move/from16 v23, v15

    const-wide/16 v14, 0x1

    .end local v15  # "tCivsTotal":I
    .restart local v23  # "tCivsTotal":I
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    long-to-int v13, v12

    move v12, v13

    move/from16 v13, v16

    .end local v19  # "tempMostPopulation":I
    .local v13, "tempMostPopulation":I
    goto :goto_480

    .line 334
    .end local v13  # "tempMostPopulation":I
    .end local v23  # "tCivsTotal":I
    .restart local v12  # "tempMostPopulation":I
    .restart local v15  # "tCivsTotal":I
    :cond_46c
    move/from16 v19, v12

    move/from16 v23, v15

    const-wide/16 v14, 0x1

    .end local v12  # "tempMostPopulation":I
    .end local v15  # "tCivsTotal":I
    .restart local v19  # "tempMostPopulation":I
    .restart local v23  # "tCivsTotal":I
    move/from16 v13, v16

    goto :goto_480

    .line 331
    .end local v6  # "tLargestCityTotal":I
    .end local v16  # "tMostPopulousTotal":I
    .end local v19  # "tempMostPopulation":I
    .end local v23  # "tCivsTotal":I
    .restart local v12  # "tempMostPopulation":I
    .local v13, "tMostPopulousTotal":I
    .restart local v14  # "tLargestCityTotal":I
    .restart local v15  # "tCivsTotal":I
    :cond_475
    move/from16 v19, v12

    move/from16 v16, v13

    move v6, v14

    move/from16 v32, v15

    const-wide/16 v14, 0x1

    .end local v12  # "tempMostPopulation":I
    .end local v13  # "tMostPopulousTotal":I
    .end local v14  # "tLargestCityTotal":I
    .end local v15  # "tCivsTotal":I
    .restart local v6  # "tLargestCityTotal":I
    .restart local v16  # "tMostPopulousTotal":I
    .restart local v19  # "tempMostPopulation":I
    .local v32, "tCivsTotal":I
    move/from16 v23, v32

    .line 330
    .end local v16  # "tMostPopulousTotal":I
    .end local v19  # "tempMostPopulation":I
    .end local v32  # "tCivsTotal":I
    .restart local v12  # "tempMostPopulation":I
    .restart local v13  # "tMostPopulousTotal":I
    .restart local v23  # "tCivsTotal":I
    :goto_480
    add-int/lit8 v3, v3, 0x1

    move v14, v6

    move-object/from16 v6, v17

    move/from16 v15, v23

    goto :goto_426

    .end local v6  # "tLargestCityTotal":I
    .end local v23  # "tCivsTotal":I
    .restart local v14  # "tLargestCityTotal":I
    .restart local v15  # "tCivsTotal":I
    :cond_488
    move/from16 v19, v12

    move/from16 v16, v13

    move v6, v14

    move/from16 v32, v15

    .line 343
    .end local v3  # "i":I
    .end local v12  # "tempMostPopulation":I
    .end local v13  # "tMostPopulousTotal":I
    .end local v14  # "tLargestCityTotal":I
    .end local v15  # "tCivsTotal":I
    .restart local v6  # "tLargestCityTotal":I
    .restart local v16  # "tMostPopulousTotal":I
    .restart local v19  # "tempMostPopulation":I
    .restart local v32  # "tCivsTotal":I
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$7;

    new-instance v12, Lcom/badlogic/gdx/graphics/Color;

    const v13, 0x3f733333  # 0.95f

    const/high16 v14, 0x3f800000  # 1.0f

    invoke-direct {v12, v14, v14, v14, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    move/from16 v33, v6

    .end local v6  # "tLargestCityTotal":I
    .local v33, "tLargestCityTotal":I
    invoke-virtual/range {v21 .. v21}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v6

    invoke-virtual {v14, v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapName_Just(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    sget v25, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const/4 v13, 0x2

    mul-int/lit8 v26, v6, 0x2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    mul-int/lit8 v28, v6, 0x2

    move-object/from16 v21, v3

    move-object/from16 v22, p0

    move-object/from16 v23, v12

    move/from16 v27, v0

    move/from16 v29, v30

    invoke-direct/range {v21 .. v29}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$7;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;IIIII)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$8;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumberWthSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const/4 v13, 0x2

    mul-int/lit8 v12, v12, 0x2

    sget v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    mul-int/lit8 v21, v21, 0x2

    add-int v21, v12, v21

    sget v22, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    move/from16 v13, v19

    .end local v19  # "tempMostPopulation":I
    .local v13, "tempMostPopulation":I
    move-object v12, v3

    move/from16 v34, v9

    move/from16 v35, v11

    move v11, v13

    move/from16 v9, v16

    .end local v13  # "tempMostPopulation":I
    .end local v16  # "tMostPopulousTotal":I
    .local v9, "tMostPopulousTotal":I
    .local v11, "tempMostPopulation":I
    .local v34, "tTotalPop":I
    .local v35, "tempWidth":I
    move-object/from16 v13, p0

    move-object/from16 v36, v4

    move-object/from16 v4, v18

    move/from16 v44, v33

    move-object/from16 v33, v2

    move/from16 v2, v44

    .end local v18  # "tMostPopulousID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v2, "tLargestCityTotal":I
    .local v4, "tMostPopulousID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v33, "tLargestCity":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v37, v4

    move-object/from16 v38, v7

    move-object v7, v15

    move/from16 v4, v32

    move-object/from16 v32, v17

    .end local v7  # "tCivilizations":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v17  # "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .local v4, "tCivsTotal":I
    .local v32, "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .local v37, "tMostPopulousID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v38, "tCivilizations":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    move v15, v6

    move/from16 v16, v21

    move/from16 v17, v0

    move/from16 v18, v22

    move/from16 v19, v30

    invoke-direct/range {v12 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$8;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;Ljava/lang/String;IIIII)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$9;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumberWthSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const/4 v12, 0x2

    mul-int/lit8 v6, v6, 0x2

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    const/4 v13, 0x3

    mul-int/lit8 v12, v12, 0x3

    add-int v16, v6, v12

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    move-object v12, v3

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$9;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;Ljava/lang/String;IIIII)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$10;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumberWthSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const/4 v12, 0x2

    mul-int/lit8 v6, v6, 0x2

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    const/4 v13, 0x4

    mul-int/lit8 v12, v12, 0x4

    add-int v16, v6, v12

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    move-object v12, v3

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$10;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;Ljava/lang/String;IIIII)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$11;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v12, 0x2

    if-ne v6, v12, :cond_5a4

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v6, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6, v9}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCiv(I)Z

    move-result v6

    if-eqz v6, :cond_5a1

    goto :goto_5a4

    :cond_5a1
    const/16 v23, -0x1

    goto :goto_5a6

    :cond_5a4
    :goto_5a4
    move/from16 v23, v9

    :goto_5a6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumberWthSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sget v25, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const/4 v12, 0x2

    mul-int/lit8 v6, v6, 0x2

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    const/4 v13, 0x4

    mul-int/lit8 v12, v12, 0x4

    add-int v26, v6, v12

    sget v28, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    move-object/from16 v21, v3

    move-object/from16 v22, p0

    move/from16 v27, v0

    move/from16 v29, v30

    invoke-direct/range {v21 .. v29}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$11;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;ILjava/lang/String;IIIII)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$12;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v12, 0x2

    if-ne v6, v12, :cond_5f2

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v6, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v6

    if-eqz v6, :cond_5ef

    goto :goto_5f2

    :cond_5ef
    const/16 v23, -0x1

    goto :goto_5f4

    .line 500
    :cond_5f2
    :goto_5f2
    move/from16 v23, v2

    :goto_5f4
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const-string v15, "Undiscovered"

    const-string v14, "NoData"

    const/4 v12, 0x2

    if-ne v6, v12, :cond_630

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v6, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v6

    if-eqz v6, :cond_629

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCitSize()I

    move-result v6

    if-lez v6, :cond_618

    goto :goto_63c

    :cond_618
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_669

    goto :goto_65e

    :cond_629
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v6, v15}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_64b

    :cond_630
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCitSize()I

    move-result v6

    if-lez v6, :cond_64e

    :goto_63c
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCit(I)Lage/of/civilizations2/jakowski/lukasz/City;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/City;->getCityName()Ljava/lang/String;

    move-result-object v6

    :goto_64b
    move-object/from16 v24, v6

    goto :goto_670

    :cond_64e
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_669

    :goto_65e
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_64b

    :cond_669
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v6, v14}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_64b

    :goto_670
    sget v25, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const/4 v12, 0x2

    mul-int/lit8 v6, v6, 0x2

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    const/4 v13, 0x5

    mul-int/lit8 v12, v12, 0x5

    add-int v26, v6, v12

    sget v28, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    move-object/from16 v21, v3

    move-object/from16 v22, p0

    move/from16 v27, v0

    move/from16 v29, v30

    invoke-direct/range {v21 .. v29}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$12;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;ILjava/lang/String;IIIII)V

    .line 499
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    add-int v3, v0, v30

    .line 560
    .end local v0  # "tPosY":I
    .local v3, "tPosY":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 561
    .local v6, "tSorted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 563
    .local v13, "tempIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_69d
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-ge v0, v12, :cond_6b9

    .line 564
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lez v12, :cond_6b6

    .line 565
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    :cond_6b6
    add-int/lit8 v0, v0, 0x1

    goto :goto_69d

    .line 570
    .end local v0  # "i":I
    :cond_6b9
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->iSort:I

    if-nez v0, :cond_732

    .line 571
    :goto_6bd
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_71c

    .line 572
    const/4 v0, 0x0

    .line 574
    .local v0, "tAdd":I
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_6c5
    move/from16 v39, v1

    .end local v1  # "tProvincesTotal":I
    .local v39, "tProvincesTotal":I
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_709

    .line 575
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapContinents()Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

    move-result-object v1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    move/from16 v40, v2

    .end local v2  # "tLargestCityTotal":I
    .local v40, "tLargestCityTotal":I
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->getName(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapContinents()Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

    move-result-object v2

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    move/from16 v17, v3

    .end local v3  # "tPosY":I
    .local v17, "tPosY":I
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_700

    .line 576
    move v0, v12

    .line 574
    :cond_700
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v17

    move/from16 v1, v39

    move/from16 v2, v40

    goto :goto_6c5

    .end local v17  # "tPosY":I
    .end local v40  # "tLargestCityTotal":I
    .restart local v2  # "tLargestCityTotal":I
    .restart local v3  # "tPosY":I
    :cond_709
    move/from16 v40, v2

    move/from16 v17, v3

    .line 580
    .end local v2  # "tLargestCityTotal":I
    .end local v3  # "tPosY":I
    .end local v12  # "i":I
    .restart local v17  # "tPosY":I
    .restart local v40  # "tLargestCityTotal":I
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    invoke-interface {v13, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 582
    .end local v0  # "tAdd":I
    move/from16 v1, v39

    goto :goto_6bd

    .line 571
    .end local v17  # "tPosY":I
    .end local v39  # "tProvincesTotal":I
    .end local v40  # "tLargestCityTotal":I
    .restart local v1  # "tProvincesTotal":I
    .restart local v2  # "tLargestCityTotal":I
    .restart local v3  # "tPosY":I
    :cond_71c
    move/from16 v39, v1

    move/from16 v40, v2

    move/from16 v17, v3

    .end local v1  # "tProvincesTotal":I
    .end local v2  # "tLargestCityTotal":I
    .end local v3  # "tPosY":I
    .restart local v17  # "tPosY":I
    .restart local v39  # "tProvincesTotal":I
    .restart local v40  # "tLargestCityTotal":I
    move-object/from16 v18, v32

    move-object/from16 v3, v38

    move/from16 v32, v4

    move/from16 v38, v9

    move-object/from16 v9, v37

    move/from16 v37, v11

    move-object/from16 v11, v33

    goto/16 :goto_9cd

    .line 586
    .end local v17  # "tPosY":I
    .end local v39  # "tProvincesTotal":I
    .end local v40  # "tLargestCityTotal":I
    .restart local v1  # "tProvincesTotal":I
    .restart local v2  # "tLargestCityTotal":I
    .restart local v3  # "tPosY":I
    :cond_732
    move/from16 v39, v1

    move/from16 v40, v2

    move/from16 v17, v3

    .end local v1  # "tProvincesTotal":I
    .end local v2  # "tLargestCityTotal":I
    .end local v3  # "tPosY":I
    .restart local v17  # "tPosY":I
    .restart local v39  # "tProvincesTotal":I
    .restart local v40  # "tLargestCityTotal":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_794

    .line 587
    :goto_73b
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_784

    .line 588
    const/4 v0, 0x0

    .line 590
    .restart local v0  # "tAdd":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_743
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_777

    .line 591
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v2, v3, :cond_774

    .line 592
    move v0, v1

    .line 590
    :cond_774
    add-int/lit8 v1, v1, 0x1

    goto :goto_743

    .line 596
    .end local v1  # "i":I
    :cond_777
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    invoke-interface {v13, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 598
    .end local v0  # "tAdd":I
    goto :goto_73b

    .line 587
    :cond_784
    move-object/from16 v18, v32

    move-object/from16 v3, v38

    move/from16 v32, v4

    move/from16 v38, v9

    move-object/from16 v9, v37

    move/from16 v37, v11

    move-object/from16 v11, v33

    goto/16 :goto_9cd

    .line 602
    :cond_794
    const/4 v1, 0x2

    if-ne v0, v1, :cond_7f6

    .line 603
    :goto_797
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7e6

    .line 604
    const/4 v0, 0x0

    .line 606
    .restart local v0  # "tAdd":I
    const/4 v1, 0x1

    .restart local v1  # "i":I
    :goto_79f
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7d7

    .line 607
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v3, v38

    .end local v38  # "tCivilizations":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .local v3, "tCivilizations":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v2, v12, :cond_7d2

    .line 608
    move v0, v1

    .line 606
    :cond_7d2
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v38, v3

    goto :goto_79f

    .end local v3  # "tCivilizations":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .restart local v38  # "tCivilizations":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    :cond_7d7
    move-object/from16 v3, v38

    .line 612
    .end local v1  # "i":I
    .end local v38  # "tCivilizations":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .restart local v3  # "tCivilizations":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    invoke-interface {v13, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 614
    .end local v0  # "tAdd":I
    goto :goto_797

    .line 603
    .end local v3  # "tCivilizations":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .restart local v38  # "tCivilizations":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    :cond_7e6
    move-object/from16 v3, v38

    .end local v38  # "tCivilizations":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .restart local v3  # "tCivilizations":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    move/from16 v38, v9

    move-object/from16 v18, v32

    move-object/from16 v9, v37

    move/from16 v32, v4

    move/from16 v37, v11

    move-object/from16 v11, v33

    goto/16 :goto_9cd

    .line 618
    .end local v3  # "tCivilizations":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .restart local v38  # "tCivilizations":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    :cond_7f6
    move-object/from16 v3, v38

    .end local v38  # "tCivilizations":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .restart local v3  # "tCivilizations":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    const/4 v1, 0x3

    if-ne v0, v1, :cond_852

    .line 619
    :goto_7fb
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_844

    .line 620
    const/4 v0, 0x0

    .line 622
    .restart local v0  # "tAdd":I
    const/4 v1, 0x1

    .restart local v1  # "i":I
    :goto_803
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_837

    .line 623
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ge v2, v12, :cond_834

    .line 624
    move v0, v1

    .line 622
    :cond_834
    add-int/lit8 v1, v1, 0x1

    goto :goto_803

    .line 628
    .end local v1  # "i":I
    :cond_837
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    invoke-interface {v13, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 630
    .end local v0  # "tAdd":I
    goto :goto_7fb

    .line 619
    :cond_844
    move/from16 v38, v9

    move-object/from16 v18, v32

    move-object/from16 v9, v37

    move/from16 v32, v4

    move/from16 v37, v11

    move-object/from16 v11, v33

    goto/16 :goto_9cd

    .line 634
    :cond_852
    const/4 v1, 0x4

    if-ne v0, v1, :cond_946

    .line 635
    :goto_855
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_936

    .line 636
    const/4 v0, 0x0

    .line 638
    .restart local v0  # "tAdd":I
    const/4 v1, 0x1

    move v2, v1

    move v1, v0

    .end local v0  # "tAdd":I
    .local v1, "tAdd":I
    .local v2, "i":I
    :goto_85f
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_918

    .line 640
    :try_start_865
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_86f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_865 .. :try_end_86f} :catch_8e7

    move-object/from16 v12, v32

    .end local v32  # "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .local v12, "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    :try_start_871
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;
    :try_end_87d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_871 .. :try_end_87d} :catch_8dd

    move/from16 v32, v4

    .end local v4  # "tCivsTotal":I
    .local v32, "tCivsTotal":I
    :try_start_87f
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_883
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_87f .. :try_end_883} :catch_8d5

    move/from16 v38, v9

    move-object/from16 v9, v37

    .end local v37  # "tMostPopulousID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v9, "tMostPopulousID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v38, "tMostPopulousTotal":I
    :try_start_887
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;
    :try_end_8b1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_887 .. :try_end_8b1} :catch_8d1

    move/from16 v37, v11

    .end local v11  # "tempMostPopulation":I
    .local v37, "tempMostPopulation":I
    :try_start_8b3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_8cb
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8b3 .. :try_end_8cb} :catch_8cf

    if-ge v0, v4, :cond_8ce

    .line 641
    move v1, v2

    .line 648
    :cond_8ce
    goto :goto_90a

    .line 643
    :catch_8cf
    move-exception v0

    goto :goto_8f2

    .end local v37  # "tempMostPopulation":I
    .restart local v11  # "tempMostPopulation":I
    :catch_8d1
    move-exception v0

    move/from16 v37, v11

    .end local v11  # "tempMostPopulation":I
    .restart local v37  # "tempMostPopulation":I
    goto :goto_8f2

    .end local v38  # "tMostPopulousTotal":I
    .local v9, "tMostPopulousTotal":I
    .restart local v11  # "tempMostPopulation":I
    .local v37, "tMostPopulousID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_8d5
    move-exception v0

    move/from16 v38, v9

    move-object/from16 v9, v37

    move/from16 v37, v11

    .end local v11  # "tempMostPopulation":I
    .local v9, "tMostPopulousID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v37, "tempMostPopulation":I
    .restart local v38  # "tMostPopulousTotal":I
    goto :goto_8f2

    .end local v32  # "tCivsTotal":I
    .end local v38  # "tMostPopulousTotal":I
    .restart local v4  # "tCivsTotal":I
    .local v9, "tMostPopulousTotal":I
    .restart local v11  # "tempMostPopulation":I
    .local v37, "tMostPopulousID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_8dd
    move-exception v0

    move/from16 v32, v4

    move/from16 v38, v9

    move-object/from16 v9, v37

    move/from16 v37, v11

    .end local v4  # "tCivsTotal":I
    .end local v11  # "tempMostPopulation":I
    .local v9, "tMostPopulousID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v32  # "tCivsTotal":I
    .local v37, "tempMostPopulation":I
    .restart local v38  # "tMostPopulousTotal":I
    goto :goto_8f2

    .end local v12  # "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v38  # "tMostPopulousTotal":I
    .restart local v4  # "tCivsTotal":I
    .local v9, "tMostPopulousTotal":I
    .restart local v11  # "tempMostPopulation":I
    .local v32, "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .local v37, "tMostPopulousID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_8e7
    move-exception v0

    move/from16 v38, v9

    move-object/from16 v12, v32

    move-object/from16 v9, v37

    move/from16 v32, v4

    move/from16 v37, v11

    .line 644
    .end local v4  # "tCivsTotal":I
    .end local v11  # "tempMostPopulation":I
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    .local v9, "tMostPopulousID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v12  # "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .local v32, "tCivsTotal":I
    .local v37, "tempMostPopulation":I
    .restart local v38  # "tMostPopulousTotal":I
    :goto_8f2
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_909

    .line 645
    move v1, v2

    .line 647
    :cond_909
    nop

    .line 638
    .end local v0  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_90a
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, v32

    move/from16 v11, v37

    move-object/from16 v37, v9

    move-object/from16 v32, v12

    move/from16 v9, v38

    goto/16 :goto_85f

    .end local v12  # "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v38  # "tMostPopulousTotal":I
    .restart local v4  # "tCivsTotal":I
    .local v9, "tMostPopulousTotal":I
    .restart local v11  # "tempMostPopulation":I
    .local v32, "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .local v37, "tMostPopulousID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_918
    move/from16 v38, v9

    move-object/from16 v12, v32

    move-object/from16 v9, v37

    move/from16 v32, v4

    move/from16 v37, v11

    .line 651
    .end local v2  # "i":I
    .end local v4  # "tCivsTotal":I
    .end local v11  # "tempMostPopulation":I
    .local v9, "tMostPopulousID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v12  # "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .local v32, "tCivsTotal":I
    .local v37, "tempMostPopulation":I
    .restart local v38  # "tMostPopulousTotal":I
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    invoke-interface {v13, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 653
    .end local v1  # "tAdd":I
    move-object/from16 v37, v9

    move-object/from16 v32, v12

    move/from16 v9, v38

    goto/16 :goto_855

    .line 635
    .end local v12  # "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v38  # "tMostPopulousTotal":I
    .restart local v4  # "tCivsTotal":I
    .local v9, "tMostPopulousTotal":I
    .restart local v11  # "tempMostPopulation":I
    .local v32, "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .local v37, "tMostPopulousID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_936
    move/from16 v38, v9

    move-object/from16 v12, v32

    move-object/from16 v9, v37

    move/from16 v32, v4

    move/from16 v37, v11

    .end local v4  # "tCivsTotal":I
    .end local v11  # "tempMostPopulation":I
    .local v9, "tMostPopulousID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v12  # "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .local v32, "tCivsTotal":I
    .local v37, "tempMostPopulation":I
    .restart local v38  # "tMostPopulousTotal":I
    move-object/from16 v18, v12

    move-object/from16 v11, v33

    goto/16 :goto_9cd

    .line 656
    .end local v12  # "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v38  # "tMostPopulousTotal":I
    .restart local v4  # "tCivsTotal":I
    .local v9, "tMostPopulousTotal":I
    .restart local v11  # "tempMostPopulation":I
    .local v32, "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .local v37, "tMostPopulousID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_946
    move/from16 v38, v9

    move-object/from16 v12, v32

    move-object/from16 v9, v37

    move/from16 v32, v4

    move/from16 v37, v11

    .end local v4  # "tCivsTotal":I
    .end local v11  # "tempMostPopulation":I
    .local v9, "tMostPopulousID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v12  # "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .local v32, "tCivsTotal":I
    .local v37, "tempMostPopulation":I
    .restart local v38  # "tMostPopulousTotal":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_9c9

    .line 657
    :goto_953
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9c4

    .line 658
    const/4 v0, 0x0

    .line 660
    .local v0, "tAdd":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_95b
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9b3

    .line 661
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v11, v33

    .end local v33  # "tLargestCity":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v11, "tLargestCity":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    move-object/from16 v18, v12

    .end local v12  # "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .local v18, "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v4, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v4

    if-ge v2, v4, :cond_9ac

    .line 662
    move v0, v1

    .line 660
    :cond_9ac
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v33, v11

    move-object/from16 v12, v18

    goto :goto_95b

    .end local v11  # "tLargestCity":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v18  # "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .restart local v12  # "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .restart local v33  # "tLargestCity":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_9b3
    move-object/from16 v18, v12

    move-object/from16 v11, v33

    .line 666
    .end local v1  # "i":I
    .end local v12  # "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v33  # "tLargestCity":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v11  # "tLargestCity":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v18  # "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    invoke-interface {v13, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 668
    .end local v0  # "tAdd":I
    goto :goto_953

    .line 657
    .end local v11  # "tLargestCity":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v18  # "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .restart local v12  # "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .restart local v33  # "tLargestCity":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_9c4
    move-object/from16 v18, v12

    move-object/from16 v11, v33

    .end local v12  # "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v33  # "tLargestCity":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v11  # "tLargestCity":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v18  # "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    goto :goto_9cd

    .line 656
    .end local v11  # "tLargestCity":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v18  # "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .restart local v12  # "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .restart local v33  # "tLargestCity":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_9c9
    move-object/from16 v18, v12

    move-object/from16 v11, v33

    .line 673
    .end local v12  # "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v33  # "tLargestCity":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v11  # "tLargestCity":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v18  # "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    :goto_9cd
    const/4 v0, 0x0

    move v1, v0

    move/from16 v33, v17

    .end local v17  # "tPosY":I
    .restart local v1  # "i":I
    .local v33, "tPosY":I
    :goto_9d1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_deb

    .line 674
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$13;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapContinents()Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

    move-result-object v2

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->getColor(I)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapContinents()Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

    move-result-object v4

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v4, v12}, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->getName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    sget v25, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const/4 v4, 0x2

    mul-int/lit8 v26, v2, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    mul-int/lit8 v28, v2, 0x2

    move-object/from16 v21, v0

    move-object/from16 v22, p0

    move/from16 v27, v33

    move/from16 v29, v30

    invoke-direct/range {v21 .. v29}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$13;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;IIIII)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$14;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumberWthSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const/16 v16, 0x2

    mul-int/lit8 v12, v12, 0x2

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    mul-int/lit8 v17, v17, 0x2

    add-int v16, v12, v17

    sget v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    move-object/from16 v41, v8

    move-object/from16 v8, v18

    .end local v18  # "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .local v8, "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .local v41, "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v12, v0

    move-object/from16 v42, v13

    .end local v13  # "tempIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v42, "tempIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v13, p0

    move-object/from16 v43, v14

    move-object v14, v2

    move-object v2, v15

    move v15, v4

    move/from16 v17, v33

    move/from16 v18, v19

    move/from16 v19, v30

    invoke-direct/range {v12 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$14;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;Ljava/lang/String;IIIII)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$15;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumberWthSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const/4 v12, 0x2

    mul-int/lit8 v4, v4, 0x2

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    const/4 v13, 0x3

    mul-int/lit8 v12, v12, 0x3

    add-int v16, v4, v12

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    move-object v12, v0

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;Ljava/lang/String;IIIII)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 750
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$16;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumberWthSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const/4 v12, 0x2

    mul-int/lit8 v4, v4, 0x2

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    const/4 v13, 0x4

    mul-int/lit8 v12, v12, 0x4

    add-int v16, v4, v12

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    move-object v12, v0

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$16;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;Ljava/lang/String;IIIII)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 776
    :try_start_afc
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$17;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v12, 0x2

    if-ne v4, v12, :cond_b6d

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v4, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v4, v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCiv(I)Z

    move-result v4

    if-eqz v4, :cond_b6a

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    goto :goto_b97

    :cond_b6a
    const/16 v23, -0x1

    goto :goto_b9d

    :cond_b6d
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    :goto_b97
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v23, v4

    :goto_b9d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumberWthSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sget v25, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const/4 v12, 0x2

    mul-int/lit8 v4, v4, 0x2

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    const/4 v13, 0x4

    mul-int/lit8 v12, v12, 0x4

    add-int v26, v4, v12

    sget v28, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    move-object/from16 v21, v0

    move-object/from16 v22, p0

    move/from16 v27, v33

    move/from16 v29, v30

    invoke-direct/range {v21 .. v29}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$17;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;ILjava/lang/String;IIIII)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_bf8
    .catch Ljava/lang/Exception; {:try_start_afc .. :try_end_bf8} :catch_bf9

    .line 881
    goto :goto_c21

    .line 840
    :catch_bf9
    move-exception v0

    .line 841
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 842
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$18;

    const/16 v23, 0x0

    sget v25, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const/4 v13, 0x2

    mul-int/lit8 v12, v12, 0x2

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    const/4 v14, 0x4

    mul-int/lit8 v13, v13, 0x4

    add-int v26, v12, v13

    sget v28, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    const-string v24, "---"

    move-object/from16 v21, v4

    move-object/from16 v22, p0

    move/from16 v27, v33

    move/from16 v29, v30

    invoke-direct/range {v21 .. v29}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$18;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;ILjava/lang/String;IIIII)V

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 882
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_c21
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$19;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v12, 0x2

    if-ne v4, v12, :cond_c4e

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v4, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v4, v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v4

    if-eqz v4, :cond_c4b

    goto :goto_c4e

    :cond_c4b
    const/16 v23, -0x1

    goto :goto_c64

    :cond_c4e
    :goto_c4e
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v23, v4

    .line 883
    :goto_c64
    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v12, 0x2

    if-ne v4, v12, :cond_d2c

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v4, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v4, v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v4

    if-eqz v4, :cond_d1f

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v4, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCitSize()I

    move-result v4

    if-lez v4, :cond_cd3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v4, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCit(I)Lage/of/civilizations2/jakowski/lukasz/City;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/City;->getCityName()Ljava/lang/String;

    move-result-object v4

    :goto_cce
    move-object/from16 v24, v4

    move-object/from16 v12, v43

    goto :goto_d29

    :cond_cd3
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v4, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_d16

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v4, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_cce

    :cond_d16
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    move-object/from16 v12, v43

    invoke-virtual {v4, v12}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_d27

    :cond_d1f
    move-object/from16 v12, v43

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_d27
    move-object/from16 v24, v4

    :goto_d29
    const/4 v13, 0x0

    goto/16 :goto_dbf

    :cond_d2c
    move-object/from16 v12, v43

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v4, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCitSize()I

    move-result v4

    if-lez v4, :cond_d74

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v4, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCit(I)Lage/of/civilizations2/jakowski/lukasz/City;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/City;->getCityName()Ljava/lang/String;

    move-result-object v4

    :goto_d71
    move-object/from16 v24, v4

    goto :goto_dbf

    :cond_d74
    const/4 v13, 0x0

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v4, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_db8

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v4, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_d71

    :cond_db8
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v4, v12}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_d71

    :goto_dbf
    sget v25, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const/4 v14, 0x2

    mul-int/lit8 v4, v4, 0x2

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    const/4 v15, 0x5

    mul-int/lit8 v14, v14, 0x5

    add-int v26, v4, v14

    sget v28, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    move-object/from16 v21, v0

    move-object/from16 v22, p0

    move/from16 v27, v33

    move/from16 v29, v30

    invoke-direct/range {v21 .. v29}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$19;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;ILjava/lang/String;IIIII)V

    .line 882
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 948
    add-int v33, v33, v30

    .line 673
    add-int/lit8 v1, v1, 0x1

    move-object v15, v2

    move-object/from16 v18, v8

    move-object v14, v12

    move-object/from16 v8, v41

    move-object/from16 v13, v42

    goto/16 :goto_9d1

    .end local v41  # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v42  # "tempIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v8, "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v13  # "tempIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v18  # "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    :cond_deb
    move-object/from16 v41, v8

    move-object/from16 v42, v13

    move-object/from16 v8, v18

    .line 953
    .end local v1  # "i":I
    .end local v13  # "tempIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v18  # "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .local v8, "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .restart local v41  # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v42  # "tempIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->topFlagFrame:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const/4 v2, 0x4

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/4 v4, 0x3

    mul-int/lit8 v1, v1, 0x3

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const/4 v7, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 955
    .local v0, "tempMenuPosY":I
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$20;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    move-object/from16 v12, v36

    invoke-virtual {v1, v12}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v15, v1, 0x4

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object v12, v7

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation$20;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;Ljava/lang/String;IZZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    const/4 v2, 0x2

    div-int/2addr v1, v2

    div-int/lit8 v2, v35, 0x2

    sub-int v4, v1, v2

    .line 989
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosY()I

    move-result v1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v2

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sub-int/2addr v2, v12

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const/4 v13, 0x2

    mul-int/lit8 v12, v12, 0x2

    sub-int/2addr v2, v12

    if-le v1, v2, :cond_e73

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    mul-int/lit8 v2, v30, 0x6

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_e96

    :cond_e73
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosY()I

    move-result v1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v2

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v1, v2

    :goto_e96
    move v12, v1

    const/4 v14, 0x1

    const/4 v15, 0x1

    .line 955
    move/from16 v16, v39

    .end local v39  # "tProvincesTotal":I
    .local v16, "tProvincesTotal":I
    move-object/from16 v1, p0

    move/from16 v17, v40

    .end local v40  # "tLargestCityTotal":I
    .local v17, "tLargestCityTotal":I
    move-object v2, v7

    move-object v7, v3

    .end local v3  # "tCivilizations":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .restart local v7  # "tCivilizations":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    move v3, v4

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move/from16 v23, v32

    .end local v8  # "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v9  # "tMostPopulousID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v32  # "tCivsTotal":I
    .restart local v18  # "tMostPopulous2":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .local v19, "tMostPopulousID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v23  # "tCivsTotal":I
    move v4, v0

    move-object/from16 v21, v5

    .end local v5  # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v21, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v5, v35

    move-object/from16 v22, v6

    .end local v6  # "tSorted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v22, "tSorted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move v6, v12

    move-object v12, v7

    .end local v7  # "tCivilizations":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .local v12, "tCivilizations":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    move-object v7, v10

    move-object/from16 v24, v41

    .end local v41  # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v24, "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move v8, v14

    move/from16 v13, v34

    move/from16 v14, v38

    const/16 v25, 0x2

    .end local v34  # "tTotalPop":I
    .end local v38  # "tMostPopulousTotal":I
    .local v13, "tTotalPop":I
    .local v14, "tMostPopulousTotal":I
    move v9, v15

    invoke-virtual/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;ZZ)V

    .line 992
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->updateLang()V

    .line 995
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_ec3
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getMenuElemsSize()I

    move-result v2

    if-ge v1, v2, :cond_ed9

    .line 996
    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v3

    div-int/lit8 v4, v1, 0x6

    rem-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCurr(I)V

    .line 995
    add-int/lit8 v1, v1, 0x1

    goto :goto_ec3

    :cond_ed9
    move-object/from16 v2, p0

    .line 998
    .end local v1  # "i":I
    return-void
.end method

.method public constructor <init>(I)V
    .registers 13
    .param p1, "tInit"  # I

    .line 51
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;-><init>()V

    .line 52
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v6, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    mul-int/lit8 v9, v0, 0x3

    .line 55
    .local v9, "tempWidth":I
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->topFlagFrame:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    add-int v10, v0, v1

    .line 57
    .local v10, "tempMenuPosY":I
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v9, 0x2

    sub-int v2, v0, v1

    const/4 v1, 0x0

    const/4 v5, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v3, v10

    move v4, v9

    invoke-virtual/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;ZZ)V

    .line 62
    return-void
.end method


# virtual methods
.method public final actionEL(I)V
    .registers 5
    .param p1, "iID"  # I

    .line 1043
    packed-switch p1, :pswitch_data_12e

    .line 1095
    rem-int/lit8 v0, p1, 0x6

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-ne v0, v1, :cond_96

    .line 1097
    :try_start_9
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_d} :catch_93

    goto :goto_56

    .line 1087
    :pswitch_e  #0x5
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->iSort:I

    if-eq v0, p1, :cond_19

    .line 1088
    sput p1, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->iSort:I

    .line 1089
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_WorldPopulation()V

    .line 1091
    :cond_19
    return-void

    .line 1079
    :pswitch_1a  #0x4
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->iSort:I

    if-eq v0, p1, :cond_25

    .line 1080
    sput p1, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->iSort:I

    .line 1081
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_WorldPopulation()V

    .line 1083
    :cond_25
    return-void

    .line 1071
    :pswitch_26  #0x3
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->iSort:I

    if-eq v0, p1, :cond_31

    .line 1072
    sput p1, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->iSort:I

    .line 1073
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_WorldPopulation()V

    .line 1075
    :cond_31
    return-void

    .line 1063
    :pswitch_32  #0x2
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->iSort:I

    if-eq v0, p1, :cond_3d

    .line 1064
    sput p1, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->iSort:I

    .line 1065
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_WorldPopulation()V

    .line 1067
    :cond_3d
    return-void

    .line 1055
    :pswitch_3e  #0x1
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->iSort:I

    if-eq v0, p1, :cond_49

    .line 1056
    sput p1, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->iSort:I

    .line 1057
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_WorldPopulation()V

    .line 1059
    :cond_49
    return-void

    .line 1047
    :pswitch_4a  #0x0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->iSort:I

    if-eq v0, p1, :cond_55

    .line 1048
    sput p1, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->iSort:I

    .line 1049
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_WorldPopulation()V

    .line 1051
    :cond_55
    return-void

    .line 1097
    :goto_56
    :try_start_56
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getCurr()I

    move-result v0

    if-ltz v0, :cond_94

    .line 1098
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v0, v2, :cond_76

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getCurr()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 1099
    :cond_76
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getCurr()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setActiveProvID(I)V

    .line 1100
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->centerToProvID(I)V
    :try_end_92
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_56 .. :try_end_92} :catch_93

    goto :goto_94

    .line 1103
    :catch_93
    move-exception v0

    .line 1105
    :cond_94
    :goto_94
    goto/16 :goto_12c

    .line 1107
    :cond_96
    rem-int/lit8 v0, p1, 0x6

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f2

    .line 1109
    :try_start_9b
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getCurr()I

    move-result v0

    if-ltz v0, :cond_f1

    .line 1110
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v0, v2, :cond_c9

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getCurr()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 1111
    :cond_c9
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getCurr()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setActiveProvID(I)V

    .line 1112
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->centerToProvID(I)V
    :try_end_ef
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9b .. :try_end_ef} :catch_f0

    goto :goto_f1

    .line 1115
    :catch_f0
    move-exception v0

    .line 1117
    :cond_f1
    :goto_f1
    goto :goto_12c

    .line 1119
    :cond_f2
    rem-int/lit8 v0, p1, 0x6

    if-nez v0, :cond_12c

    .line 1121
    :try_start_f6
    div-int/lit8 v0, p1, 0x6

    if-lez v0, :cond_12a

    .line 1122
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_fb
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapContinents()Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->getContinentsSize()I

    move-result v1

    if-ge v0, v1, :cond_12a

    .line 1123
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapContinents()Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getTextE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_127

    .line 1124
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulationContinent;->CONTINENT_ID:I

    .line 1125
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_ContinentPopulation()V
    :try_end_126
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f6 .. :try_end_126} :catch_12b

    .line 1126
    goto :goto_12a

    .line 1122
    :cond_127
    add-int/lit8 v0, v0, 0x1

    goto :goto_fb

    .line 1133
    .end local v0  # "i":I
    :cond_12a
    :goto_12a
    goto :goto_12c

    .line 1131
    :catch_12b
    move-exception v0

    .line 1135
    :cond_12c
    :goto_12c
    return-void

    nop

    :pswitch_data_12e
    .packed-switch 0x0
        :pswitch_4a  #00000000
        :pswitch_3e  #00000001
        :pswitch_32  #00000002
        :pswitch_26  #00000003
        :pswitch_1a  #00000004
        :pswitch_e  #00000005
    .end packed-switch
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 15
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 1009
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1010
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gameTopEdge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getPosX()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->PADDING:I

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gameTopEdge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getWidthM()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gameTopEdge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getHeightM()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->PADDING:I

    add-int v6, v0, v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 1011
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gameTopEdge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getPosX()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->PADDING:I

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getWidthM()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gameTopEdge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getPosY()I

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

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getHeightM()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->PADDING:I

    add-int v6, v0, v2

    const/4 v7, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 1013
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const v2, 0x3ee66666  # 0.45f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1014
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getPosX()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    add-int v5, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getPosY()I

    move-result v0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v0, v4

    add-int v6, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getWidthM()I

    move-result v0

    add-int/lit8 v7, v0, -0x4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getHeightM()I

    move-result v0

    div-int/lit8 v8, v0, 0x4

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1015
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getPosX()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    add-int v5, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getPosY()I

    move-result v0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v0, v4

    add-int v6, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getWidthM()I

    move-result v0

    add-int/lit8 v7, v0, -0x4

    const/4 v8, 0x1

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1016
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1019
    invoke-virtual {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->beginClipM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 1020
    invoke-virtual {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->drawMenuM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 1022
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v6, 0x3f266666  # 0.65f

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1023
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getPosX()I

    move-result v0

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosXE()I

    move-result v4

    add-int/2addr v0, v4

    add-int v5, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getMenuPosY()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosY()I

    move-result v4

    add-int/2addr v0, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {p0, v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v4

    add-int/2addr v0, v4

    add-int v6, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getWidthM()I

    move-result v0

    add-int/lit8 v7, v0, -0x4

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1024
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1025
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getPosX()I

    move-result v0

    invoke-virtual {p0, v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosXE()I

    move-result v2

    add-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getMenuPosY()I

    move-result v0

    invoke-virtual {p0, v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosY()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v2

    add-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getWidthM()I

    move-result v0

    add-int/lit8 v5, v0, -0x4

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1027
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1029
    invoke-virtual {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->endClipM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 1030
    return-void
.end method

.method public drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 5
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 1034
    if-eqz p4, :cond_5

    .line 1035
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 1037
    :cond_5
    return-void
.end method

.method public final getElementW()I
    .registers 2

    .line 1142
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getW()I

    move-result v0

    div-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public final getW()I
    .registers 3

    .line 1138
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Stats/WorldPopulation/Menu_InGame_WorldPopulation;->getWidthM()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    return v0
.end method

.method public updateLang()V
    .registers 1

    .line 1003
    return-void
.end method
