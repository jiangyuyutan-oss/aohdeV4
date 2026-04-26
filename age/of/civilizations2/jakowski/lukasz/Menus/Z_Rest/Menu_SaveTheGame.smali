.class public Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_SaveTheGame;
.super Lage/of/civilizations2/jakowski/lukasz/Menu;
.source "Menu_SaveTheGame.java"


# static fields
.field public static fileID_Civs:I

.field public static fileID_Provinces:I

.field public static firstSaveOfTheGame:Z

.field public static iNumOfSteps:I

.field public static iStepID:I

.field public static iStepID_TEXT:I

.field public static pause:Z

.field public static sSaving:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 20
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_SaveTheGame;->iStepID:I

    .line 21
    const/16 v1, 0x1a

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_SaveTheGame;->iNumOfSteps:I

    .line 23
    const/4 v1, 0x1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_SaveTheGame;->iStepID_TEXT:I

    .line 25
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_SaveTheGame;->fileID_Civs:I

    .line 26
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_SaveTheGame;->fileID_Provinces:I

    .line 28
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_SaveTheGame;->firstSaveOfTheGame:Z

    .line 30
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_SaveTheGame;->pause:Z

    .line 32
    const-string v0, ""

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_SaveTheGame;->sSaving:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .line 34
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;-><init>()V

    .line 35
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v6, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_SaveTheGame;->initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;)V

    .line 39
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v1, "Saving"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_SaveTheGame;->sSaving:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 14
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 46
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_SaveTheGame;->loadData()V

    .line 48
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const v2, 0x3f19999a  # 0.6f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 49
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    neg-int v0, v0

    add-int v4, v0, p3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v0, 0x3

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 50
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v0, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 52
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v0, v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getLOAPAD()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    add-int v2, v0, p2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    int-to-float v1, v1

    const v3, 0x3f4ccccd  # 0.8f

    mul-float v1, v1, v3

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v1, v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getLOAPAD()F

    move-result v4

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    const/high16 v5, 0x3f800000  # 1.0f

    sub-float/2addr v5, v4

    mul-float v1, v1, v5

    float-to-int v4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    int-to-float v1, v1

    mul-float v1, v1, v3

    float-to-int v5, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_SaveTheGame;->iStepID:I

    int-to-float v1, v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_SaveTheGame;->iNumOfSteps:I

    int-to-float v3, v3

    div-float v6, v1, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_SaveTheGame;->sSaving:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_SaveTheGame;->iStepID_TEXT:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, p1

    move v3, v0

    invoke-static/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drLOA(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFLjava/lang/String;)V

    .line 56
    invoke-static {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawJakowskiGames_RIGHT_BOT(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 58
    invoke-static {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawVersionLB(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 59
    return-void
.end method

.method public loadData()V
    .registers 7

    .line 63
    const/4 v0, 0x1

    :try_start_1
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_SaveTheGame;->iStepID_TEXT:I

    add-int/2addr v1, v0

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_SaveTheGame;->iStepID_TEXT:I

    .line 65
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_SaveTheGame;->pause:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 66
    sput-boolean v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_SaveTheGame;->pause:Z

    .line 67
    return-void

    .line 70
    :cond_e
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_SaveTheGame;->iStepID:I

    if-nez v1, :cond_1b

    .line 71
    sput v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_SaveTheGame;->fileID_Civs:I

    .line 72
    sput v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_SaveTheGame;->fileID_Provinces:I

    .line 74
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->saveGame_0()V

    goto/16 :goto_17f

    .line 76
    :cond_1b
    if-ne v1, v0, :cond_22

    .line 77
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->saveGame_1()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_180

    goto/16 :goto_17f

    .line 79
    :cond_22
    const/4 v3, 0x2

    const-string v4, ": "

    const-string v5, "Saving"

    if-ne v1, v3, :cond_53

    .line 80
    :try_start_29
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->saveGame_2()V

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v2, v5}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v3, "Civilizations"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_SaveTheGame;->sSaving:Ljava/lang/String;

    goto/16 :goto_17f

    .line 83
    :cond_53
    const/4 v3, 0x3

    if-ne v1, v3, :cond_75

    .line 84
    const/4 v1, 0x0

    .line 86
    .local v1, "savedT":Z
    const/4 v2, 0x0

    .local v2, "z":I
    :goto_58
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->SAVE_CIVS_SPEED:I

    if-ge v2, v3, :cond_70

    .line 87
    sget v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_SaveTheGame;->fileID_Civs:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_SaveTheGame;->fileID_Civs:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->saveGame_3(I)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 88
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_SaveTheGame;->pause:Z

    .line 89
    const/4 v1, 0x1

    .line 86
    :cond_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    .line 93
    .end local v2  # "z":I
    :cond_70
    if-eqz v1, :cond_73

    .line 94
    return-void

    .line 101
    .end local v1  # "savedT":Z
    :cond_73
    goto/16 :goto_17f

    .line 102
    :cond_75
    const/4 v3, 0x4

    if-ne v1, v3, :cond_a2

    .line 103
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->saveGame_4()V

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v2, v5}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v3, "Provinces"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_SaveTheGame;->sSaving:Ljava/lang/String;

    goto/16 :goto_17f

    .line 106
    :cond_a2
    const/4 v3, 0x5

    if-ne v1, v3, :cond_c4

    .line 107
    const/4 v1, 0x0

    .line 108
    .restart local v1  # "savedT":Z
    const/4 v2, 0x0

    .restart local v2  # "z":I
    :goto_a7
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->SAVE_PROVINCES_SPEED:I

    if-ge v2, v3, :cond_bf

    .line 109
    sget v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_SaveTheGame;->fileID_Provinces:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_SaveTheGame;->fileID_Provinces:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->saveGame_5(I)Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 110
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_SaveTheGame;->pause:Z

    .line 111
    const/4 v1, 0x1

    .line 108
    :cond_bc
    add-int/lit8 v2, v2, 0x1

    goto :goto_a7

    .line 115
    .end local v2  # "z":I
    :cond_bf
    if-eqz v1, :cond_c2

    .line 116
    return-void

    .line 123
    .end local v1  # "savedT":Z
    :cond_c2
    goto/16 :goto_17f

    .line 124
    :cond_c4
    const/4 v3, 0x6

    if-ne v1, v3, :cond_d4

    .line 125
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->saveGame_6()V

    .line 126
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_SaveTheGame;->sSaving:Ljava/lang/String;

    goto/16 :goto_17f

    .line 128
    :cond_d4
    const/4 v3, 0x7

    if-ne v1, v3, :cond_dc

    .line 129
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->saveGame_7()V

    goto/16 :goto_17f

    .line 131
    :cond_dc
    const/16 v3, 0x8

    if-ne v1, v3, :cond_e5

    .line 132
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->saveGame_8()V

    goto/16 :goto_17f

    .line 134
    :cond_e5
    const/16 v3, 0x9

    if-ne v1, v3, :cond_ee

    .line 135
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->saveGame_9()V

    goto/16 :goto_17f

    .line 137
    :cond_ee
    const/16 v3, 0xa

    if-ne v1, v3, :cond_f7

    .line 138
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->saveGame_10()V

    goto/16 :goto_17f

    .line 140
    :cond_f7
    const/16 v3, 0xb

    if-ne v1, v3, :cond_100

    .line 141
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->saveGame_10_B()V

    goto/16 :goto_17f

    .line 143
    :cond_100
    const/16 v3, 0xc

    if-ne v1, v3, :cond_106

    goto/16 :goto_17f

    .line 146
    :cond_106
    const/16 v3, 0xd

    if-ne v1, v3, :cond_10c

    goto/16 :goto_17f

    .line 149
    :cond_10c
    const/16 v3, 0xe

    if-ne v1, v3, :cond_115

    .line 150
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->saveGame_11()V

    goto/16 :goto_17f

    .line 152
    :cond_115
    const/16 v3, 0xf

    if-ne v1, v3, :cond_11e

    .line 153
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->saveGame_12()V

    goto/16 :goto_17f

    .line 155
    :cond_11e
    const/16 v3, 0x10

    if-ne v1, v3, :cond_126

    .line 156
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->saveGame_13()V

    goto :goto_17f

    .line 158
    :cond_126
    const/16 v3, 0x11

    if-ne v1, v3, :cond_12e

    .line 159
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->saveGame_14()V

    goto :goto_17f

    .line 161
    :cond_12e
    const/16 v3, 0x12

    if-ne v1, v3, :cond_136

    .line 162
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->saveGame_15()V

    goto :goto_17f

    .line 164
    :cond_136
    const/16 v3, 0x13

    if-ne v1, v3, :cond_13e

    .line 165
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->saveGame_15_1()V

    goto :goto_17f

    .line 167
    :cond_13e
    const/16 v3, 0x14

    if-ne v1, v3, :cond_146

    .line 168
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->saveGame_15A()V

    goto :goto_17f

    .line 170
    :cond_146
    const/16 v3, 0x15

    if-ne v1, v3, :cond_14e

    .line 171
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->saveGame_15B()V

    goto :goto_17f

    .line 173
    :cond_14e
    const/16 v3, 0x16

    if-ne v1, v3, :cond_156

    .line 174
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->saveGame_15C()V

    goto :goto_17f

    .line 176
    :cond_156
    const/16 v3, 0x17

    if-ne v1, v3, :cond_15e

    .line 177
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->saveGame_15D()V

    goto :goto_17f

    .line 179
    :cond_15e
    const/16 v3, 0x18

    if-ne v1, v3, :cond_166

    .line 180
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->saveGame_15E()V

    goto :goto_17f

    .line 182
    :cond_166
    const/16 v3, 0x19

    if-ne v1, v3, :cond_16e

    .line 183
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->saveGame_16()V

    goto :goto_17f

    .line 185
    :cond_16e
    const/16 v3, 0x1a

    if-ne v1, v3, :cond_173

    goto :goto_17f

    .line 189
    :cond_173
    sput-boolean v2, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->forceShowNextPlayerTurnView:Z

    .line 191
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/View;->eINGAME:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuIDWithoutAnim(Lage/of/civilizations2/jakowski/lukasz/View;)V

    .line 193
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->doAction_End()V
    :try_end_17f
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_17f} :catch_180

    .line 197
    :goto_17f
    goto :goto_184

    .line 195
    :catch_180
    move-exception v1

    .line 196
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 199
    .end local v1  # "ex":Ljava/lang/Exception;
    :goto_184
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_SaveTheGame;->iStepID:I

    add-int/2addr v1, v0

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_SaveTheGame;->iStepID:I

    .line 200
    return-void
.end method
