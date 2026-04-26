.class public Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;
.super Ljava/lang/Object;
.source "KNAM.java"


# static fields
.field public static tKSO:J


# instance fields
.field public URS:J

.field public eRTR:I

.field public eZY:I

.field public iDPO:I

.field public mGCR:I

.field public mRM:Z

.field public oXS:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 23
    const-wide/16 v0, 0x0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->tKSO:J

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .param p1, "iDPO"  # I

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->oXS:I

    .line 81
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->eZY:I

    .line 83
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->eRTR:I

    .line 86
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->mRM:Z

    .line 89
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->URS:J

    .line 92
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->mGCR:I

    .line 96
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->iDPO:I

    .line 99
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->iDPO:I

    .line 101
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCitSize()I

    move-result v1

    if-lez v1, :cond_5b

    .line 102
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCit(I)Lage/of/civilizations2/jakowski/lukasz/City;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/City;->getPoX()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v2

    mul-int v1, v1, v2

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->oXS:I

    .line 103
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCit(I)Lage/of/civilizations2/jakowski/lukasz/City;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/City;->getPosY()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v1

    mul-int v0, v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->eZY:I

    goto :goto_73

    .line 106
    :cond_5b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShX()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->oXS:I

    .line 107
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShY()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->eZY:I

    .line 110
    :goto_73
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->eRTR:I

    .line 111
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 22
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 26
    move-object/from16 v1, p0

    move-object/from16 v10, p1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->eRTR:I

    sub-int/2addr v0, v2

    const/4 v11, 0x1

    const/16 v2, 0xa

    if-le v0, v2, :cond_10

    .line 27
    iput-boolean v11, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->mRM:Z

    .line 30
    :cond_10
    iget v0, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->iDPO:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v2

    if-lt v0, v2, :cond_1d

    .line 31
    iput-boolean v11, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->mRM:Z

    .line 32
    return-void

    .line 36
    :cond_1d
    :try_start_1d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->iDPO:I

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProv()Z

    move-result v0

    if-eqz v0, :cond_18b

    iget-boolean v0, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->mRM:Z

    if-nez v0, :cond_18b

    .line 37
    iget-wide v2, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->URS:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_54

    .line 38
    sget-wide v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    iput-wide v2, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->URS:J

    .line 40
    sget-wide v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->tKSO:J

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAtomic:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;->ATOMIC_BOMB_SOUND_EFFECT_LOCK_TIME:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    sget-wide v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_54

    .line 41
    sget-wide v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    sput-wide v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->tKSO:J

    .line 42
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SFXManager:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_NUKE:I

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->playSound(I)V

    .line 46
    :cond_54
    const v0, 0x3dcccccd  # 0.1f

    sget-wide v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    iget-wide v4, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->URS:J

    sub-long/2addr v2, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAtomic:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;->ATOMIC_BOMB_ANIMATION_TIME:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v12, 0x3f800000  # 1.0f

    invoke-static {v12, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const v3, 0x3f666666  # 0.9f

    mul-float v2, v2, v3

    add-float/2addr v0, v2

    .line 48
    .local v0, "fProgress":F
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Images;->nukeImg:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v4

    mul-float v2, v2, v4

    float-to-int v14, v2

    .line 49
    .local v14, "currentW":I
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Images;->nukeImg:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v4

    mul-float v2, v2, v4

    float-to-int v15, v2

    .line 51
    .local v15, "currentH":I
    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->oXS:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->iDPO:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvPosX()I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v4

    mul-float v2, v2, v4

    float-to-int v9, v2

    .line 52
    .local v9, "nPosX":I
    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->eZY:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v4

    mul-float v2, v2, v4

    float-to-int v8, v2

    .line 54
    .local v8, "nPosY":I
    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->mGCR:I

    int-to-float v2, v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->nukeIMGSize:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    invoke-static {v12, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float v2, v2, v3

    sub-float v16, v12, v2

    .line 56
    .local v16, "fProgress2":F
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Colors;->HOVER_YELLOW:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Colors;->HOVER_YELLOW:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Colors;->HOVER_YELLOW:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v6, 0x3e4ccccd  # 0.2f

    mul-float v6, v6, v16

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v10, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 57
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientXY:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    sub-int v4, v9, v14

    sub-int v5, v8, v15

    mul-int/lit8 v6, v14, 0x2

    move-object/from16 v3, p1

    move v7, v15

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 58
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientXY:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    sub-int v4, v9, v14

    add-int v3, v8, v15

    sub-int v5, v3, v15

    mul-int/lit8 v6, v14, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v3, p1

    move v7, v15

    move/from16 v19, v8

    .end local v8  # "nPosY":I
    .local v19, "nPosY":I
    move/from16 v8, v17

    move/from16 v17, v9

    .end local v9  # "nPosX":I
    .local v17, "nPosX":I
    move/from16 v9, v18

    invoke-virtual/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 60
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v12, v12, v12, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v10, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 61
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Images;->nukeImg:Ljava/util/List;

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->mGCR:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    div-int/lit8 v3, v14, 0x2

    sub-int v4, v17, v3

    div-int/lit8 v3, v15, 0x2

    sub-int v5, v19, v3

    move-object/from16 v3, p1

    move v6, v14

    move v7, v15

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 63
    cmpl-float v2, v0, v12

    if-ltz v2, :cond_186

    .line 64
    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->mGCR:I

    add-int/2addr v2, v11

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->mGCR:I

    .line 65
    sget-wide v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    iput-wide v2, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->URS:J

    .line 67
    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->mGCR:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->nukeIMGSize:I

    if-lt v2, v3, :cond_186

    .line 68
    iput v13, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->mGCR:I

    .line 69
    iput-boolean v11, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->mRM:Z

    .line 73
    :cond_186
    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_18b
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_18b} :catch_18c

    .line 77
    .end local v0  # "fProgress":F
    .end local v14  # "currentW":I
    .end local v15  # "currentH":I
    .end local v16  # "fProgress2":F
    .end local v17  # "nPosX":I
    .end local v19  # "nPosY":I
    :cond_18b
    goto :goto_18f

    .line 75
    :catch_18c
    move-exception v0

    .line 76
    .local v0, "ex":Ljava/lang/Exception;
    iput-boolean v11, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->mRM:Z

    .line 78
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_18f
    return-void
.end method
