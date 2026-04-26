.class public Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;
.super Lage/of/civilizations2/jakowski/lukasz/Menu;
.source "Menu_InGame_View_BuildingsTop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;
    }
.end annotation


# static fields
.field public static hideAnimation:Z

.field public static lTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    const-wide/16 v0, 0x0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->lTime:J

    .line 38
    const/4 v0, 0x1

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->hideAnimation:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 87

    .line 62
    move-object/from16 v10, p0

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;-><init>()V

    .line 63
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    add-int v23, v0, v1

    .line 64
    .local v23, "tempW":I
    const/4 v11, 0x0

    .line 66
    .local v11, "tY":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 68
    .local v15, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 69
    .local v14, "castle":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 70
    .local v13, "tower":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 71
    .local v12, "port":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 72
    .local v9, "farm":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 73
    .local v8, "workshop":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 74
    .local v7, "market":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 75
    .local v6, "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 76
    .local v5, "armoury":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 78
    .local v4, "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    const/4 v0, 0x0

    .line 79
    .local v0, "castleNum":I
    const/4 v1, 0x0

    .line 80
    .local v1, "towerNum":I
    const/4 v2, 0x0

    .line 81
    .local v2, "portNum":I
    const/4 v3, 0x0

    .line 82
    .local v3, "farmNum":I
    const/16 v16, 0x0

    .line 83
    .local v16, "workshopNum":I
    const/16 v17, 0x0

    .line 84
    .local v17, "marketNum":I
    const/16 v18, 0x0

    .line 85
    .local v18, "libraryNum":I
    const/16 v19, 0x0

    .line 86
    .local v19, "armouryNum":I
    const/16 v20, 0x0

    .line 90
    .local v20, "supplyNum":I
    const/16 v21, 0x0

    move/from16 v24, v19

    move/from16 v25, v20

    move-object/from16 v19, v5

    move/from16 v5, v21

    move/from16 v81, v3

    move v3, v0

    move/from16 v0, v81

    move/from16 v82, v2

    move v2, v1

    move/from16 v1, v82

    move/from16 v83, v18

    move-object/from16 v18, v4

    move/from16 v4, v83

    move/from16 v84, v17

    move/from16 v17, v11

    move/from16 v11, v84

    move/from16 v85, v16

    move-object/from16 v16, v15

    move/from16 v15, v85

    .end local v20  # "supplyNum":I
    .local v0, "farmNum":I
    .local v1, "portNum":I
    .local v2, "towerNum":I
    .local v3, "castleNum":I
    .local v4, "libraryNum":I
    .local v5, "i":I
    .local v11, "marketNum":I
    .local v15, "workshopNum":I
    .local v16, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .local v17, "tY":I
    .local v18, "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v19, "armoury":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v24, "armouryNum":I
    .local v25, "supplyNum":I
    :goto_80
    sget-object v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    move/from16 v21, v4

    .end local v4  # "libraryNum":I
    .local v21, "libraryNum":I
    invoke-virtual/range {v20 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v4

    if-ge v5, v4, :cond_3cc

    .line 91
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    .line 93
    .local v4, "prov":Lage/of/civilizations2/jakowski/lukasz/Province;
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v20

    if-lez v20, :cond_3b4

    .line 94
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v20

    if-lez v20, :cond_f4

    .line 95
    const/16 v20, 0x0

    .line 96
    .local v20, "added":Z
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_a2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_d6

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    move/from16 v27, v5

    .end local v5  # "i":I
    .local v27, "i":I
    move-object/from16 v5, v26

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    .line 97
    .local v5, "item":Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;
    move-object/from16 v26, v6

    .end local v6  # "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v26, "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->getID()I

    move-result v6

    move/from16 v28, v11

    .end local v11  # "marketNum":I
    .local v28, "marketNum":I
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v11

    if-ne v6, v11, :cond_cf

    .line 98
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->getNum()I

    move-result v6

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v11

    add-int/2addr v6, v11

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->setNum(I)V

    .line 99
    const/16 v20, 0x1

    .line 100
    goto :goto_dc

    .line 102
    .end local v5  # "item":Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;
    :cond_cf
    move-object/from16 v6, v26

    move/from16 v5, v27

    move/from16 v11, v28

    goto :goto_a2

    .line 96
    .end local v26  # "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v27  # "i":I
    .end local v28  # "marketNum":I
    .local v5, "i":I
    .restart local v6  # "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v11  # "marketNum":I
    :cond_d6
    move/from16 v27, v5

    move-object/from16 v26, v6

    move/from16 v28, v11

    .line 103
    .end local v5  # "i":I
    .end local v6  # "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v11  # "marketNum":I
    .restart local v26  # "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v27  # "i":I
    .restart local v28  # "marketNum":I
    :goto_dc
    if-nez v20, :cond_ee

    .line 104
    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v11

    invoke-direct {v5, v10, v6, v11}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;II)V

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_ee
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_fa

    .line 94
    .end local v20  # "added":Z
    .end local v26  # "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v27  # "i":I
    .end local v28  # "marketNum":I
    .restart local v5  # "i":I
    .restart local v6  # "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v11  # "marketNum":I
    :cond_f4
    move/from16 v27, v5

    move-object/from16 v26, v6

    move/from16 v28, v11

    .line 109
    .end local v5  # "i":I
    .end local v6  # "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v11  # "marketNum":I
    .restart local v26  # "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v27  # "i":I
    .restart local v28  # "marketNum":I
    :goto_fa
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v5

    if-lez v5, :cond_14e

    .line 110
    const/4 v5, 0x0

    .line 111
    .local v5, "added":Z
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_105
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_132

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    .line 112
    .local v11, "item":Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;
    move/from16 v20, v3

    .end local v3  # "castleNum":I
    .local v20, "castleNum":I
    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->getID()I

    move-result v3

    move/from16 v22, v5

    .end local v5  # "added":Z
    .local v22, "added":Z
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    if-ne v3, v5, :cond_12d

    .line 113
    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->getNum()I

    move-result v3

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {v11, v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->setNum(I)V

    .line 114
    const/4 v5, 0x1

    .line 115
    .end local v22  # "added":Z
    .restart local v5  # "added":Z
    goto :goto_136

    .line 117
    .end local v5  # "added":Z
    .end local v11  # "item":Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;
    .restart local v22  # "added":Z
    :cond_12d
    move/from16 v3, v20

    move/from16 v5, v22

    goto :goto_105

    .line 111
    .end local v20  # "castleNum":I
    .end local v22  # "added":Z
    .restart local v3  # "castleNum":I
    .restart local v5  # "added":Z
    :cond_132
    move/from16 v20, v3

    move/from16 v22, v5

    .line 118
    .end local v3  # "castleNum":I
    .restart local v20  # "castleNum":I
    :goto_136
    if-nez v5, :cond_148

    .line 119
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v11

    invoke-direct {v3, v10, v6, v11}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;II)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_148
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_150

    .line 109
    .end local v5  # "added":Z
    .end local v20  # "castleNum":I
    .restart local v3  # "castleNum":I
    :cond_14e
    move/from16 v20, v3

    .line 124
    .end local v3  # "castleNum":I
    .restart local v20  # "castleNum":I
    :goto_150
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfPort()I

    move-result v3

    if-lez v3, :cond_19e

    .line 125
    const/4 v3, 0x0

    .line 126
    .local v3, "added":Z
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_15b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_184

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    .line 127
    .local v6, "item":Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;
    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->getID()I

    move-result v11

    move/from16 v22, v2

    .end local v2  # "towerNum":I
    .local v22, "towerNum":I
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    if-ne v11, v2, :cond_181

    .line 128
    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->getNum()I

    move-result v2

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfPort()I

    move-result v5

    add-int/2addr v2, v5

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->setNum(I)V

    .line 129
    const/4 v3, 0x1

    .line 130
    goto :goto_186

    .line 132
    .end local v6  # "item":Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;
    :cond_181
    move/from16 v2, v22

    goto :goto_15b

    .line 126
    .end local v22  # "towerNum":I
    .restart local v2  # "towerNum":I
    :cond_184
    move/from16 v22, v2

    .line 133
    .end local v2  # "towerNum":I
    .restart local v22  # "towerNum":I
    :goto_186
    if-nez v3, :cond_198

    .line 134
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfPort()I

    move-result v6

    invoke-direct {v2, v10, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;II)V

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_198
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfPort()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1a0

    .line 124
    .end local v3  # "added":Z
    .end local v22  # "towerNum":I
    .restart local v2  # "towerNum":I
    :cond_19e
    move/from16 v22, v2

    .line 139
    .end local v2  # "towerNum":I
    .restart local v22  # "towerNum":I
    :goto_1a0
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFarm()I

    move-result v2

    if-lez v2, :cond_1e7

    .line 140
    const/4 v2, 0x0

    .line 141
    .local v2, "added":Z
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1ab
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    .line 142
    .local v5, "item":Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->getID()I

    move-result v6

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v11

    if-ne v6, v11, :cond_1cf

    .line 143
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->getNum()I

    move-result v3

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFarm()I

    move-result v6

    add-int/2addr v3, v6

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->setNum(I)V

    .line 144
    const/4 v2, 0x1

    .line 145
    goto :goto_1d0

    .line 147
    .end local v5  # "item":Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;
    :cond_1cf
    goto :goto_1ab

    .line 148
    :cond_1d0
    :goto_1d0
    if-nez v2, :cond_1e2

    .line 149
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFarm()I

    move-result v6

    invoke-direct {v3, v10, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;II)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_1e2
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFarm()I

    move-result v3

    add-int/2addr v0, v3

    .line 154
    .end local v2  # "added":Z
    :cond_1e7
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWorkshop()I

    move-result v2

    if-lez v2, :cond_22e

    .line 155
    const/4 v2, 0x0

    .line 156
    .restart local v2  # "added":Z
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_217

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    .line 157
    .restart local v5  # "item":Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->getID()I

    move-result v6

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v11

    if-ne v6, v11, :cond_216

    .line 158
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->getNum()I

    move-result v3

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWorkshop()I

    move-result v6

    add-int/2addr v3, v6

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->setNum(I)V

    .line 159
    const/4 v2, 0x1

    .line 160
    goto :goto_217

    .line 162
    .end local v5  # "item":Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;
    :cond_216
    goto :goto_1f2

    .line 163
    :cond_217
    :goto_217
    if-nez v2, :cond_229

    .line 164
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWorkshop()I

    move-result v6

    invoke-direct {v3, v10, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;II)V

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_229
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWorkshop()I

    move-result v3

    add-int/2addr v15, v3

    .line 169
    .end local v2  # "added":Z
    :cond_22e
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfMarket()I

    move-result v2

    if-lez v2, :cond_277

    .line 170
    const/4 v2, 0x0

    .line 171
    .restart local v2  # "added":Z
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_239
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_25e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    .line 172
    .restart local v5  # "item":Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->getID()I

    move-result v6

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v11

    if-ne v6, v11, :cond_25d

    .line 173
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->getNum()I

    move-result v3

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfMarket()I

    move-result v6

    add-int/2addr v3, v6

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->setNum(I)V

    .line 174
    const/4 v2, 0x1

    .line 175
    goto :goto_25e

    .line 177
    .end local v5  # "item":Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;
    :cond_25d
    goto :goto_239

    .line 178
    :cond_25e
    :goto_25e
    if-nez v2, :cond_270

    .line 179
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfMarket()I

    move-result v6

    invoke-direct {v3, v10, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;II)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_270
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfMarket()I

    move-result v3

    add-int v11, v28, v3

    .end local v28  # "marketNum":I
    .local v11, "marketNum":I
    goto :goto_279

    .line 169
    .end local v2  # "added":Z
    .end local v11  # "marketNum":I
    .restart local v28  # "marketNum":I
    :cond_277
    move/from16 v11, v28

    .line 184
    .end local v28  # "marketNum":I
    .restart local v11  # "marketNum":I
    :goto_279
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfLibrary()I

    move-result v2

    if-lez v2, :cond_2cd

    .line 185
    const/4 v2, 0x0

    .line 186
    .restart local v2  # "added":Z
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_284
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2ad

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    .line 187
    .restart local v5  # "item":Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->getID()I

    move-result v6

    move/from16 v29, v0

    .end local v0  # "farmNum":I
    .local v29, "farmNum":I
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v0

    if-ne v6, v0, :cond_2aa

    .line 188
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->getNum()I

    move-result v0

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfLibrary()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->setNum(I)V

    .line 189
    const/4 v2, 0x1

    .line 190
    goto :goto_2af

    .line 192
    .end local v5  # "item":Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;
    :cond_2aa
    move/from16 v0, v29

    goto :goto_284

    .line 186
    .end local v29  # "farmNum":I
    .restart local v0  # "farmNum":I
    :cond_2ad
    move/from16 v29, v0

    .line 193
    .end local v0  # "farmNum":I
    .restart local v29  # "farmNum":I
    :goto_2af
    if-nez v2, :cond_2c4

    .line 194
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v3

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfLibrary()I

    move-result v5

    invoke-direct {v0, v10, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;II)V

    move-object/from16 v6, v26

    .end local v26  # "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v6, "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c6

    .line 193
    .end local v6  # "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v26  # "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :cond_2c4
    move-object/from16 v6, v26

    .line 196
    .end local v26  # "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v6  # "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :goto_2c6
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfLibrary()I

    move-result v0

    add-int v0, v21, v0

    .end local v21  # "libraryNum":I
    .local v0, "libraryNum":I
    goto :goto_2d3

    .line 184
    .end local v2  # "added":Z
    .end local v6  # "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v29  # "farmNum":I
    .local v0, "farmNum":I
    .restart local v21  # "libraryNum":I
    .restart local v26  # "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :cond_2cd
    move/from16 v29, v0

    move-object/from16 v6, v26

    .end local v0  # "farmNum":I
    .end local v26  # "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v6  # "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v29  # "farmNum":I
    move/from16 v0, v21

    .line 199
    .end local v21  # "libraryNum":I
    .local v0, "libraryNum":I
    :goto_2d3
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v2

    if-lez v2, :cond_32f

    .line 200
    const/4 v2, 0x0

    .line 201
    .restart local v2  # "added":Z
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2de
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    .line 202
    .restart local v5  # "item":Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;
    move/from16 v21, v0

    .end local v0  # "libraryNum":I
    .restart local v21  # "libraryNum":I
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->getID()I

    move-result v0

    move/from16 v26, v1

    .end local v1  # "portNum":I
    .local v26, "portNum":I
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    if-ne v0, v1, :cond_306

    .line 203
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->getNum()I

    move-result v0

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->setNum(I)V

    .line 204
    const/4 v2, 0x1

    .line 205
    goto :goto_30f

    .line 207
    .end local v5  # "item":Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;
    :cond_306
    move/from16 v0, v21

    move/from16 v1, v26

    goto :goto_2de

    .line 201
    .end local v21  # "libraryNum":I
    .end local v26  # "portNum":I
    .restart local v0  # "libraryNum":I
    .restart local v1  # "portNum":I
    :cond_30b
    move/from16 v21, v0

    move/from16 v26, v1

    .line 208
    .end local v0  # "libraryNum":I
    .end local v1  # "portNum":I
    .restart local v21  # "libraryNum":I
    .restart local v26  # "portNum":I
    :goto_30f
    if-nez v2, :cond_324

    .line 209
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v3

    invoke-direct {v0, v10, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;II)V

    move-object/from16 v5, v19

    .end local v19  # "armoury":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v5, "armoury":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_326

    .line 208
    .end local v5  # "armoury":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v19  # "armoury":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :cond_324
    move-object/from16 v5, v19

    .line 211
    .end local v19  # "armoury":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v5  # "armoury":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :goto_326
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    move/from16 v1, v24

    .end local v24  # "armouryNum":I
    .local v1, "armouryNum":I
    add-int v24, v1, v0

    .end local v1  # "armouryNum":I
    .restart local v24  # "armouryNum":I
    goto :goto_337

    .line 199
    .end local v2  # "added":Z
    .end local v5  # "armoury":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v21  # "libraryNum":I
    .end local v26  # "portNum":I
    .restart local v0  # "libraryNum":I
    .local v1, "portNum":I
    .restart local v19  # "armoury":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :cond_32f
    move/from16 v21, v0

    move/from16 v26, v1

    move-object/from16 v5, v19

    move/from16 v1, v24

    .line 214
    .end local v0  # "libraryNum":I
    .end local v1  # "portNum":I
    .end local v19  # "armoury":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v5  # "armoury":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v21  # "libraryNum":I
    .restart local v26  # "portNum":I
    :goto_337
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfSupply()I

    move-result v0

    if-lez v0, :cond_39e

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "added":Z
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_342
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    .line 217
    .local v2, "item":Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->getID()I

    move-result v3

    move/from16 v19, v0

    .end local v0  # "added":Z
    .local v19, "added":Z
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v0

    if-ne v3, v0, :cond_368

    .line 218
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->getNum()I

    move-result v0

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfSupply()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->setNum(I)V

    .line 219
    const/4 v0, 0x1

    .line 220
    .end local v19  # "added":Z
    .restart local v0  # "added":Z
    goto :goto_36d

    .line 222
    .end local v0  # "added":Z
    .end local v2  # "item":Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;
    .restart local v19  # "added":Z
    :cond_368
    move/from16 v0, v19

    goto :goto_342

    .line 216
    .end local v19  # "added":Z
    .restart local v0  # "added":Z
    :cond_36b
    move/from16 v19, v0

    .line 223
    :goto_36d
    if-nez v0, :cond_382

    .line 224
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfSupply()I

    move-result v3

    invoke-direct {v1, v10, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;II)V

    move-object/from16 v2, v18

    .end local v18  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v2, "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_384

    .line 223
    .end local v2  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v18  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :cond_382
    move-object/from16 v2, v18

    .line 226
    .end local v18  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v2  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :goto_384
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfSupply()I

    move-result v1

    move/from16 v3, v25

    .end local v25  # "supplyNum":I
    .local v3, "supplyNum":I
    add-int v25, v3, v1

    move-object/from16 v19, v5

    move-object/from16 v18, v9

    move/from16 v28, v11

    move/from16 v3, v20

    move/from16 v4, v21

    move/from16 v1, v26

    move/from16 v0, v29

    move-object v11, v2

    move/from16 v2, v22

    .end local v3  # "supplyNum":I
    .restart local v25  # "supplyNum":I
    goto :goto_3c2

    .line 214
    .end local v0  # "added":Z
    .end local v2  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v18  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :cond_39e
    move-object/from16 v2, v18

    move/from16 v3, v25

    .end local v18  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v25  # "supplyNum":I
    .restart local v2  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v3  # "supplyNum":I
    move-object/from16 v19, v5

    move-object/from16 v18, v9

    move/from16 v28, v11

    move/from16 v3, v20

    move/from16 v4, v21

    move/from16 v1, v26

    move/from16 v0, v29

    move-object v11, v2

    move/from16 v2, v22

    goto :goto_3c2

    .line 93
    .end local v20  # "castleNum":I
    .end local v22  # "towerNum":I
    .end local v26  # "portNum":I
    .end local v27  # "i":I
    .end local v29  # "farmNum":I
    .local v0, "farmNum":I
    .restart local v1  # "portNum":I
    .local v2, "towerNum":I
    .local v3, "castleNum":I
    .local v5, "i":I
    .restart local v18  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v19, "armoury":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v25  # "supplyNum":I
    :cond_3b4
    move/from16 v27, v5

    move/from16 v28, v11

    move-object/from16 v11, v18

    move/from16 v5, v25

    move-object/from16 v18, v9

    move/from16 v9, v24

    .end local v24  # "armouryNum":I
    .end local v25  # "supplyNum":I
    .local v5, "supplyNum":I
    .local v9, "armouryNum":I
    .local v11, "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v18, "farm":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v27  # "i":I
    .restart local v28  # "marketNum":I
    move/from16 v4, v21

    .line 90
    .end local v5  # "supplyNum":I
    .end local v9  # "armouryNum":I
    .end local v21  # "libraryNum":I
    .local v4, "libraryNum":I
    .restart local v24  # "armouryNum":I
    .restart local v25  # "supplyNum":I
    :goto_3c2
    add-int/lit8 v5, v27, 0x1

    move-object/from16 v9, v18

    move-object/from16 v18, v11

    move/from16 v11, v28

    .end local v27  # "i":I
    .local v5, "i":I
    goto/16 :goto_80

    .end local v4  # "libraryNum":I
    .end local v28  # "marketNum":I
    .local v9, "farm":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v11, "marketNum":I
    .local v18, "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v21  # "libraryNum":I
    :cond_3cc
    move/from16 v27, v5

    move/from16 v28, v11

    move-object/from16 v11, v18

    move/from16 v5, v25

    move-object/from16 v18, v9

    move/from16 v9, v24

    .line 231
    .end local v24  # "armouryNum":I
    .end local v25  # "supplyNum":I
    .local v5, "supplyNum":I
    .local v9, "armouryNum":I
    .local v11, "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v18, "farm":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v28  # "marketNum":I
    add-int v4, v3, v2

    add-int/2addr v4, v1

    add-int/2addr v4, v0

    add-int/2addr v4, v15

    add-int v4, v4, v28

    add-int v4, v4, v21

    add-int/2addr v4, v9

    add-int/2addr v4, v5

    .line 233
    .local v4, "totalNum":I
    move/from16 v20, v9

    .end local v9  # "armouryNum":I
    .local v20, "armouryNum":I
    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$1;

    sget v22, Lage/of/civilizations2/jakowski/lukasz/Images;->buildAll:I

    move/from16 v24, v0

    .end local v0  # "farmNum":I
    .local v24, "farmNum":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v1

    .end local v1  # "portNum":I
    .local v25, "portNum":I
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    move/from16 v26, v5

    .end local v5  # "supplyNum":I
    .local v26, "supplyNum":I
    const-string v5, "Buildings"

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v27, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v29, v5

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumberWthSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Civilization/Menu_InGame_Civ_Decisions;->getButtonH()I

    move-result v33

    const/16 v34, 0x1

    move/from16 v1, v24

    .end local v24  # "farmNum":I
    .local v1, "farmNum":I
    move-object v0, v9

    move/from16 v24, v25

    move-object/from16 v35, v27

    move/from16 v25, v1

    .end local v1  # "farmNum":I
    .local v24, "portNum":I
    .local v25, "farmNum":I
    move-object/from16 v1, p0

    move/from16 v27, v2

    .end local v2  # "towerNum":I
    .local v27, "towerNum":I
    move/from16 v2, v22

    move/from16 v36, v3

    .end local v3  # "castleNum":I
    .local v36, "castleNum":I
    move-object/from16 v3, v30

    move/from16 v37, v4

    move/from16 v30, v21

    .end local v4  # "totalNum":I
    .end local v21  # "libraryNum":I
    .local v30, "libraryNum":I
    .local v37, "totalNum":I
    move/from16 v4, v31

    move-object/from16 v39, v5

    move-object/from16 v31, v19

    move-object/from16 v38, v29

    .end local v19  # "armoury":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v31, "armoury":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    move/from16 v5, v32

    move-object/from16 v29, v6

    .end local v6  # "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v29, "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    move/from16 v6, v17

    move-object/from16 v32, v7

    .end local v7  # "market":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v32, "market":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    move/from16 v7, v23

    move-object/from16 v40, v8

    .end local v8  # "workshop":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v40, "workshop":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    move/from16 v8, v33

    move-object v10, v9

    move-object/from16 v33, v18

    move/from16 v41, v20

    .end local v18  # "farm":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v20  # "armouryNum":I
    .local v33, "farm":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v41, "armouryNum":I
    move/from16 v9, v34

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;ILjava/lang/String;IIIIIZ)V

    move-object/from16 v8, v16

    .end local v16  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .local v8, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/4 v10, 0x1

    sub-int/2addr v0, v10

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCurr(I)V

    .line 254
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v10

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v0

    add-int v16, v17, v0

    .line 256
    .end local v17  # "tY":I
    .local v16, "tY":I
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 257
    .local v7, "buttonH":I
    const/16 v17, 0x0

    .line 258
    .local v17, "elemBefore":I
    const/16 v18, 0x0

    .line 259
    .local v18, "civID":I
    const/16 v34, 0x1

    .line 264
    .local v34, "metCiv":Z
    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$2;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-static {v10}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getFort_Name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v5, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v4, "TopCivilizations"

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/16 v19, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x4

    add-int v20, v0, v1

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v42, v4

    move/from16 v4, v19

    move-object/from16 v43, v5

    move/from16 v5, v16

    move-object v9, v6

    move/from16 v6, v23

    move/from16 v44, v7

    .end local v7  # "buttonH":I
    .local v44, "buttonH":I
    move/from16 v7, v20

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;Ljava/lang/String;IIIII)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v10

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v0

    add-int v16, v16, v0

    .line 272
    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$3;

    invoke-static {v10}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getFort_Name(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->bFort:I

    const/4 v4, 0x0

    move-object v0, v9

    move/from16 v5, v16

    move/from16 v7, v36

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;Ljava/lang/String;IIIII)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v10

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move/from16 v1, v44

    .end local v44  # "buttonH":I
    .local v1, "buttonH":I
    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setHeightE(I)V

    .line 307
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v10

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0, v10}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCurr(I)V

    .line 308
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .line 309
    .end local v17  # "elemBefore":I
    .local v0, "elemBefore":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v10

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v2

    add-int v16, v16, v2

    .line 311
    const/4 v2, 0x0

    move/from16 v44, v16

    .end local v16  # "tY":I
    .local v2, "i":I
    .local v44, "tY":I
    :goto_550
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInGame:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->BUILDINGS_VIEW_TOP_CIVS_LIMIT:I

    const-string v9, "%"

    const/high16 v45, 0x42c80000  # 100.0f

    const/16 v46, -0x1

    const-string v6, "Undiscovered"

    const-string v5, ". "

    const/high16 v47, 0x437f0000  # 255.0f

    if-ge v2, v3, :cond_6ce

    .line 312
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6ba

    .line 313
    const/4 v3, 0x0

    .line 315
    .local v3, "bestID":I
    const/16 v16, 0x1

    .local v16, "a":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v10

    move/from16 v7, v16

    .end local v16  # "a":I
    .local v7, "a":I
    .local v10, "aSize":I
    :goto_571
    if-ge v7, v10, :cond_592

    .line 316
    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-static/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v4

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    move/from16 v48, v1

    .end local v1  # "buttonH":I
    .local v48, "buttonH":I
    invoke-static/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v1

    if-ge v4, v1, :cond_58d

    .line 317
    move v1, v7

    move v3, v1

    .line 315
    :cond_58d
    add-int/lit8 v7, v7, 0x1

    move/from16 v1, v48

    goto :goto_571

    .end local v48  # "buttonH":I
    .restart local v1  # "buttonH":I
    :cond_592
    move/from16 v48, v1

    .line 321
    .end local v1  # "buttonH":I
    .end local v7  # "a":I
    .end local v10  # "aSize":I
    .restart local v48  # "buttonH":I
    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$100(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v1

    .line 323
    .end local v18  # "civID":I
    .local v1, "civID":I
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_NS_Population_Buildings;

    new-instance v7, Lcom/badlogic/gdx/graphics/Color;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v10, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v10, v47

    move-object/from16 v17, v8

    .end local v8  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .local v17, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v8, v47

    move-object/from16 v20, v11

    .end local v11  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v20, "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v11

    int-to-float v11, v11

    div-float v11, v11, v47

    move-object/from16 v21, v12

    const/high16 v12, 0x3f800000  # 1.0f

    .end local v12  # "port":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v21, "port":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    invoke-direct {v7, v10, v8, v11, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v34, :cond_5f0

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v6

    goto :goto_5f6

    :cond_5f0
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_5f6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v34, :cond_602

    move/from16 v46, v1

    :cond_602
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, v39

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v8

    int-to-float v8, v8

    move/from16 v12, v36

    .end local v36  # "castleNum":I
    .local v12, "castleNum":I
    int-to-float v11, v12

    div-float/2addr v8, v11

    mul-float v8, v8, v45

    const/16 v11, 0x64

    invoke-static {v8, v11}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumberWthSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    sget v8, Lage/of/civilizations2/jakowski/lukasz/Images;->bFort:I

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    const/16 v19, 0x0

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v9, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v22

    move-object/from16 v9, v20

    .end local v20  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v9, "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    move-object v11, v4

    move/from16 v39, v12

    move-object/from16 v36, v21

    .end local v12  # "castleNum":I
    .end local v21  # "port":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v36, "port":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v39, "castleNum":I
    move-object v12, v7

    move-object v7, v13

    .end local v13  # "tower":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v7, "tower":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    move-object v13, v5

    move-object v5, v14

    .end local v14  # "castle":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v5, "castle":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    move/from16 v14, v46

    move-object/from16 v45, v9

    move/from16 v49, v15

    move-object/from16 v9, v17

    .end local v15  # "workshopNum":I
    .end local v17  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .local v9, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .local v45, "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v49, "workshopNum":I
    move-object v15, v6

    move/from16 v17, v8

    move/from16 v20, v44

    move/from16 v21, v23

    invoke-direct/range {v11 .. v22}, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_NS_Population_Buildings;-><init>(Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;IIII)V

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    rem-int/lit8 v8, v2, 0x2

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCurr(I)V

    .line 325
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v4

    add-int v44, v44, v4

    .line 327
    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 311
    .end local v3  # "bestID":I
    add-int/lit8 v2, v2, 0x1

    move/from16 v18, v1

    move-object v14, v5

    move-object v13, v7

    move-object v8, v9

    move-object/from16 v12, v36

    move/from16 v36, v39

    move-object/from16 v11, v45

    move/from16 v1, v48

    move/from16 v15, v49

    move-object/from16 v39, v10

    const/4 v10, 0x1

    goto/16 :goto_550

    .line 312
    .end local v5  # "castle":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v7  # "tower":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v9  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v39  # "castleNum":I
    .end local v45  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v48  # "buttonH":I
    .end local v49  # "workshopNum":I
    .local v1, "buttonH":I
    .restart local v8  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v11  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v12, "port":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v13  # "tower":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v14  # "castle":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v15  # "workshopNum":I
    .restart local v18  # "civID":I
    .local v36, "castleNum":I
    :cond_6ba
    move/from16 v48, v1

    move-object v1, v9

    move-object v7, v13

    move/from16 v49, v15

    move-object/from16 v10, v39

    move-object v9, v8

    move-object v15, v14

    move/from16 v39, v36

    move-object v14, v11

    move-object/from16 v36, v12

    const/16 v11, 0x64

    const/high16 v12, 0x3f800000  # 1.0f

    .end local v1  # "buttonH":I
    .end local v8  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v11  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v12  # "port":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v13  # "tower":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v7  # "tower":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v9  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .local v14, "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v15, "castle":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v36, "port":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v39  # "castleNum":I
    .restart local v48  # "buttonH":I
    .restart local v49  # "workshopNum":I
    goto :goto_6e1

    .line 311
    .end local v7  # "tower":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v9  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v39  # "castleNum":I
    .end local v48  # "buttonH":I
    .end local v49  # "workshopNum":I
    .restart local v1  # "buttonH":I
    .restart local v8  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v11  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v12  # "port":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v13  # "tower":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v14, "castle":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v15, "workshopNum":I
    .local v36, "castleNum":I
    :cond_6ce
    move/from16 v48, v1

    move-object v1, v9

    move-object v7, v13

    move/from16 v49, v15

    move-object/from16 v10, v39

    move-object v9, v8

    move-object v15, v14

    move/from16 v39, v36

    move-object v14, v11

    move-object/from16 v36, v12

    const/16 v11, 0x64

    const/high16 v12, 0x3f800000  # 1.0f

    .line 334
    .end local v1  # "buttonH":I
    .end local v2  # "i":I
    .end local v8  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v11  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v12  # "port":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v13  # "tower":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v7  # "tower":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v9  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .local v14, "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v15, "castle":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v36, "port":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v39  # "castleNum":I
    .restart local v48  # "buttonH":I
    .restart local v49  # "workshopNum":I
    :goto_6e1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    const-string v13, "NoData"

    if-ne v0, v2, :cond_72c

    .line 335
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v2, v13}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    const/16 v16, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v17, v2, 0x4

    const/high16 v19, 0x3f400000  # 0.75f

    move-object v2, v8

    move-object/from16 v50, v5

    move/from16 v5, v16

    move-object/from16 v51, v6

    move/from16 v6, v44

    move-object v11, v7

    .end local v7  # "tower":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v11, "tower":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    move/from16 v7, v23

    move-object v12, v8

    move/from16 v8, v17

    move-object/from16 v20, v14

    const/16 v35, 0x0

    move-object v14, v1

    move-object v1, v9

    .end local v9  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v14  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v1, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v20  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    move/from16 v9, v19

    invoke-direct/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;-><init>(Ljava/lang/String;IIIIIF)V

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v2

    add-int v44, v44, v2

    goto :goto_737

    .line 334
    .end local v1  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v11  # "tower":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v20  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v7  # "tower":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v9  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v14  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :cond_72c
    move-object/from16 v50, v5

    move-object/from16 v51, v6

    move-object v11, v7

    move-object/from16 v20, v14

    const/16 v35, 0x0

    move-object v14, v1

    move-object v1, v9

    .line 344
    .end local v7  # "tower":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v9  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v14  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v1  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v11  # "tower":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v20  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :goto_737
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$4;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const/4 v4, 0x1

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getTower_Name(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v9, v43

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    move-object/from16 v12, v42

    invoke-virtual {v3, v12}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x4

    add-int v7, v5, v6

    move/from16 v17, v0

    .end local v0  # "elemBefore":I
    .local v17, "elemBefore":I
    move-object v0, v8

    move-object v6, v1

    move/from16 v5, v48

    .end local v1  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v48  # "buttonH":I
    .local v5, "buttonH":I
    .local v6, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    move-object/from16 v1, p0

    move v9, v5

    .end local v5  # "buttonH":I
    .local v9, "buttonH":I
    move/from16 v5, v44

    move-object/from16 v53, v6

    .end local v6  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .local v53, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    move/from16 v6, v23

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;Ljava/lang/String;IIIII)V

    move-object/from16 v7, v53

    .end local v53  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .local v7, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v0

    add-int v44, v44, v0

    .line 352
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$5;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getTower_Name(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->bTower:I

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v5, v44

    move-object/from16 v19, v13

    move-object v13, v7

    .end local v7  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .local v13, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    move/from16 v7, v27

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;Ljava/lang/String;IIIII)V

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setHeightE(I)V

    .line 387
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCurr(I)V

    .line 388
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    .line 389
    .end local v17  # "elemBefore":I
    .restart local v0  # "elemBefore":I
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v1

    add-int v44, v44, v1

    .line 391
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7e1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInGame:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->BUILDINGS_VIEW_TOP_CIVS_LIMIT:I

    if-ge v1, v2, :cond_962

    .line 392
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_94d

    .line 393
    const/4 v2, 0x0

    .line 395
    .local v2, "bestID":I
    const/4 v3, 0x1

    .local v3, "a":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "aSize":I
    :goto_7f3
    if-ge v3, v4, :cond_80f

    .line 396
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v5

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v6

    if-ge v5, v6, :cond_80c

    .line 397
    move v2, v3

    .line 395
    :cond_80c
    add-int/lit8 v3, v3, 0x1

    goto :goto_7f3

    .line 401
    .end local v3  # "a":I
    .end local v4  # "aSize":I
    :cond_80f
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$100(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v3

    .line 403
    .end local v18  # "civID":I
    .local v3, "civID":I
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_NS_Population_Buildings;

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, v47

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v7, v47

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v8, v47

    move/from16 v48, v9

    const/high16 v9, 0x3f800000  # 1.0f

    .end local v9  # "buttonH":I
    .restart local v48  # "buttonH":I
    invoke-direct {v5, v6, v7, v8, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v8, v50

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v34, :cond_86b

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v9, v51

    goto :goto_873

    :cond_86b
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    move-object/from16 v9, v51

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_873
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v34, :cond_87f

    move v7, v3

    goto :goto_880

    :cond_87f
    const/4 v7, -0x1

    :goto_880
    move-object/from16 v50, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    move-object/from16 v51, v9

    invoke-static/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v9

    int-to-float v9, v9

    move/from16 v42, v0

    move-object/from16 v17, v11

    move/from16 v0, v27

    .end local v11  # "tower":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v27  # "towerNum":I
    .local v0, "towerNum":I
    .local v17, "tower":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v42, "elemBefore":I
    int-to-float v11, v0

    div-float/2addr v9, v11

    mul-float v9, v9, v45

    const/16 v11, 0x64

    invoke-static {v9, v11}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-static/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumberWthSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v18, Lage/of/civilizations2/jakowski/lukasz/Images;->bTower:I

    sget-object v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    const/16 v22, 0x0

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v27

    move-object/from16 v53, v10

    move-object/from16 v10, v17

    .end local v17  # "tower":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v10, "tower":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    move-object v11, v4

    move/from16 v52, v0

    move-object v0, v12

    .end local v0  # "towerNum":I
    .local v52, "towerNum":I
    move-object v12, v5

    move-object/from16 v54, v0

    move-object v5, v13

    move-object/from16 v0, v19

    .end local v13  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .local v5, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    move-object v13, v6

    move-object/from16 v55, v14

    move-object/from16 v6, v20

    .end local v20  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v6, "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    move v14, v7

    move-object/from16 v56, v15

    .end local v15  # "castle":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v56, "castle":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    move-object v15, v8

    move-object/from16 v16, v9

    move/from16 v17, v18

    move-object/from16 v18, v21

    move/from16 v19, v22

    move/from16 v20, v44

    move/from16 v21, v23

    move/from16 v22, v27

    invoke-direct/range {v11 .. v22}, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_NS_Population_Buildings;-><init>(Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;IIII)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    rem-int/lit8 v8, v1, 0x2

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCurr(I)V

    .line 405
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v4

    add-int v44, v44, v4

    .line 407
    invoke-interface {v10, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 391
    .end local v2  # "bestID":I
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v19, v0

    move/from16 v18, v3

    move-object v13, v5

    move-object/from16 v20, v6

    move-object v11, v10

    move/from16 v0, v42

    move/from16 v9, v48

    move/from16 v27, v52

    move-object/from16 v10, v53

    move-object/from16 v12, v54

    move-object/from16 v14, v55

    move-object/from16 v15, v56

    goto/16 :goto_7e1

    .line 392
    .end local v3  # "civID":I
    .end local v5  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v6  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v10  # "tower":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v42  # "elemBefore":I
    .end local v48  # "buttonH":I
    .end local v52  # "towerNum":I
    .end local v56  # "castle":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v0, "elemBefore":I
    .restart local v9  # "buttonH":I
    .restart local v11  # "tower":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v13  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v15  # "castle":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v18  # "civID":I
    .restart local v20  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v27  # "towerNum":I
    :cond_94d
    move/from16 v42, v0

    move/from16 v48, v9

    move-object/from16 v53, v10

    move-object v10, v11

    move-object/from16 v54, v12

    move-object v5, v13

    move-object/from16 v55, v14

    move-object/from16 v56, v15

    move-object/from16 v0, v19

    move-object/from16 v6, v20

    move/from16 v52, v27

    .end local v0  # "elemBefore":I
    .end local v9  # "buttonH":I
    .end local v11  # "tower":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v13  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v15  # "castle":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v20  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v27  # "towerNum":I
    .restart local v5  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v6  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v10  # "tower":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v42  # "elemBefore":I
    .restart local v48  # "buttonH":I
    .restart local v52  # "towerNum":I
    .restart local v56  # "castle":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    goto :goto_976

    .line 391
    .end local v5  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v6  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v10  # "tower":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v42  # "elemBefore":I
    .end local v48  # "buttonH":I
    .end local v52  # "towerNum":I
    .end local v56  # "castle":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v0  # "elemBefore":I
    .restart local v9  # "buttonH":I
    .restart local v11  # "tower":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v13  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v15  # "castle":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v20  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v27  # "towerNum":I
    :cond_962
    move/from16 v42, v0

    move/from16 v48, v9

    move-object/from16 v53, v10

    move-object v10, v11

    move-object/from16 v54, v12

    move-object v5, v13

    move-object/from16 v55, v14

    move-object/from16 v56, v15

    move-object/from16 v0, v19

    move-object/from16 v6, v20

    move/from16 v52, v27

    .line 414
    .end local v0  # "elemBefore":I
    .end local v1  # "i":I
    .end local v9  # "buttonH":I
    .end local v11  # "tower":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v13  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v15  # "castle":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v20  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v27  # "towerNum":I
    .restart local v5  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v6  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v10  # "tower":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v42  # "elemBefore":I
    .restart local v48  # "buttonH":I
    .restart local v52  # "towerNum":I
    .restart local v56  # "castle":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :goto_976
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v11, v42

    .end local v42  # "elemBefore":I
    .local v11, "elemBefore":I
    if-ne v11, v1, :cond_9bd

    .line 415
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v7, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v8, v2, 0x4

    const/high16 v9, 0x3f400000  # 0.75f

    move-object v2, v1

    move-object v15, v5

    .end local v5  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .local v15, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    move v5, v7

    move-object v14, v6

    .end local v6  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v14  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    move/from16 v6, v44

    move/from16 v7, v23

    move-object/from16 v13, v50

    move-object/from16 v27, v10

    move-object/from16 v20, v14

    move-object/from16 v14, v43

    move/from16 v12, v48

    move-object/from16 v10, v51

    .end local v10  # "tower":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v14  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v48  # "buttonH":I
    .local v12, "buttonH":I
    .restart local v20  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v27, "tower":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    invoke-direct/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;-><init>(Ljava/lang/String;IIIIIF)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v1

    add-int v44, v44, v1

    goto :goto_9ca

    .line 414
    .end local v12  # "buttonH":I
    .end local v15  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v20  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v27  # "tower":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v5  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v6  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v10  # "tower":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v48  # "buttonH":I
    :cond_9bd
    move-object v15, v5

    move-object/from16 v20, v6

    move-object/from16 v27, v10

    move-object/from16 v14, v43

    move/from16 v12, v48

    move-object/from16 v13, v50

    move-object/from16 v10, v51

    .line 423
    .end local v5  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v6  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v10  # "tower":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v48  # "buttonH":I
    .restart local v12  # "buttonH":I
    .restart local v15  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v20  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v27  # "tower":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :goto_9ca
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$6;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const/4 v3, 0x1

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getPort_Name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    move-object/from16 v3, v54

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    const/4 v5, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x4

    add-int v7, v1, v6

    move-object v6, v3

    move v9, v11

    move/from16 v42, v52

    move-object v11, v0

    .end local v11  # "elemBefore":I
    .end local v52  # "towerNum":I
    .local v9, "elemBefore":I
    .local v42, "towerNum":I
    move-object v0, v8

    move-object/from16 v1, p0

    move v3, v4

    move v4, v5

    move/from16 v5, v44

    move-object/from16 v57, v6

    move/from16 v6, v23

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;Ljava/lang/String;IIIII)V

    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v0

    add-int v44, v44, v0

    .line 431
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$7;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getPort_Name(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->bPort:I

    const/4 v4, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v5, v44

    move/from16 v7, v24

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$7;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;Ljava/lang/String;IIIII)V

    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setHeightE(I)V

    .line 466
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCurr(I)V

    .line 467
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    .line 468
    .end local v9  # "elemBefore":I
    .restart local v0  # "elemBefore":I
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v1

    add-int v44, v44, v1

    .line 470
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_a6f
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInGame:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->BUILDINGS_VIEW_TOP_CIVS_LIMIT:I

    if-ge v1, v2, :cond_bdf

    .line 471
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_bc8

    .line 472
    const/4 v2, 0x0

    .line 474
    .restart local v2  # "bestID":I
    const/4 v3, 0x1

    .local v3, "a":I
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v4

    .restart local v4  # "aSize":I
    :goto_a81
    if-ge v3, v4, :cond_aa1

    .line 475
    move-object/from16 v9, v36

    .end local v36  # "port":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v9, "port":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v5

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v6

    if-ge v5, v6, :cond_a9c

    .line 476
    move v2, v3

    .line 474
    :cond_a9c
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v36, v9

    goto :goto_a81

    .end local v9  # "port":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v36  # "port":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :cond_aa1
    move-object/from16 v9, v36

    .line 480
    .end local v3  # "a":I
    .end local v4  # "aSize":I
    .end local v36  # "port":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v9  # "port":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$100(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v3

    .line 482
    .end local v18  # "civID":I
    .local v3, "civID":I
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_NS_Population_Buildings;

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, v47

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v7, v47

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v8, v47

    move/from16 v36, v0

    const/high16 v0, 0x3f800000  # 1.0f

    .end local v0  # "elemBefore":I
    .local v36, "elemBefore":I
    invoke-direct {v5, v6, v7, v8, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v34, :cond_afb

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v7

    goto :goto_b01

    :cond_afb
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_b01
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v34, :cond_b0d

    move v7, v3

    goto :goto_b0e

    :cond_b0d
    const/4 v7, -0x1

    :goto_b0e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v51, v10

    move-object/from16 v10, v53

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-static/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v0

    int-to-float v0, v0

    move/from16 v43, v1

    move-object/from16 v19, v11

    move/from16 v1, v24

    .end local v24  # "portNum":I
    .local v1, "portNum":I
    .local v43, "i":I
    int-to-float v11, v1

    div-float/2addr v0, v11

    mul-float v0, v0, v45

    const/16 v11, 0x64

    invoke-static {v0, v11}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v8, v55

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    .end local v1  # "portNum":I
    .restart local v24  # "portNum":I
    invoke-static/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumberWthSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    sget v17, Lage/of/civilizations2/jakowski/lukasz/Images;->bPort:I

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v22

    move-object/from16 v58, v19

    move-object v11, v4

    move/from16 v59, v12

    .end local v12  # "buttonH":I
    .local v59, "buttonH":I
    move-object v12, v5

    move-object v5, v13

    move-object v13, v6

    move-object/from16 v60, v14

    move-object/from16 v6, v20

    .end local v20  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v6  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    move v14, v7

    move-object v7, v15

    .end local v15  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v7  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    move-object v15, v0

    move/from16 v19, v1

    move/from16 v20, v44

    move/from16 v21, v23

    invoke-direct/range {v11 .. v22}, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_NS_Population_Buildings;-><init>(Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;IIII)V

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    rem-int/lit8 v4, v43, 0x2

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCurr(I)V

    .line 484
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v0

    add-int v44, v44, v0

    .line 486
    invoke-interface {v9, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 470
    .end local v2  # "bestID":I
    add-int/lit8 v1, v43, 0x1

    move/from16 v18, v3

    move-object v13, v5

    move-object/from16 v20, v6

    move-object v15, v7

    move/from16 v0, v36

    move-object/from16 v10, v51

    move-object/from16 v11, v58

    move/from16 v12, v59

    move-object/from16 v14, v60

    move-object/from16 v36, v9

    .end local v43  # "i":I
    .local v1, "i":I
    goto/16 :goto_a6f

    .line 471
    .end local v3  # "civID":I
    .end local v6  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v7  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v9  # "port":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v59  # "buttonH":I
    .restart local v0  # "elemBefore":I
    .restart local v12  # "buttonH":I
    .restart local v15  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v18  # "civID":I
    .restart local v20  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v36, "port":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :cond_bc8
    move/from16 v43, v1

    move-object/from16 v51, v10

    move-object/from16 v58, v11

    move/from16 v59, v12

    move-object v5, v13

    move-object/from16 v60, v14

    move-object v7, v15

    move-object/from16 v6, v20

    move-object/from16 v9, v36

    move-object/from16 v10, v53

    move-object/from16 v8, v55

    move/from16 v36, v0

    .end local v0  # "elemBefore":I
    .end local v1  # "i":I
    .end local v12  # "buttonH":I
    .end local v15  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v20  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v6  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v7  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v9  # "port":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v36, "elemBefore":I
    .restart local v43  # "i":I
    .restart local v59  # "buttonH":I
    goto :goto_bf5

    .line 470
    .end local v6  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v7  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v9  # "port":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v43  # "i":I
    .end local v59  # "buttonH":I
    .restart local v0  # "elemBefore":I
    .restart local v1  # "i":I
    .restart local v12  # "buttonH":I
    .restart local v15  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v20  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v36, "port":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :cond_bdf
    move/from16 v43, v1

    move-object/from16 v51, v10

    move-object/from16 v58, v11

    move/from16 v59, v12

    move-object v5, v13

    move-object/from16 v60, v14

    move-object v7, v15

    move-object/from16 v6, v20

    move-object/from16 v9, v36

    move-object/from16 v10, v53

    move-object/from16 v8, v55

    move/from16 v36, v0

    .line 493
    .end local v0  # "elemBefore":I
    .end local v1  # "i":I
    .end local v12  # "buttonH":I
    .end local v15  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v20  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v6  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v7  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v9  # "port":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v36, "elemBefore":I
    .restart local v59  # "buttonH":I
    :goto_bf5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v1, v36

    .end local v36  # "elemBefore":I
    .local v1, "elemBefore":I
    if-ne v1, v0, :cond_c3c

    .line 494
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    move-object/from16 v15, v58

    invoke-virtual {v2, v15}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v11, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v12, v2, 0x4

    const/high16 v13, 0x3f400000  # 0.75f

    move-object v2, v0

    move-object v14, v5

    move v5, v11

    move-object v11, v6

    .end local v6  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v11, "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    move/from16 v6, v44

    move-object/from16 v61, v7

    .end local v7  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .local v61, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    move/from16 v7, v23

    move-object/from16 v62, v8

    move v8, v12

    move-object/from16 v36, v9

    .end local v9  # "port":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v36, "port":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    move v9, v13

    invoke-direct/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;-><init>(Ljava/lang/String;IIIIIF)V

    move-object/from16 v9, v61

    .end local v61  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .local v9, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v0

    add-int v44, v44, v0

    goto :goto_c45

    .line 493
    .end local v11  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v36  # "port":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v6  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v7  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .local v9, "port":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :cond_c3c
    move-object v14, v5

    move-object v11, v6

    move-object/from16 v62, v8

    move-object/from16 v36, v9

    move-object/from16 v15, v58

    move-object v9, v7

    .line 502
    .end local v6  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v7  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .local v9, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v11  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v36  # "port":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :goto_c45
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$8;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const/4 v3, 0x1

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getFarm_Name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v13, v60

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    move-object/from16 v12, v57

    invoke-virtual {v2, v12}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x4

    add-int v7, v0, v5

    move/from16 v16, v1

    const/high16 v6, 0x3f800000  # 1.0f

    .end local v1  # "elemBefore":I
    .local v16, "elemBefore":I
    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v5, v44

    move/from16 v6, v23

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$8;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;Ljava/lang/String;IIIII)V

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v0

    add-int v44, v44, v0

    .line 510
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$9;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getFarm_Name(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->bFarm:I

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v5, v44

    move/from16 v7, v25

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$9;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;Ljava/lang/String;IIIII)V

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move/from16 v8, v59

    .end local v59  # "buttonH":I
    .local v8, "buttonH":I
    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setHeightE(I)V

    .line 545
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCurr(I)V

    .line 546
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    .line 547
    .end local v16  # "elemBefore":I
    .restart local v0  # "elemBefore":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v1

    add-int v44, v44, v1

    .line 549
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_ce8
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInGame:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->BUILDINGS_VIEW_TOP_CIVS_LIMIT:I

    if-ge v1, v2, :cond_e5c

    .line 550
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e4a

    .line 551
    const/4 v2, 0x0

    .line 553
    .restart local v2  # "bestID":I
    const/4 v3, 0x1

    .local v3, "a":I
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v4

    .restart local v4  # "aSize":I
    :goto_cfa
    if-ge v3, v4, :cond_d1a

    .line 554
    move-object/from16 v7, v33

    .end local v33  # "farm":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v7, "farm":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v5

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v6

    if-ge v5, v6, :cond_d15

    .line 555
    move v2, v3

    .line 553
    :cond_d15
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v33, v7

    goto :goto_cfa

    .end local v7  # "farm":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v33  # "farm":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :cond_d1a
    move-object/from16 v7, v33

    .line 559
    .end local v3  # "a":I
    .end local v4  # "aSize":I
    .end local v33  # "farm":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v7  # "farm":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$100(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v3

    .line 561
    .end local v18  # "civID":I
    .local v3, "civID":I
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_NS_Population_Buildings;

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, v47

    move/from16 v48, v8

    .end local v8  # "buttonH":I
    .restart local v48  # "buttonH":I
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v8, v47

    move-object/from16 v20, v11

    .end local v11  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v20  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v11

    int-to-float v11, v11

    div-float v11, v11, v47

    move/from16 v33, v0

    const/high16 v0, 0x3f800000  # 1.0f

    .end local v0  # "elemBefore":I
    .local v33, "elemBefore":I
    invoke-direct {v5, v6, v8, v11, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v34, :cond_d7a

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v11, v51

    goto :goto_d82

    :cond_d7a
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    move-object/from16 v11, v51

    invoke-virtual {v8, v11}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_d82
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v34, :cond_d8e

    move v8, v3

    goto :goto_d8f

    :cond_d8e
    const/4 v8, -0x1

    :goto_d8f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    move-object/from16 v51, v11

    invoke-static/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v11

    int-to-float v11, v11

    move/from16 v43, v1

    move-object/from16 v54, v12

    move/from16 v1, v25

    .end local v25  # "farmNum":I
    .local v1, "farmNum":I
    .restart local v43  # "i":I
    int-to-float v12, v1

    div-float/2addr v11, v12

    mul-float v11, v11, v45

    const/16 v12, 0x64

    invoke-static {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v11, v62

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    .end local v1  # "farmNum":I
    .restart local v25  # "farmNum":I
    invoke-static/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumberWthSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    sget v17, Lage/of/civilizations2/jakowski/lukasz/Images;->bFarm:I

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    const/16 v19, 0x0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v22

    move-object/from16 v53, v10

    move-object v12, v11

    move-object/from16 v1, v20

    move-object/from16 v10, v51

    .end local v20  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v1, "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    move-object v11, v4

    move-object/from16 v63, v12

    move-object/from16 v10, v54

    move-object v12, v5

    move-object v5, v13

    move-object v13, v6

    move-object v6, v14

    move v14, v8

    move-object v8, v15

    move-object v15, v0

    move/from16 v20, v44

    move/from16 v21, v23

    invoke-direct/range {v11 .. v22}, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_NS_Population_Buildings;-><init>(Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;IIII)V

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    rem-int/lit8 v11, v43, 0x2

    invoke-virtual {v0, v11}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCurr(I)V

    .line 563
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v0

    add-int v44, v44, v0

    .line 565
    invoke-interface {v7, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 549
    .end local v2  # "bestID":I
    add-int/lit8 v0, v43, 0x1

    move-object v11, v1

    move/from16 v18, v3

    move-object v13, v5

    move-object v14, v6

    move-object v15, v8

    move-object v12, v10

    move/from16 v8, v48

    move-object/from16 v10, v53

    move-object/from16 v62, v63

    move v1, v0

    move/from16 v0, v33

    move-object/from16 v33, v7

    .end local v43  # "i":I
    .local v0, "i":I
    goto/16 :goto_ce8

    .line 550
    .end local v3  # "civID":I
    .end local v7  # "farm":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v48  # "buttonH":I
    .local v0, "elemBefore":I
    .local v1, "i":I
    .restart local v8  # "buttonH":I
    .restart local v11  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v18  # "civID":I
    .local v33, "farm":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :cond_e4a
    move/from16 v43, v1

    move/from16 v48, v8

    move-object/from16 v53, v10

    move-object v1, v11

    move-object v10, v12

    move-object v5, v13

    move-object v6, v14

    move-object v8, v15

    move-object/from16 v7, v33

    move-object/from16 v63, v62

    move/from16 v33, v0

    .end local v0  # "elemBefore":I
    .end local v8  # "buttonH":I
    .end local v11  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v1, "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v7  # "farm":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v33, "elemBefore":I
    .restart local v43  # "i":I
    .restart local v48  # "buttonH":I
    goto :goto_e6d

    .line 549
    .end local v7  # "farm":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v43  # "i":I
    .end local v48  # "buttonH":I
    .restart local v0  # "elemBefore":I
    .local v1, "i":I
    .restart local v8  # "buttonH":I
    .restart local v11  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v33, "farm":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :cond_e5c
    move/from16 v43, v1

    move/from16 v48, v8

    move-object/from16 v53, v10

    move-object v1, v11

    move-object v10, v12

    move-object v5, v13

    move-object v6, v14

    move-object v8, v15

    move-object/from16 v7, v33

    move-object/from16 v63, v62

    move/from16 v33, v0

    .line 572
    .end local v0  # "elemBefore":I
    .end local v8  # "buttonH":I
    .end local v11  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v1, "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v7  # "farm":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v33, "elemBefore":I
    .restart local v48  # "buttonH":I
    :goto_e6d
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v11, v33

    .end local v33  # "elemBefore":I
    .local v11, "elemBefore":I
    if-ne v11, v0, :cond_eb1

    .line 573
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v2, v8}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v12, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v13, v2, 0x4

    const/high16 v14, 0x3f400000  # 0.75f

    move-object v2, v0

    move-object v15, v5

    move v5, v12

    move-object v12, v6

    move/from16 v6, v44

    move-object/from16 v33, v7

    .end local v7  # "farm":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v33, "farm":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    move/from16 v7, v23

    move-object/from16 v65, v8

    move/from16 v64, v48

    .end local v48  # "buttonH":I
    .local v64, "buttonH":I
    move v8, v13

    move-object v13, v9

    .end local v9  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v13  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    move v9, v14

    invoke-direct/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;-><init>(Ljava/lang/String;IIIIIF)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v0

    add-int v44, v44, v0

    goto :goto_eba

    .line 572
    .end local v13  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v33  # "farm":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v64  # "buttonH":I
    .restart local v7  # "farm":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v9  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v48  # "buttonH":I
    :cond_eb1
    move-object v15, v5

    move-object v12, v6

    move-object/from16 v33, v7

    move-object/from16 v65, v8

    move-object v13, v9

    move/from16 v64, v48

    .line 581
    .end local v7  # "farm":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v9  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v48  # "buttonH":I
    .restart local v13  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v33  # "farm":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v64  # "buttonH":I
    :goto_eba
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$10;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const/4 v3, 0x1

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getWorkshop_Name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v2, v10}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x4

    add-int v7, v0, v5

    move v9, v11

    const/high16 v14, 0x3f800000  # 1.0f

    .end local v11  # "elemBefore":I
    .local v9, "elemBefore":I
    move-object v0, v8

    move-object v11, v1

    .end local v1  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v11, "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    move-object/from16 v1, p0

    move/from16 v5, v44

    move/from16 v6, v23

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$10;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;Ljava/lang/String;IIIII)V

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v0

    add-int v44, v44, v0

    .line 589
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$11;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getWorkshop_Name(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->bWorkshop:I

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v5, v44

    move/from16 v7, v49

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$11;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;Ljava/lang/String;IIIII)V

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move/from16 v8, v64

    .end local v64  # "buttonH":I
    .restart local v8  # "buttonH":I
    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setHeightE(I)V

    .line 624
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCurr(I)V

    .line 625
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    .line 626
    .end local v9  # "elemBefore":I
    .restart local v0  # "elemBefore":I
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v1

    add-int v44, v44, v1

    .line 628
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f59
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInGame:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->BUILDINGS_VIEW_TOP_CIVS_LIMIT:I

    if-ge v1, v2, :cond_10d2

    .line 629
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10bd

    .line 630
    const/4 v2, 0x0

    .line 632
    .restart local v2  # "bestID":I
    const/4 v3, 0x1

    .local v3, "a":I
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v4

    .restart local v4  # "aSize":I
    :goto_f6b
    if-ge v3, v4, :cond_f8b

    .line 633
    move-object/from16 v9, v40

    .end local v40  # "workshop":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v9, "workshop":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v5

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v6

    if-ge v5, v6, :cond_f86

    .line 634
    move v2, v3

    .line 632
    :cond_f86
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v40, v9

    goto :goto_f6b

    .end local v9  # "workshop":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v40  # "workshop":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :cond_f8b
    move-object/from16 v9, v40

    .line 638
    .end local v3  # "a":I
    .end local v4  # "aSize":I
    .end local v40  # "workshop":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v9  # "workshop":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$100(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v3

    .line 640
    .end local v18  # "civID":I
    .local v3, "civID":I
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_NS_Population_Buildings;

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, v47

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v7, v47

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v14, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v14

    int-to-float v14, v14

    div-float v14, v14, v47

    move/from16 v48, v8

    const/high16 v8, 0x3f800000  # 1.0f

    .end local v8  # "buttonH":I
    .restart local v48  # "buttonH":I
    invoke-direct {v5, v6, v7, v14, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v34, :cond_fe7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v14, v51

    goto :goto_fef

    :cond_fe7
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    move-object/from16 v14, v51

    invoke-virtual {v7, v14}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_fef
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v34, :cond_ffb

    move v7, v3

    goto :goto_ffc

    :cond_ffb
    const/4 v7, -0x1

    :goto_ffc
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v54, v10

    move-object/from16 v10, v53

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    move-object/from16 v20, v11

    .end local v11  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v20  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    invoke-static/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v11

    int-to-float v11, v11

    move/from16 v40, v0

    move-object/from16 v50, v12

    move/from16 v0, v49

    .end local v49  # "workshopNum":I
    .local v0, "workshopNum":I
    .local v40, "elemBefore":I
    int-to-float v12, v0

    div-float/2addr v11, v12

    mul-float v11, v11, v45

    const/16 v12, 0x64

    invoke-static {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v11, v63

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    .end local v0  # "workshopNum":I
    .restart local v49  # "workshopNum":I
    invoke-static/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumberWthSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    sget v17, Lage/of/civilizations2/jakowski/lukasz/Images;->bWorkshop:I

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    const/4 v0, 0x0

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v22

    move-object/from16 v66, v11

    move-object/from16 v12, v20

    .end local v20  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v12, "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    move-object v11, v4

    move-object/from16 v43, v12

    move-object/from16 v67, v50

    .end local v12  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v43, "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    move-object v12, v5

    move-object v5, v13

    .end local v13  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v5  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    move-object v13, v6

    move-object v6, v14

    move v14, v7

    move-object v7, v15

    move-object v15, v8

    move/from16 v19, v0

    move/from16 v20, v44

    move/from16 v21, v23

    invoke-direct/range {v11 .. v22}, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_NS_Population_Buildings;-><init>(Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;IIII)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    rem-int/lit8 v8, v1, 0x2

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCurr(I)V

    .line 642
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v0

    add-int v44, v44, v0

    .line 644
    invoke-interface {v9, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 628
    .end local v2  # "bestID":I
    add-int/lit8 v1, v1, 0x1

    move/from16 v18, v3

    move-object v13, v5

    move-object/from16 v51, v6

    move-object v15, v7

    move/from16 v0, v40

    move-object/from16 v11, v43

    move/from16 v8, v48

    move-object/from16 v10, v54

    move-object/from16 v63, v66

    move-object/from16 v12, v67

    const/high16 v14, 0x3f800000  # 1.0f

    move-object/from16 v40, v9

    goto/16 :goto_f59

    .line 629
    .end local v3  # "civID":I
    .end local v5  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v9  # "workshop":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v43  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v48  # "buttonH":I
    .local v0, "elemBefore":I
    .restart local v8  # "buttonH":I
    .restart local v11  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v13  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v18  # "civID":I
    .local v40, "workshop":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :cond_10bd
    move/from16 v48, v8

    move-object/from16 v54, v10

    move-object/from16 v43, v11

    move-object/from16 v67, v12

    move-object v5, v13

    move-object v7, v15

    move-object/from16 v9, v40

    move-object/from16 v6, v51

    move-object/from16 v10, v53

    move-object/from16 v66, v63

    move/from16 v40, v0

    .end local v0  # "elemBefore":I
    .end local v8  # "buttonH":I
    .end local v11  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v13  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v5  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v9  # "workshop":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v40, "elemBefore":I
    .restart local v43  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v48  # "buttonH":I
    goto :goto_10e6

    .line 628
    .end local v5  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v9  # "workshop":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v43  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v48  # "buttonH":I
    .restart local v0  # "elemBefore":I
    .restart local v8  # "buttonH":I
    .restart local v11  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v13  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .local v40, "workshop":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :cond_10d2
    move/from16 v48, v8

    move-object/from16 v54, v10

    move-object/from16 v43, v11

    move-object/from16 v67, v12

    move-object v5, v13

    move-object v7, v15

    move-object/from16 v9, v40

    move-object/from16 v6, v51

    move-object/from16 v10, v53

    move-object/from16 v66, v63

    move/from16 v40, v0

    .line 651
    .end local v0  # "elemBefore":I
    .end local v1  # "i":I
    .end local v8  # "buttonH":I
    .end local v11  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v13  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v5  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v9  # "workshop":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v40, "elemBefore":I
    .restart local v43  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v48  # "buttonH":I
    :goto_10e6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v1, v40

    .end local v40  # "elemBefore":I
    .local v1, "elemBefore":I
    if-ne v1, v0, :cond_112c

    .line 652
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    move-object/from16 v15, v65

    invoke-virtual {v2, v15}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v8, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v11, v2, 0x4

    const/high16 v12, 0x3f400000  # 0.75f

    move-object v2, v0

    move-object v14, v5

    .end local v5  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .local v14, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    move v5, v8

    move-object v13, v6

    move/from16 v6, v44

    move-object v8, v7

    move/from16 v7, v23

    move-object/from16 v69, v8

    move/from16 v68, v48

    .end local v48  # "buttonH":I
    .local v68, "buttonH":I
    move v8, v11

    move-object/from16 v40, v9

    .end local v9  # "workshop":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v40, "workshop":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    move v9, v12

    invoke-direct/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;-><init>(Ljava/lang/String;IIIIIF)V

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v0

    add-int v44, v44, v0

    goto :goto_1136

    .line 651
    .end local v14  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v40  # "workshop":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v68  # "buttonH":I
    .restart local v5  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v9  # "workshop":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v48  # "buttonH":I
    :cond_112c
    move-object v14, v5

    move-object v13, v6

    move-object/from16 v69, v7

    move-object/from16 v40, v9

    move/from16 v68, v48

    move-object/from16 v15, v65

    .line 660
    .end local v5  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v9  # "workshop":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v48  # "buttonH":I
    .restart local v14  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v40  # "workshop":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v68  # "buttonH":I
    :goto_1136
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$12;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const/4 v3, 0x1

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getMarket_Name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v9, v69

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    move-object/from16 v12, v54

    invoke-virtual {v2, v12}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x4

    add-int v7, v0, v5

    move v11, v1

    move/from16 v48, v49

    .end local v1  # "elemBefore":I
    .end local v49  # "workshopNum":I
    .local v11, "elemBefore":I
    .local v48, "workshopNum":I
    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v5, v44

    move/from16 v6, v23

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$12;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v0

    add-int v44, v44, v0

    .line 668
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$13;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getMarket_Name(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->bMarket:I

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v5, v44

    move/from16 v7, v28

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$13;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move/from16 v8, v68

    .end local v68  # "buttonH":I
    .restart local v8  # "buttonH":I
    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setHeightE(I)V

    .line 703
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCurr(I)V

    .line 704
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    .line 705
    .end local v11  # "elemBefore":I
    .restart local v0  # "elemBefore":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v1

    add-int v44, v44, v1

    .line 707
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11d8
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInGame:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->BUILDINGS_VIEW_TOP_CIVS_LIMIT:I

    if-ge v1, v2, :cond_134a

    .line 708
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1338

    .line 709
    const/4 v2, 0x0

    .line 711
    .restart local v2  # "bestID":I
    const/4 v3, 0x1

    .local v3, "a":I
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v4

    .restart local v4  # "aSize":I
    :goto_11ea
    if-ge v3, v4, :cond_120a

    .line 712
    move-object/from16 v7, v32

    .end local v32  # "market":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v7, "market":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v5

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v6

    if-ge v5, v6, :cond_1205

    .line 713
    move v2, v3

    .line 711
    :cond_1205
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v32, v7

    goto :goto_11ea

    .end local v7  # "market":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v32  # "market":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :cond_120a
    move-object/from16 v7, v32

    .line 717
    .end local v3  # "a":I
    .end local v4  # "aSize":I
    .end local v32  # "market":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v7  # "market":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$100(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v3

    .line 719
    .end local v18  # "civID":I
    .local v3, "civID":I
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_NS_Population_Buildings;

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, v47

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v11

    int-to-float v11, v11

    div-float v11, v11, v47

    move/from16 v59, v8

    .end local v8  # "buttonH":I
    .restart local v59  # "buttonH":I
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v8, v47

    move-object/from16 v60, v9

    const/high16 v9, 0x3f800000  # 1.0f

    invoke-direct {v5, v6, v11, v8, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v8, v67

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v34, :cond_1268

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v11

    goto :goto_126e

    :cond_1268
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :goto_126e
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v34, :cond_127b

    move/from16 v16, v3

    goto :goto_127d

    :cond_127b
    const/16 v16, -0x1

    :goto_127d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-static/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v9

    int-to-float v9, v9

    move-object/from16 v50, v8

    move-object/from16 v54, v12

    move/from16 v8, v28

    .end local v28  # "marketNum":I
    .local v8, "marketNum":I
    int-to-float v12, v8

    div-float/2addr v9, v12

    mul-float v9, v9, v45

    const/16 v12, 0x64

    invoke-static {v9, v12}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v11, v66

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    .end local v8  # "marketNum":I
    .restart local v28  # "marketNum":I
    invoke-static/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumberWthSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v17, Lage/of/civilizations2/jakowski/lukasz/Images;->bMarket:I

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    const/16 v19, 0x0

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v22

    move-object v12, v11

    move-object v11, v4

    move-object/from16 v53, v10

    move-object/from16 v70, v12

    move-object/from16 v10, v54

    move-object v12, v5

    move-object v5, v13

    move-object v13, v6

    move-object v6, v14

    .end local v14  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .local v6, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    move/from16 v14, v16

    move-object/from16 v51, v5

    move-object v5, v15

    move-object v15, v9

    move-object/from16 v16, v8

    move/from16 v20, v44

    move/from16 v21, v23

    invoke-direct/range {v11 .. v22}, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_NS_Population_Buildings;-><init>(Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;IIII)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    const/4 v8, 0x1

    sub-int/2addr v4, v8

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    rem-int/lit8 v9, v1, 0x2

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCurr(I)V

    .line 721
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v8

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v4

    add-int v44, v44, v4

    .line 723
    invoke-interface {v7, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 707
    .end local v2  # "bestID":I
    add-int/lit8 v1, v1, 0x1

    move/from16 v18, v3

    move-object v15, v5

    move-object v14, v6

    move-object/from16 v32, v7

    move-object v12, v10

    move-object/from16 v67, v50

    move-object/from16 v13, v51

    move-object/from16 v10, v53

    move/from16 v8, v59

    move-object/from16 v9, v60

    move-object/from16 v66, v70

    goto/16 :goto_11d8

    .line 708
    .end local v3  # "civID":I
    .end local v6  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v7  # "market":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v59  # "buttonH":I
    .local v8, "buttonH":I
    .restart local v14  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v18  # "civID":I
    .restart local v32  # "market":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :cond_1338
    move/from16 v59, v8

    move-object/from16 v60, v9

    move-object/from16 v53, v10

    move-object v10, v12

    move-object/from16 v51, v13

    move-object v6, v14

    move-object v5, v15

    move-object/from16 v7, v32

    move-object/from16 v70, v66

    move-object/from16 v50, v67

    .end local v8  # "buttonH":I
    .end local v14  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v32  # "market":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v6  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v7  # "market":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v59  # "buttonH":I
    goto :goto_135b

    .line 707
    .end local v6  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v7  # "market":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v59  # "buttonH":I
    .restart local v8  # "buttonH":I
    .restart local v14  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v32  # "market":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :cond_134a
    move/from16 v59, v8

    move-object/from16 v60, v9

    move-object/from16 v53, v10

    move-object v10, v12

    move-object/from16 v51, v13

    move-object v6, v14

    move-object v5, v15

    move-object/from16 v7, v32

    move-object/from16 v70, v66

    move-object/from16 v50, v67

    .line 730
    .end local v1  # "i":I
    .end local v8  # "buttonH":I
    .end local v14  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v32  # "market":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v6  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v7  # "market":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v59  # "buttonH":I
    :goto_135b
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_13a2

    .line 731
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v2, v5}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v8, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v9, v2, 0x4

    const/high16 v11, 0x3f400000  # 0.75f

    move-object v2, v1

    move-object v14, v5

    move-object/from16 v15, v51

    move v5, v8

    move-object v13, v6

    .end local v6  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v13  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    move/from16 v6, v44

    move-object/from16 v32, v7

    .end local v7  # "market":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v32  # "market":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    move/from16 v7, v23

    move-object/from16 v71, v50

    move/from16 v12, v59

    .end local v59  # "buttonH":I
    .local v12, "buttonH":I
    move v8, v9

    move-object/from16 v19, v14

    move-object/from16 v14, v60

    move v9, v11

    invoke-direct/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;-><init>(Ljava/lang/String;IIIIIF)V

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 732
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v1

    add-int v44, v44, v1

    goto :goto_13af

    .line 730
    .end local v12  # "buttonH":I
    .end local v13  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v32  # "market":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v6  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v7  # "market":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v59  # "buttonH":I
    :cond_13a2
    move-object/from16 v19, v5

    move-object v13, v6

    move-object/from16 v32, v7

    move-object/from16 v71, v50

    move-object/from16 v15, v51

    move/from16 v12, v59

    move-object/from16 v14, v60

    .line 739
    .end local v6  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v7  # "market":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v59  # "buttonH":I
    .restart local v12  # "buttonH":I
    .restart local v13  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v32  # "market":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :goto_13af
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$14;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const/4 v3, 0x1

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getLibrary_Name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v2, v10}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x4

    add-int v7, v1, v5

    move v9, v0

    .end local v0  # "elemBefore":I
    .local v9, "elemBefore":I
    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v5, v44

    move/from16 v6, v23

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$14;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;Ljava/lang/String;IIIII)V

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 746
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v0

    add-int v44, v44, v0

    .line 747
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$15;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getLibrary_Name(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->bLibrary:I

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v5, v44

    move/from16 v7, v30

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;Ljava/lang/String;IIIII)V

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 781
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setHeightE(I)V

    .line 782
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCurr(I)V

    .line 783
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    .line 784
    .end local v9  # "elemBefore":I
    .restart local v0  # "elemBefore":I
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v1

    add-int v44, v44, v1

    .line 786
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_1449
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInGame:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->BUILDINGS_VIEW_TOP_CIVS_LIMIT:I

    if-ge v1, v2, :cond_15c2

    .line 787
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15ab

    .line 788
    const/4 v2, 0x0

    .line 790
    .restart local v2  # "bestID":I
    const/4 v3, 0x1

    .local v3, "a":I
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v4

    .restart local v4  # "aSize":I
    :goto_145b
    if-ge v3, v4, :cond_147b

    .line 791
    move-object/from16 v9, v29

    .end local v29  # "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v9, "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v5

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v6

    if-ge v5, v6, :cond_1476

    .line 792
    move v2, v3

    .line 790
    :cond_1476
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v29, v9

    goto :goto_145b

    .end local v9  # "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v29  # "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :cond_147b
    move-object/from16 v9, v29

    .line 796
    .end local v3  # "a":I
    .end local v4  # "aSize":I
    .end local v29  # "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v9  # "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$100(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v3

    .line 798
    .end local v18  # "civID":I
    .local v3, "civID":I
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_NS_Population_Buildings;

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, v47

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v7, v47

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v8, v47

    const/high16 v11, 0x3f800000  # 1.0f

    invoke-direct {v5, v6, v7, v8, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v8, v71

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v34, :cond_14d5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v7

    goto :goto_14db

    :cond_14d5
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v7, v15}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_14db
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v34, :cond_14e7

    move v7, v3

    goto :goto_14e8

    :cond_14e7
    const/4 v7, -0x1

    :goto_14e8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v54, v10

    move-object/from16 v10, v53

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    move-object/from16 v50, v8

    invoke-static/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v8

    int-to-float v8, v8

    move/from16 v29, v0

    move/from16 v59, v12

    move/from16 v0, v30

    .end local v12  # "buttonH":I
    .end local v30  # "libraryNum":I
    .local v0, "libraryNum":I
    .local v29, "elemBefore":I
    .restart local v59  # "buttonH":I
    int-to-float v12, v0

    div-float/2addr v8, v12

    mul-float v8, v8, v45

    const/16 v12, 0x64

    invoke-static {v8, v12}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v11, v70

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    .end local v0  # "libraryNum":I
    .restart local v30  # "libraryNum":I
    invoke-static/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumberWthSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    sget v17, Lage/of/civilizations2/jakowski/lukasz/Images;->bLibrary:I

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    const/4 v0, 0x0

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v22

    move-object v12, v11

    const/high16 v20, 0x3f800000  # 1.0f

    move-object v11, v4

    move-object/from16 v73, v12

    move/from16 v72, v59

    .end local v59  # "buttonH":I
    .local v72, "buttonH":I
    move-object v12, v5

    move-object v5, v13

    .end local v13  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v5  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    move-object v13, v6

    move-object/from16 v75, v14

    move-object/from16 v74, v19

    const/high16 v6, 0x3f800000  # 1.0f

    move v14, v7

    move-object v7, v15

    move-object v15, v8

    move/from16 v19, v0

    move/from16 v20, v44

    move/from16 v21, v23

    invoke-direct/range {v11 .. v22}, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_NS_Population_Buildings;-><init>(Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;IIII)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 799
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    rem-int/lit8 v8, v1, 0x2

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCurr(I)V

    .line 800
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v0

    add-int v44, v44, v0

    .line 802
    invoke-interface {v9, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 786
    .end local v2  # "bestID":I
    add-int/lit8 v1, v1, 0x1

    move/from16 v18, v3

    move-object v13, v5

    move-object v15, v7

    move/from16 v0, v29

    move-object/from16 v71, v50

    move-object/from16 v10, v54

    move/from16 v12, v72

    move-object/from16 v70, v73

    move-object/from16 v19, v74

    move-object/from16 v14, v75

    move-object/from16 v29, v9

    goto/16 :goto_1449

    .line 787
    .end local v3  # "civID":I
    .end local v5  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v9  # "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v72  # "buttonH":I
    .local v0, "elemBefore":I
    .restart local v12  # "buttonH":I
    .restart local v13  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v18  # "civID":I
    .local v29, "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :cond_15ab
    move-object/from16 v54, v10

    move/from16 v72, v12

    move-object v5, v13

    move-object/from16 v75, v14

    move-object v7, v15

    move-object/from16 v74, v19

    move-object/from16 v9, v29

    move-object/from16 v10, v53

    move-object/from16 v73, v70

    move-object/from16 v50, v71

    const/high16 v6, 0x3f800000  # 1.0f

    move/from16 v29, v0

    .end local v0  # "elemBefore":I
    .end local v12  # "buttonH":I
    .end local v13  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v5  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v9  # "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v29, "elemBefore":I
    .restart local v72  # "buttonH":I
    goto :goto_15d8

    .line 786
    .end local v5  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v9  # "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v72  # "buttonH":I
    .restart local v0  # "elemBefore":I
    .restart local v12  # "buttonH":I
    .restart local v13  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .local v29, "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :cond_15c2
    move-object/from16 v54, v10

    move/from16 v72, v12

    move-object v5, v13

    move-object/from16 v75, v14

    move-object v7, v15

    move-object/from16 v74, v19

    move-object/from16 v9, v29

    move-object/from16 v10, v53

    move-object/from16 v73, v70

    move-object/from16 v50, v71

    const/high16 v6, 0x3f800000  # 1.0f

    move/from16 v29, v0

    .line 809
    .end local v0  # "elemBefore":I
    .end local v1  # "i":I
    .end local v12  # "buttonH":I
    .end local v13  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v5  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v9  # "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v29, "elemBefore":I
    .restart local v72  # "buttonH":I
    :goto_15d8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v1, v29

    .end local v29  # "elemBefore":I
    .local v1, "elemBefore":I
    if-ne v1, v0, :cond_161f

    .line 810
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    move-object/from16 v15, v74

    invoke-virtual {v2, v15}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v8, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v11, v2, 0x4

    const/high16 v12, 0x3f400000  # 0.75f

    move-object v2, v0

    move-object v14, v5

    .end local v5  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v14  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    move v5, v8

    const/high16 v13, 0x3f800000  # 1.0f

    move/from16 v6, v44

    move-object v8, v7

    move/from16 v7, v23

    move-object/from16 v76, v8

    move-object/from16 v77, v50

    move v8, v11

    move-object/from16 v29, v9

    .end local v9  # "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v29, "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    move v9, v12

    invoke-direct/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;-><init>(Ljava/lang/String;IIIIIF)V

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 811
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v0

    add-int v44, v44, v0

    goto :goto_162a

    .line 809
    .end local v14  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v29  # "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v5  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v9  # "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :cond_161f
    move-object v14, v5

    move-object/from16 v76, v7

    move-object/from16 v29, v9

    move-object/from16 v77, v50

    move-object/from16 v15, v74

    const/high16 v13, 0x3f800000  # 1.0f

    .line 818
    .end local v5  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v9  # "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v14  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v29  # "library":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :goto_162a
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$16;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const/4 v3, 0x1

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getArmoury_Name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v9, v75

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    move-object/from16 v12, v54

    invoke-virtual {v2, v12}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x4

    add-int v7, v0, v5

    move v11, v1

    .end local v1  # "elemBefore":I
    .restart local v11  # "elemBefore":I
    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v5, v44

    move/from16 v6, v23

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$16;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v0

    add-int v44, v44, v0

    .line 826
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$17;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getArmoury_Name(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->bArmoury:I

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v5, v44

    move/from16 v7, v41

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$17;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 860
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move/from16 v8, v72

    .end local v72  # "buttonH":I
    .restart local v8  # "buttonH":I
    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setHeightE(I)V

    .line 861
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCurr(I)V

    .line 862
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    .line 863
    .end local v11  # "elemBefore":I
    .restart local v0  # "elemBefore":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v1

    add-int v44, v44, v1

    .line 865
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16ca
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInGame:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->BUILDINGS_VIEW_TOP_CIVS_LIMIT:I

    if-ge v1, v2, :cond_1846

    .line 866
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1834

    .line 867
    const/4 v2, 0x0

    .line 869
    .restart local v2  # "bestID":I
    const/4 v3, 0x1

    .local v3, "a":I
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v4

    .restart local v4  # "aSize":I
    :goto_16dc
    if-ge v3, v4, :cond_16fc

    .line 870
    move-object/from16 v7, v31

    .end local v31  # "armoury":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v7, "armoury":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v5

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v6

    if-ge v5, v6, :cond_16f7

    .line 871
    move v2, v3

    .line 869
    :cond_16f7
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v31, v7

    goto :goto_16dc

    .end local v7  # "armoury":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v31  # "armoury":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :cond_16fc
    move-object/from16 v7, v31

    .line 875
    .end local v3  # "a":I
    .end local v4  # "aSize":I
    .end local v31  # "armoury":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v7  # "armoury":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$100(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v3

    .line 877
    .end local v18  # "civID":I
    .local v3, "civID":I
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_NS_Population_Buildings;

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, v47

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v11

    int-to-float v11, v11

    div-float v11, v11, v47

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v13

    int-to-float v13, v13

    div-float v13, v13, v47

    move/from16 v59, v8

    const/high16 v8, 0x3f800000  # 1.0f

    .end local v8  # "buttonH":I
    .restart local v59  # "buttonH":I
    invoke-direct {v5, v6, v11, v13, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v13, v77

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v34, :cond_175c

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v60, v9

    move-object/from16 v9, v76

    goto :goto_1766

    :cond_175c
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    move-object/from16 v60, v9

    move-object/from16 v9, v76

    invoke-virtual {v11, v9}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :goto_1766
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v34, :cond_1773

    move/from16 v16, v3

    goto :goto_1775

    :cond_1773
    const/16 v16, -0x1

    :goto_1775
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-static/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v8

    int-to-float v8, v8

    move-object/from16 v51, v9

    move-object/from16 v54, v12

    move/from16 v9, v41

    .end local v41  # "armouryNum":I
    .local v9, "armouryNum":I
    int-to-float v12, v9

    div-float/2addr v8, v12

    mul-float v8, v8, v45

    const/16 v12, 0x64

    invoke-static {v8, v12}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v11, v73

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    .end local v9  # "armouryNum":I
    .restart local v41  # "armouryNum":I
    invoke-static/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumberWthSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v17, Lage/of/civilizations2/jakowski/lukasz/Images;->bArmoury:I

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    const/16 v20, 0x0

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v22

    move-object v12, v11

    move-object v11, v4

    move-object/from16 v53, v10

    move-object/from16 v78, v12

    move-object/from16 v10, v54

    move-object v12, v5

    move-object v5, v13

    move-object v13, v6

    move-object v6, v14

    .end local v14  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v6  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    move/from16 v14, v16

    move-object/from16 v50, v5

    move-object v5, v15

    move-object v15, v8

    move-object/from16 v16, v9

    move/from16 v19, v20

    move/from16 v20, v44

    move/from16 v21, v23

    invoke-direct/range {v11 .. v22}, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_NS_Population_Buildings;-><init>(Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;IIII)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 878
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    const/4 v8, 0x1

    sub-int/2addr v4, v8

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    rem-int/lit8 v9, v1, 0x2

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCurr(I)V

    .line 879
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v8

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v4

    add-int v44, v44, v4

    .line 881
    invoke-interface {v7, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 865
    .end local v2  # "bestID":I
    add-int/lit8 v1, v1, 0x1

    move/from16 v18, v3

    move-object v15, v5

    move-object v14, v6

    move-object/from16 v31, v7

    move-object v12, v10

    move-object/from16 v77, v50

    move-object/from16 v76, v51

    move-object/from16 v10, v53

    move/from16 v8, v59

    move-object/from16 v9, v60

    move-object/from16 v73, v78

    const/high16 v13, 0x3f800000  # 1.0f

    goto/16 :goto_16ca

    .line 866
    .end local v3  # "civID":I
    .end local v6  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v7  # "armoury":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v59  # "buttonH":I
    .restart local v8  # "buttonH":I
    .restart local v14  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v18  # "civID":I
    .restart local v31  # "armoury":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :cond_1834
    move/from16 v59, v8

    move-object/from16 v60, v9

    move-object/from16 v53, v10

    move-object v10, v12

    move-object v6, v14

    move-object v5, v15

    move-object/from16 v7, v31

    move-object/from16 v78, v73

    move-object/from16 v51, v76

    move-object/from16 v50, v77

    .end local v8  # "buttonH":I
    .end local v14  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v31  # "armoury":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v6  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v7  # "armoury":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v59  # "buttonH":I
    goto :goto_1857

    .line 865
    .end local v6  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v7  # "armoury":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v59  # "buttonH":I
    .restart local v8  # "buttonH":I
    .restart local v14  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v31  # "armoury":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :cond_1846
    move/from16 v59, v8

    move-object/from16 v60, v9

    move-object/from16 v53, v10

    move-object v10, v12

    move-object v6, v14

    move-object v5, v15

    move-object/from16 v7, v31

    move-object/from16 v78, v73

    move-object/from16 v51, v76

    move-object/from16 v50, v77

    .line 888
    .end local v1  # "i":I
    .end local v8  # "buttonH":I
    .end local v14  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v31  # "armoury":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v6  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v7  # "armoury":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v59  # "buttonH":I
    :goto_1857
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_189c

    .line 889
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v2, v5}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v8, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v9, v2, 0x4

    const/high16 v11, 0x3f400000  # 0.75f

    move-object v2, v1

    move-object v14, v5

    move-object/from16 v15, v50

    move v5, v8

    move-object v13, v6

    .end local v6  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v13  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    move/from16 v6, v44

    move-object/from16 v31, v7

    .end local v7  # "armoury":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v31  # "armoury":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    move/from16 v7, v23

    move/from16 v12, v59

    .end local v59  # "buttonH":I
    .restart local v12  # "buttonH":I
    move v8, v9

    move-object/from16 v19, v14

    move-object/from16 v14, v60

    move v9, v11

    invoke-direct/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;-><init>(Ljava/lang/String;IIIIIF)V

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 890
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v1

    add-int v44, v44, v1

    goto :goto_18a7

    .line 888
    .end local v12  # "buttonH":I
    .end local v13  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v31  # "armoury":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v6  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v7  # "armoury":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v59  # "buttonH":I
    :cond_189c
    move-object/from16 v19, v5

    move-object v13, v6

    move-object/from16 v31, v7

    move-object/from16 v15, v50

    move/from16 v12, v59

    move-object/from16 v14, v60

    .line 897
    .end local v6  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v7  # "armoury":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v59  # "buttonH":I
    .restart local v12  # "buttonH":I
    .restart local v13  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v31  # "armoury":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :goto_18a7
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$18;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const/4 v3, 0x1

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getSupply_Name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v2, v10}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x4

    add-int v7, v1, v5

    move v9, v0

    .end local v0  # "elemBefore":I
    .local v9, "elemBefore":I
    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v5, v44

    move/from16 v6, v23

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$18;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;Ljava/lang/String;IIIII)V

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 904
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v0

    add-int v44, v44, v0

    .line 905
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$19;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getSupply_Name(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->bSupply:I

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v5, v44

    move/from16 v7, v26

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$19;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;Ljava/lang/String;IIIII)V

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 939
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setHeightE(I)V

    .line 940
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCurr(I)V

    .line 941
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v10

    .line 942
    .end local v9  # "elemBefore":I
    .local v10, "elemBefore":I
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v0

    add-int v44, v44, v0

    .line 944
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1941
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInGame:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->BUILDINGS_VIEW_TOP_CIVS_LIMIT:I

    if-ge v0, v1, :cond_1aae

    .line 945
    invoke-interface/range {v43 .. v43}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1aa0

    .line 946
    const/4 v1, 0x0

    .line 948
    .local v1, "bestID":I
    const/4 v2, 0x1

    .local v2, "a":I
    invoke-interface/range {v43 .. v43}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "aSize":I
    :goto_1953
    if-ge v2, v3, :cond_1973

    .line 949
    move-object/from16 v9, v43

    .end local v43  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v9, "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v4

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v5

    if-ge v4, v5, :cond_196e

    .line 950
    move v1, v2

    .line 948
    :cond_196e
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v43, v9

    goto :goto_1953

    .end local v9  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v43  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :cond_1973
    move-object/from16 v9, v43

    .line 954
    .end local v2  # "a":I
    .end local v3  # "aSize":I
    .end local v43  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v9  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$100(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v2

    .line 956
    .end local v18  # "civID":I
    .local v2, "civID":I
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_NS_Population_Buildings;

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v5, v47

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, v47

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v7, v47

    const/high16 v8, 0x3f800000  # 1.0f

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v34, :cond_19cd

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, v51

    goto :goto_19d5

    :cond_19cd
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    move-object/from16 v7, v51

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_19d5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v34, :cond_19e1

    move v6, v2

    goto :goto_19e2

    :cond_19e1
    const/4 v6, -0x1

    :goto_19e2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, v53

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    move-object/from16 v51, v7

    invoke-static/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v7

    int-to-float v7, v7

    move/from16 v43, v10

    move/from16 v59, v12

    move/from16 v10, v26

    .end local v12  # "buttonH":I
    .end local v26  # "supplyNum":I
    .local v10, "supplyNum":I
    .local v43, "elemBefore":I
    .restart local v59  # "buttonH":I
    int-to-float v12, v10

    div-float/2addr v7, v12

    mul-float v7, v7, v45

    const/16 v12, 0x64

    invoke-static {v7, v12}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v11, v78

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    invoke-static/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I

    move-result v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumberWthSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    sget v17, Lage/of/civilizations2/jakowski/lukasz/Images;->bSupply:I

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    const/4 v8, 0x0

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v22

    move-object/from16 v26, v11

    move-object v11, v3

    move/from16 v49, v59

    const/16 v50, 0x64

    .end local v59  # "buttonH":I
    .local v49, "buttonH":I
    move-object v12, v4

    move-object v4, v13

    .end local v13  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .local v4, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    move-object v13, v5

    move-object/from16 v80, v14

    move-object/from16 v79, v19

    move-object/from16 v5, v51

    move v14, v6

    move-object v6, v15

    move-object v15, v7

    move/from16 v19, v8

    move/from16 v20, v44

    move/from16 v21, v23

    invoke-direct/range {v11 .. v22}, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_NS_Population_Buildings;-><init>(Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;IIII)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 957
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    rem-int/lit8 v8, v0, 0x2

    invoke-virtual {v3, v8}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCurr(I)V

    .line 958
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v7

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v3

    add-int v44, v44, v3

    .line 960
    invoke-interface {v9, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 944
    .end local v1  # "bestID":I
    add-int/lit8 v0, v0, 0x1

    move/from16 v18, v2

    move-object v13, v4

    move-object v15, v6

    move-object/from16 v78, v26

    move/from16 v12, v49

    move-object/from16 v19, v79

    move-object/from16 v14, v80

    move/from16 v26, v10

    move/from16 v10, v43

    move-object/from16 v43, v9

    goto/16 :goto_1941

    .line 945
    .end local v2  # "civID":I
    .end local v4  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v9  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v49  # "buttonH":I
    .local v10, "elemBefore":I
    .restart local v12  # "buttonH":I
    .restart local v13  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v18  # "civID":I
    .restart local v26  # "supplyNum":I
    .local v43, "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :cond_1aa0
    move/from16 v49, v12

    move-object v4, v13

    move-object/from16 v80, v14

    move-object/from16 v79, v19

    move-object/from16 v9, v43

    move/from16 v43, v10

    move/from16 v10, v26

    .end local v12  # "buttonH":I
    .end local v13  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v26  # "supplyNum":I
    .restart local v4  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v9  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v10, "supplyNum":I
    .local v43, "elemBefore":I
    .restart local v49  # "buttonH":I
    goto :goto_1abb

    .line 944
    .end local v4  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v9  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .end local v49  # "buttonH":I
    .local v10, "elemBefore":I
    .restart local v12  # "buttonH":I
    .restart local v13  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v26  # "supplyNum":I
    .local v43, "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :cond_1aae
    move/from16 v49, v12

    move-object v4, v13

    move-object/from16 v80, v14

    move-object/from16 v79, v19

    move-object/from16 v9, v43

    move/from16 v43, v10

    move/from16 v10, v26

    .line 967
    .end local v0  # "i":I
    .end local v12  # "buttonH":I
    .end local v13  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v26  # "supplyNum":I
    .restart local v4  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v9  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v10, "supplyNum":I
    .local v43, "elemBefore":I
    .restart local v49  # "buttonH":I
    :goto_1abb
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v11, v43

    .end local v43  # "elemBefore":I
    .restart local v11  # "elemBefore":I
    if-ne v11, v0, :cond_1af9

    .line 968
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    move-object/from16 v2, v79

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, -0x1

    const/4 v5, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v8, v2, 0x4

    const/high16 v12, 0x3f400000  # 0.75f

    move-object v2, v0

    move-object v13, v4

    .end local v4  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v13  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    move v4, v1

    move/from16 v6, v44

    move/from16 v7, v23

    move-object v14, v9

    .end local v9  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .local v14, "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    move v9, v12

    invoke-direct/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;-><init>(Ljava/lang/String;IIIIIF)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 969
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v0

    add-int v44, v44, v0

    goto :goto_1afb

    .line 967
    .end local v13  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v14  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v4  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v9  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :cond_1af9
    move-object v13, v4

    move-object v14, v9

    .line 974
    .end local v4  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .end local v9  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    .restart local v13  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .restart local v14  # "supply":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;>;"
    :goto_1afb
    invoke-interface/range {v56 .. v56}, Ljava/util/List;->clear()V

    .line 999
    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$20;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapName_Just(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    move-object/from16 v2, v38

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v3, v0, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$20;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;Ljava/lang/String;IZZ)V

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->topFlagBG:I

    .line 1041
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x5

    add-int v3, v0, v1

    add-int/lit8 v0, v44, 0x1

    .line 1042
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v1

    if-eqz v1, :cond_1b84

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LANDSCAPE:Z

    if-nez v1, :cond_1b84

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->topFlagBG:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    add-int/2addr v5, v7

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    goto :goto_1baf

    :cond_1b84
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->topFlagBG:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInGame:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;

    iget-boolean v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->MAP_MODES_MENUS_TO_PROVINCE_INFO:Z

    if-eqz v5, :cond_1bac

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    add-int/2addr v5, v7

    mul-int/lit8 v9, v5, 0x2

    goto :goto_1bad

    :cond_1bac
    const/4 v9, 0x0

    :goto_1bad
    add-int/2addr v4, v9

    sub-int/2addr v1, v4

    :goto_1baf
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 999
    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v4, v23

    move-object v6, v13

    invoke-virtual/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;ZZ)V

    .line 1045
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->updateLang()V

    .line 1046
    return-void
.end method


# virtual methods
.method public actionEL(I)V
    .registers 3
    .param p1, "iID"  # I

    .line 1106
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->actionElem(I)V

    .line 1107
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 14
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 1065
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->lTime:J

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInGame:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->MENUS_ANIMATION_TIME:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_4e

    .line 1066
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->hideAnimation:Z

    if-eqz v0, :cond_2c

    .line 1067
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->getWidthM()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->lTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInGame:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->MENUS_ANIMATION_TIME:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float v0, v0, v1

    float-to-int v0, v0

    sub-int/2addr p2, v0

    goto :goto_49

    .line 1070
    :cond_2c
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->getWidthM()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->getWidthM()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInGame:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->MENUS_ANIMATION_TIME:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 1073
    :goto_49
    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    goto :goto_57

    .line 1074
    :cond_4e
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->hideAnimation:Z

    if-eqz v0, :cond_57

    .line 1075
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->setVisibleM(Z)V

    .line 1076
    return-void

    .line 1079
    :cond_57
    :goto_57
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gameTopEdgeLine:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gameTopEdgeLine:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->getWidthM()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->PADDING:I

    add-int v5, v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->getHeightM()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int v6, v0, v2

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 1081
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3dc8c8c9

    const v2, 0x3d70f0f1

    const v3, 0x3ebebebf

    const/high16 v4, 0x3e800000  # 0.25f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1082
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->getWidthM()I

    move-result v5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v0, 0x4

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1084
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f266666  # 0.65f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1085
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->getPosX()I

    move-result v0

    add-int v5, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->getPosY()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int v6, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->getWidthM()I

    move-result v7

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v8, v0, 0x2

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1086
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1088
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 1090
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_CREATE_NEW_GAME_BOX_PLAYERS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1091
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->getPosY()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->getHeightM()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->getWidthM()I

    move-result v4

    invoke-virtual {v0, p1, v1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 1092
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3ecccccd  # 0.4f

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1093
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->getPosX()I

    move-result v0

    add-int v5, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->getPosY()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->getHeightM()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int v6, v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->getWidthM()I

    move-result v7

    const/4 v8, 0x1

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1095
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f000000  # 0.5f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1096
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->getHeightM()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->getWidthM()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, p1, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 1098
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1099
    return-void
.end method

.method public drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 5
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 1058
    if-eqz p4, :cond_5

    .line 1059
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 1061
    :cond_5
    return-void
.end method

.method public final setHideAnimation(Z)V
    .registers 10
    .param p1, "nHideAnimation"  # Z

    .line 1121
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->hideAnimation:Z

    if-eq p1, v0, :cond_33

    .line 1122
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->lTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInGame:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->MENUS_ANIMATION_TIME:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_29

    .line 1123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInGame:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->MENUS_ANIMATION_TIME:I

    int-to-long v2, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->lTime:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->lTime:J

    goto :goto_2f

    .line 1126
    :cond_29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->lTime:J

    .line 1129
    :goto_2f
    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    .line 1133
    :cond_33
    sput-boolean p1, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->hideAnimation:Z

    .line 1134
    return-void
.end method

.method public setVisibleM(Z)V
    .registers 3
    .param p1, "visible"  # Z

    .line 1111
    if-eqz p1, :cond_a

    .line 1112
    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu;->setVisibleM(Z)V

    .line 1113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->setHideAnimation(Z)V

    goto :goto_e

    .line 1116
    :cond_a
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;->setHideAnimation(Z)V

    .line 1118
    :goto_e
    return-void
.end method

.method public updateLang()V
    .registers 1

    .line 1051
    return-void
.end method
