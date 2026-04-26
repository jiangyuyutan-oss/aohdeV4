.class public Lage/of/civilizations2/jakowski/lukasz/MapBG;
.super Ljava/lang/Object;
.source "MapBG.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/MapBG$WMP;,
        Lage/of/civilizations2/jakowski/lukasz/MapBG$WorldMap_Shaders;
    }
.end annotation


# instance fields
.field public final ALPHA_MINIMAPS:I

.field public final EXTRA_XY:F

.field public fMinimapScaled_Scale:F

.field public gMD:Z

.field public iBSX:I

.field public iBSY:I

.field public iGMIS:I

.field private iHOSBG:I

.field private iHOSBGM:I

.field private iHeight:I

.field public iMapScaleBG:I

.field private iMaxDistance:I

.field private iMinimapHeight:I

.field public iMinimapScaled_Height:I

.field public iMinimapScaled_PosX:I

.field public iMinimapScaled_PosY:I

.field public iMinimapScaled_Width:I

.field private iMinimapWidth:I

.field private iWOSBG:I

.field private iWOSBGM:I

.field private iWidth:I

.field private lGMI:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Image;",
            ">;"
        }
    .end annotation
.end field

.field private minimapCivs:Lage/of/civilizations2/jakowski/lukasz/Image;

.field public minimapIsBelowZero:Z

.field private minimapOverlay:Lage/of/civilizations2/jakowski/lukasz/Image;

.field private oWMP:Lage/of/civilizations2/jakowski/lukasz/MapBG$WMP;

.field public requestToDisposeMinimap:Z

.field private worldMap_Shaders:Lage/of/civilizations2/jakowski/lukasz/MapBG$WorldMap_Shaders;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iGMIS:I

    .line 39
    const/4 v1, 0x1

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->gMD:Z

    .line 41
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iWidth:I

    .line 42
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iHeight:I

    .line 45
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iMaxDistance:I

    .line 48
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iBSX:I

    .line 50
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iBSY:I

    .line 53
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iWOSBG:I

    .line 55
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iHOSBG:I

    .line 58
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iWOSBGM:I

    .line 60
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iHOSBGM:I

    .line 62
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iMapScaleBG:I

    .line 67
    const/4 v2, 0x0

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->minimapOverlay:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 69
    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->minimapCivs:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 71
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->requestToDisposeMinimap:Z

    .line 78
    const/16 v3, 0xdc

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->ALPHA_MINIMAPS:I

    .line 79
    const/high16 v3, 0x3e000000  # 0.125f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->EXTRA_XY:F

    .line 82
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iMinimapScaled_PosX:I

    .line 83
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iMinimapScaled_PosY:I

    .line 84
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iMinimapScaled_Width:I

    .line 85
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iMinimapScaled_Height:I

    .line 87
    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->fMinimapScaled_Scale:F

    .line 89
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->minimapIsBelowZero:Z

    .line 101
    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->oWMP:Lage/of/civilizations2/jakowski/lukasz/MapBG$WMP;

    return-void
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/MapBG;)Ljava/util/List;
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/MapBG;

    .line 31
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lage/of/civilizations2/jakowski/lukasz/MapBG;)I
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/MapBG;

    .line 31
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iHOSBGM:I

    return v0
.end method

.method static synthetic access$200(Lage/of/civilizations2/jakowski/lukasz/MapBG;)I
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/MapBG;

    .line 31
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iWOSBGM:I

    return v0
.end method

.method static synthetic access$300(Lage/of/civilizations2/jakowski/lukasz/MapBG;)Lage/of/civilizations2/jakowski/lukasz/MapBG$WMP;
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/MapBG;

    .line 31
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->oWMP:Lage/of/civilizations2/jakowski/lukasz/MapBG$WMP;

    return-object v0
.end method


# virtual methods
.method public final addGameMap(Lage/of/civilizations2/jakowski/lukasz/Image;)V
    .registers 3
    .param p1, "nGameMap"  # Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 1231
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1232
    return-void
.end method

.method public final disposeGameMap()V
    .registers 3

    .line 1235
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 1236
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 1235
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1239
    .end local v0  # "i":I
    :cond_1b
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1241
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iHeight:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iWidth:I

    .line 1242
    return-void
.end method

.method public final disposeMinimapOfCivilizations()V
    .registers 2

    .line 1081
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->minimapCivs:Lage/of/civilizations2/jakowski/lukasz/Image;

    if-eqz v0, :cond_7

    .line 1082
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->requestToDisposeMinimap:Z
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1086
    :cond_7
    goto :goto_9

    .line 1084
    :catch_8
    move-exception v0

    .line 1087
    :goto_9
    return-void
.end method

.method public final disposeMinimapOfCivilizations_Real()V
    .registers 2

    .line 1091
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->minimapCivs:Lage/of/civilizations2/jakowski/lukasz/Image;

    if-eqz v0, :cond_13

    .line 1092
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->minimapCivs:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 1093
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->minimapCivs:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 1095
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->requestToDisposeMinimap:Z
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_13} :catch_14

    .line 1099
    :cond_13
    goto :goto_15

    .line 1097
    :catch_14
    move-exception v0

    .line 1100
    :goto_15
    return-void
.end method

.method public final drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 5
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I

    .line 319
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->worldMap_Shaders:Lage/of/civilizations2/jakowski/lukasz/MapBG$WorldMap_Shaders;

    invoke-interface {v0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/MapBG$WorldMap_Shaders;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 321
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->updateColorDashed()V

    .line 322
    return-void
.end method

.method public final drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .registers 16
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "scale"  # F

    .line 332
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_93

    .line 333
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v0

    int-to-float v0, v0

    mul-float p4, p4, v0

    .line 335
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    add-int/lit8 v1, p2, -0x1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p4

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p4

    float-to-int v2, v2

    add-int/2addr v2, p3

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {v0, p1, v1, v2, p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 336
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p4

    float-to-int v1, v1

    add-int/2addr v1, p3

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, p1, p2, v1, p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    goto/16 :goto_139

    .line 339
    :cond_93
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapExtraScale()F

    move-result v0

    mul-float p4, p4, v0

    .line 341
    const/4 v0, 0x0

    .line 343
    .local v0, "tempWidth":I
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iBSY:I

    sub-int/2addr v1, v2

    .local v1, "j":I
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iGMIS:I

    sub-int/2addr v3, v2

    .local v3, "currID":I
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale(I)I

    move-result v5

    div-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v4, v4, p4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iHOSBGM:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale(I)I

    move-result v6

    div-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v5, v5, p4

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .local v4, "tempHeight":I
    :goto_c8
    if-ltz v1, :cond_139

    .line 344
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale(I)I

    move-result v6

    div-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v5, v5, p4

    float-to-int v0, v5

    .line 346
    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iBSX:I

    sub-int/2addr v5, v2

    .local v5, "i":I
    :goto_e2
    if-ltz v5, :cond_121

    .line 347
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Image;

    add-int v7, p2, v0

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iWOSBGM:I

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale(I)I

    move-result v9

    div-int/2addr v8, v9

    int-to-float v8, v8

    mul-float v8, v8, p4

    float-to-int v8, v8

    sub-int/2addr v7, v8

    add-int v8, p3, v4

    invoke-virtual {v6, p1, v7, v8, p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 349
    int-to-float v6, v0

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iWOSBGM:I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale(I)I

    move-result v8

    div-int/2addr v7, v8

    int-to-float v7, v7

    mul-float v7, v7, p4

    sub-float/2addr v6, v7

    float-to-int v0, v6

    .line 350
    add-int/lit8 v3, v3, -0x1

    .line 346
    add-int/lit8 v5, v5, -0x1

    goto :goto_e2

    .line 353
    .end local v5  # "i":I
    :cond_121
    int-to-float v5, v4

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iHOSBGM:I

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale(I)I

    move-result v7

    div-int/2addr v6, v7

    int-to-float v6, v6

    mul-float v6, v6, p4

    sub-float/2addr v5, v6

    float-to-int v4, v5

    .line 343
    add-int/lit8 v1, v1, -0x1

    goto :goto_c8

    .line 356
    .end local v0  # "tempWidth":I
    .end local v1  # "j":I
    .end local v3  # "currID":I
    .end local v4  # "tempHeight":I
    :cond_139
    :goto_139
    return-void
.end method

.method public final drawMapBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 5
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I

    .line 325
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->oWMP:Lage/of/civilizations2/jakowski/lukasz/MapBG$WMP;

    invoke-interface {v0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/MapBG$WMP;->dMPB(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 326
    return-void
.end method

.method public final drawMap_LogoSquare(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .registers 20
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I

    .line 1106
    move-object v1, p0

    move/from16 v2, p2

    move/from16 v9, p5

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    int-to-float v3, v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sub-int v4, v4, p3

    int-to-float v4, v4

    move/from16 v10, p4

    int-to-float v5, v10

    neg-int v6, v9

    int-to-float v6, v6

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    move-object v11, v0

    .line 1107
    .local v11, "clipBounds":Lcom/badlogic/gdx/math/Rectangle;
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 1108
    invoke-static {v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    .line 1110
    int-to-float v0, v9

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iHeight:I

    int-to-float v3, v3

    div-float v12, v0, v3

    .line 1112
    .local v12, "tempPerc":F
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iWidth:I

    int-to-float v4, v4

    const/high16 v13, 0x40000000  # 2.0f

    div-float/2addr v4, v13

    mul-float v4, v4, v12

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    sub-int v5, v2, v4

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int v6, p3, v3

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v13

    mul-float v3, v3, v12

    float-to-int v7, v3

    move-object v3, v0

    move-object v4, p1

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1113
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v13

    mul-float v4, v4, v12

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    add-int v5, v2, v4

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int v6, p3, v3

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v13

    mul-float v3, v3, v12

    float-to-int v7, v3

    move-object v3, v0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1117
    :try_start_82
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 1118
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_88
    .catch Ljava/lang/IllegalStateException; {:try_start_82 .. :try_end_88} :catch_89

    .line 1121
    goto :goto_8a

    .line 1119
    :catch_89
    move-exception v0

    .line 1122
    :goto_8a
    return-void
.end method

.method public final drawMinimapTexture(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 11
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I

    .line 360
    :try_start_0
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 361
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->minimapCivs:Lage/of/civilizations2/jakowski/lukasz/Image;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_f} :catch_10

    .line 370
    goto :goto_15

    .line 362
    :catch_10
    move-exception v0

    .line 369
    .local v0, "eNull":Ljava/lang/NullPointerException;
    const/4 v1, 0x1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    .line 371
    .end local v0  # "eNull":Ljava/lang/NullPointerException;
    :goto_15
    return-void
.end method

.method public final drawMinimapTexture_Generate(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 25
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 374
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/MapBG;->minimapCivs:Lage/of/civilizations2/jakowski/lukasz/Image;

    if-nez v0, :cond_768

    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_768

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getIn_InitMenu()Z

    move-result v0

    if-nez v0, :cond_768

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInLoadMap()Z

    move-result v0

    if-nez v0, :cond_768

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInLoadSave()Z

    move-result v0

    if-nez v0, :cond_768

    .line 377
    const/4 v9, 0x0

    :try_start_29
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 378
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_2f
    .catch Ljava/lang/IllegalStateException; {:try_start_29 .. :try_end_2f} :catch_33
    .catchall {:try_start_29 .. :try_end_2f} :catchall_30

    .line 381
    goto :goto_34

    .line 630
    :catchall_30
    move-exception v0

    goto/16 :goto_676

    .line 379
    :catch_33
    move-exception v0

    .line 382
    :goto_34
    :try_start_34
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 384
    iput-boolean v9, v1, Lage/of/civilizations2/jakowski/lukasz/MapBG;->minimapIsBelowZero:Z

    .line 387
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v0

    .line 388
    .local v0, "tMinX":I
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v2

    neg-int v2, v2

    .line 389
    .local v2, "tMaxX":I
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v3

    .line 390
    .local v3, "tMinY":I
    const/4 v4, 0x0

    .line 392
    .local v4, "tMaxY":I
    const/4 v5, 0x0

    .line 394
    .local v5, "numOfProvinces":I
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v11, 0x2

    if-ne v6, v11, :cond_156

    .line 395
    const/4 v6, 0x0

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    .end local v0  # "tMinX":I
    .local v2, "tMinX":I
    .local v3, "tMaxX":I
    .local v4, "tMinY":I
    .local v5, "tMaxY":I
    .local v6, "numOfProvinces":I
    .local v7, "i":I
    :goto_54
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v0
    :try_end_5a
    .catchall {:try_start_34 .. :try_end_5a} :catchall_30

    if-ge v7, v0, :cond_153

    .line 397
    :try_start_5c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v0

    if-nez v0, :cond_d8

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v0

    if-gez v0, :cond_d8

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProv(I)Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 398
    add-int/lit8 v6, v6, 0x1

    .line 400
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v0

    if-ge v0, v2, :cond_93

    .line 401
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v0

    move v2, v0

    .line 404
    :cond_93
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaX7()I

    move-result v0

    if-le v0, v3, :cond_aa

    .line 405
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaX7()I

    move-result v0

    move v3, v0

    .line 408
    :cond_aa
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v0

    if-ge v0, v4, :cond_c1

    .line 409
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v0

    move v4, v0

    .line 412
    :cond_c1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaY6()I

    move-result v0

    if-le v0, v5, :cond_d8

    .line 413
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaY6()I

    move-result v0
    :try_end_d7
    .catch Ljava/lang/NullPointerException; {:try_start_5c .. :try_end_d7} :catch_da
    .catchall {:try_start_5c .. :try_end_d7} :catchall_30

    move v5, v0

    .line 435
    :cond_d8
    goto/16 :goto_14f

    .line 417
    :catch_da
    move-exception v0

    .line 418
    .local v0, "ex":Ljava/lang/NullPointerException;
    :try_start_db
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v12

    if-nez v12, :cond_14f

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v12

    if-gez v12, :cond_14f

    .line 419
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v12

    if-ge v12, v2, :cond_10a

    .line 420
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v12

    move v2, v12

    .line 423
    :cond_10a
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaX7()I

    move-result v12

    if-le v12, v3, :cond_121

    .line 424
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaX7()I

    move-result v12

    move v3, v12

    .line 427
    :cond_121
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v12

    if-ge v12, v4, :cond_138

    .line 428
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v12

    move v4, v12

    .line 431
    :cond_138
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaY6()I

    move-result v12

    if-le v12, v5, :cond_14f

    .line 432
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaY6()I

    move-result v12

    move v5, v12

    .line 395
    .end local v0  # "ex":Ljava/lang/NullPointerException;
    :cond_14f
    :goto_14f
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_54

    :cond_153
    move v12, v6

    .end local v7  # "i":I
    goto/16 :goto_1de

    .line 439
    .end local v6  # "numOfProvinces":I
    .local v0, "tMinX":I
    .local v2, "tMaxX":I
    .local v3, "tMinY":I
    .local v4, "tMaxY":I
    .local v5, "numOfProvinces":I
    :cond_156
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_157
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v7

    if-ge v6, v7, :cond_1d9

    .line 440
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v7

    if-nez v7, :cond_1d5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v7

    if-gez v7, :cond_1d5

    .line 441
    add-int/lit8 v5, v5, 0x1

    .line 443
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v7

    if-ge v7, v0, :cond_190

    .line 444
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v7

    move v0, v7

    .line 447
    :cond_190
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaX7()I

    move-result v7

    if-le v7, v2, :cond_1a7

    .line 448
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaX7()I

    move-result v7

    move v2, v7

    .line 451
    :cond_1a7
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v7

    if-ge v7, v3, :cond_1be

    .line 452
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v7

    move v3, v7

    .line 455
    :cond_1be
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaY6()I

    move-result v7

    if-le v7, v4, :cond_1d5

    .line 456
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaY6()I

    move-result v7

    move v4, v7

    .line 439
    :cond_1d5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_157

    :cond_1d9
    move v12, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    .line 462
    .end local v0  # "tMinX":I
    .end local v6  # "i":I
    .local v2, "tMinX":I
    .local v3, "tMaxX":I
    .local v4, "tMinY":I
    .local v5, "tMaxY":I
    .local v12, "numOfProvinces":I
    :goto_1de
    if-nez v12, :cond_1ec

    .line 463
    const/4 v2, 0x0

    .line 464
    const/4 v4, 0x0

    .line 465
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v0

    move v3, v0

    .line 466
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v0

    move v5, v0

    .line 469
    :cond_1ec
    sub-int v0, v3, v2

    int-to-float v0, v0

    const/high16 v6, 0x3e000000  # 0.125f

    mul-float v0, v0, v6

    float-to-int v0, v0

    .line 471
    .local v0, "tempExtra":I
    sub-int v13, v2, v0

    .line 472
    .end local v2  # "tMinX":I
    .local v13, "tMinX":I
    add-int v14, v3, v0

    .line 474
    .end local v3  # "tMaxX":I
    .local v14, "tMaxX":I
    sub-int v2, v5, v4

    int-to-float v2, v2

    mul-float v2, v2, v6

    float-to-int v15, v2

    .line 476
    .end local v0  # "tempExtra":I
    .local v15, "tempExtra":I
    sub-int/2addr v4, v15

    .line 477
    add-int v7, v5, v15

    .line 479
    .end local v5  # "tMaxY":I
    .local v7, "tMaxY":I
    if-gez v4, :cond_207

    .line 480
    const/4 v4, 0x0

    move/from16 v16, v4

    goto :goto_209

    .line 479
    :cond_207
    move/from16 v16, v4

    .line 483
    .end local v4  # "tMinY":I
    .local v16, "tMinY":I
    :goto_209
    const/4 v0, 0x0

    .line 484
    .local v0, "tPosX":I
    const/4 v2, 0x0

    .line 485
    .local v2, "tPosY":I
    const/high16 v3, 0x3f800000  # 1.0f

    .line 501
    .local v3, "tScale":F
    move v0, v13

    .line 502
    move/from16 v2, v16

    .line 504
    sub-int v4, v14, v13

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-int v5, v7, v16

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    move v3, v4

    .line 506
    sub-int v4, v14, v13

    .line 507
    .local v4, "tWidth":I
    sub-int v5, v7, v16

    .line 510
    .local v5, "tHeight":I
    sub-int v6, v14, v13

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v6, v10

    sub-int v10, v7, v16

    int-to-float v10, v10

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v10, v9

    cmpl-float v6, v6, v10

    if-ltz v6, :cond_272

    .line 512
    sub-int v6, v14, v13

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v6, v9

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v9

    int-to-float v9, v9

    mul-float v6, v6, v9

    float-to-int v5, v6

    .line 516
    sub-int v6, v7, v16

    div-int/2addr v6, v11

    add-int v6, v16, v6

    div-int/lit8 v9, v5, 0x2

    sub-int v2, v6, v9

    .line 521
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v6

    int-to-float v6, v6

    sub-int v9, v14, v13

    int-to-float v9, v9

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v10

    int-to-float v10, v10

    mul-float v9, v9, v10

    div-float/2addr v6, v9

    .end local v3  # "tScale":F
    .local v6, "tScale":F
    goto :goto_2a1

    .line 524
    .end local v6  # "tScale":F
    .restart local v3  # "tScale":F
    :cond_272
    sub-int v6, v7, v16

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v6, v9

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v9

    int-to-float v9, v9

    mul-float v6, v6, v9

    float-to-int v4, v6

    .line 528
    sub-int v6, v14, v13

    div-int/2addr v6, v11

    add-int/2addr v6, v13

    div-int/lit8 v9, v4, 0x2

    sub-int v0, v6, v9

    .line 532
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v6

    int-to-float v6, v6

    sub-int v9, v7, v16

    int-to-float v9, v9

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v10

    int-to-float v10, v10

    mul-float v9, v9, v10

    div-float/2addr v6, v9

    .line 537
    .end local v3  # "tScale":F
    .restart local v6  # "tScale":F
    :goto_2a1
    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v2, v9

    .line 539
    int-to-float v3, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v3, v9

    const v9, 0x3f733333  # 0.95f

    cmpl-float v3, v3, v9

    if-gez v3, :cond_2d1

    int-to-float v3, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v3, v10

    cmpl-float v3, v3, v9

    if-gez v3, :cond_2d1

    if-ltz v16, :cond_2d1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v3

    if-lt v7, v3, :cond_2c9

    goto :goto_2d1

    :cond_2c9
    move v9, v0

    move v10, v2

    move/from16 v22, v6

    move v6, v4

    move/from16 v4, v22

    goto :goto_2e6

    .line 540
    :cond_2d1
    :goto_2d1
    const/4 v0, 0x0

    .line 541
    const/4 v2, 0x0

    .line 542
    const/high16 v6, 0x3f800000  # 1.0f

    .line 543
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v3

    move v4, v3

    .line 544
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v3

    move v5, v3

    move v9, v0

    move v10, v2

    move/from16 v22, v6

    move v6, v4

    move/from16 v4, v22

    .line 547
    .end local v0  # "tPosX":I
    .end local v2  # "tPosY":I
    .local v4, "tScale":F
    .local v6, "tWidth":I
    .local v9, "tPosX":I
    .local v10, "tPosY":I
    :goto_2e6
    iput v9, v1, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iMinimapScaled_PosX:I

    .line 548
    iput v10, v1, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iMinimapScaled_PosY:I

    .line 549
    iput v6, v1, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iMinimapScaled_Width:I

    .line 550
    iput v5, v1, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iMinimapScaled_Height:I

    .line 551
    iput v4, v1, Lage/of/civilizations2/jakowski/lukasz/MapBG;->fMinimapScaled_Scale:F

    .line 556
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v2, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMinimapWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v3, v11

    mul-float v2, v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    int-to-float v3, v3

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v11

    int-to-float v11, v11

    move/from16 v17, v4

    .end local v4  # "tScale":F
    .local v17, "tScale":F
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMinimapHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v11, v4

    mul-float v3, v3, v11

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    .line 557
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    .line 558
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->cameraOrt:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v2, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMinimapWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float v2, v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMinimapHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v4, v11

    mul-float v3, v3, v4

    neg-float v3, v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    .line 559
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->cameraOrt:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 560
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 563
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMinimapWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMinimapHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    const/4 v11, 0x0

    invoke-direct {v0, v11, v2, v3, v4}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    move-object v11, v0

    .line 564
    .local v11, "clipBounds":Lcom/badlogic/gdx/math/Rectangle;
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 565
    invoke-static {v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    .line 567
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 568
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMinimapWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMinimapHeight()I

    move-result v18

    const/4 v4, 0x0

    const/16 v19, 0x0

    move-object/from16 v3, p1

    move-object/from16 v20, v11

    move/from16 v11, v17

    .end local v17  # "tScale":F
    .local v11, "tScale":F
    .local v20, "clipBounds":Lcom/badlogic/gdx/math/Rectangle;
    move/from16 v17, v5

    .end local v5  # "tHeight":I
    .local v17, "tHeight":I
    move/from16 v5, v19

    move/from16 v19, v6

    .end local v6  # "tWidth":I
    .local v19, "tWidth":I
    move v6, v0

    move/from16 v21, v7

    .end local v7  # "tMaxY":I
    .local v21, "tMaxY":I
    move/from16 v7, v18

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 569
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 571
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 572
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3e6

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3e6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvCommands:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Commands;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Commands;->MINIMAP_FORCE_USE_DEFAULT:Z

    if-eqz v0, :cond_3cb

    goto :goto_3e6

    .line 576
    :cond_3cb
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v0

    int-to-float v2, v9

    mul-float v2, v2, v11

    float-to-int v2, v2

    neg-int v2, v2

    int-to-float v3, v10

    mul-float v3, v3, v11

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapScale_PreExtra()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v11

    invoke-virtual {v0, v8, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    goto :goto_3f9

    .line 573
    :cond_3e6
    :goto_3e6
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v0

    int-to-float v2, v9

    mul-float v2, v2, v11

    float-to-int v2, v2

    neg-int v2, v2

    int-to-float v3, v10

    mul-float v3, v3, v11

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual {v0, v8, v2, v3, v11}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 579
    :goto_3f9
    move/from16 v18, v11

    .line 582
    .local v18, "nScale":F
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_416

    .line 583
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    int-to-float v0, v9

    mul-float v0, v0, v18

    float-to-int v0, v0

    neg-int v4, v0

    int-to-float v0, v10

    mul-float v0, v0, v18

    float-to-int v0, v0

    neg-int v5, v0

    const/16 v7, 0xdc

    move-object/from16 v3, p1

    move/from16 v6, v18

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawProvinces_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_42b

    .line 585
    :cond_416
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    int-to-float v0, v9

    mul-float v0, v0, v18

    float-to-int v0, v0

    neg-int v4, v0

    int-to-float v0, v10

    mul-float v0, v0, v18

    float-to-int v0, v0

    neg-int v5, v0

    const/16 v7, 0xdc

    move-object/from16 v3, p1

    move/from16 v6, v18

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    .line 588
    :goto_42b
    int-to-float v0, v9

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v11

    add-float/2addr v0, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4d8

    .line 589
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_478

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_478

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvCommands:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Commands;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Commands;->MINIMAP_FORCE_USE_DEFAULT:Z

    if-eqz v0, :cond_454

    goto :goto_478

    .line 593
    :cond_454
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v0

    int-to-float v2, v9

    mul-float v2, v2, v11

    float-to-int v2, v2

    neg-int v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v11

    float-to-int v3, v3

    add-int/2addr v2, v3

    int-to-float v3, v10

    mul-float v3, v3, v11

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapScale_PreExtra()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v11

    invoke-virtual {v0, v8, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    goto :goto_494

    .line 590
    :cond_478
    :goto_478
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v0

    int-to-float v2, v9

    mul-float v2, v2, v11

    float-to-int v2, v2

    neg-int v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v11

    float-to-int v3, v3

    add-int/2addr v2, v3

    int-to-float v3, v10

    mul-float v3, v3, v11

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual {v0, v8, v2, v3, v11}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 596
    :goto_494
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4b9

    .line 597
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    int-to-float v0, v9

    mul-float v0, v0, v18

    float-to-int v0, v0

    neg-int v0, v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v18

    float-to-int v3, v3

    add-int v4, v0, v3

    int-to-float v0, v10

    mul-float v0, v0, v18

    float-to-int v0, v0

    neg-int v5, v0

    const/16 v7, 0xdc

    move-object/from16 v3, p1

    move/from16 v6, v18

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawProvinces_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_4d8

    .line 599
    :cond_4b9
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    int-to-float v0, v9

    mul-float v0, v0, v18

    float-to-int v0, v0

    neg-int v0, v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v18

    float-to-int v3, v3

    add-int v4, v0, v3

    int-to-float v0, v10

    mul-float v0, v0, v18

    float-to-int v0, v0

    neg-int v5, v0

    const/16 v7, 0xdc

    move-object/from16 v3, p1

    move/from16 v6, v18

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    .line 603
    :cond_4d8
    :goto_4d8
    if-gez v9, :cond_578

    .line 604
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_515

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_515

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvCommands:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Commands;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Commands;->MINIMAP_FORCE_USE_DEFAULT:Z

    if-eqz v0, :cond_4f1

    goto :goto_515

    .line 608
    :cond_4f1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v0

    int-to-float v2, v9

    mul-float v2, v2, v11

    float-to-int v2, v2

    neg-int v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v11

    float-to-int v3, v3

    sub-int/2addr v2, v3

    int-to-float v3, v10

    mul-float v3, v3, v11

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapScale_PreExtra()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v11

    invoke-virtual {v0, v8, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    goto :goto_531

    .line 605
    :cond_515
    :goto_515
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v0

    int-to-float v2, v9

    mul-float v2, v2, v11

    float-to-int v2, v2

    neg-int v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v11

    float-to-int v3, v3

    sub-int/2addr v2, v3

    int-to-float v3, v10

    mul-float v3, v3, v11

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual {v0, v8, v2, v3, v11}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 611
    :goto_531
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_556

    .line 612
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    int-to-float v0, v9

    mul-float v0, v0, v18

    float-to-int v0, v0

    neg-int v0, v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v18

    float-to-int v3, v3

    sub-int v4, v0, v3

    int-to-float v0, v10

    mul-float v0, v0, v18

    float-to-int v0, v0

    neg-int v5, v0

    const/16 v7, 0xdc

    move-object/from16 v3, p1

    move/from16 v6, v18

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawProvinces_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_575

    .line 614
    :cond_556
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    int-to-float v0, v9

    mul-float v0, v0, v18

    float-to-int v0, v0

    neg-int v0, v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v18

    float-to-int v3, v3

    sub-int v4, v0, v3

    int-to-float v0, v10

    mul-float v0, v0, v18

    float-to-int v0, v0

    neg-int v5, v0

    const/16 v7, 0xdc

    move-object/from16 v3, p1

    move/from16 v6, v18

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    .line 617
    :goto_575
    const/4 v2, 0x1

    iput-boolean v2, v1, Lage/of/civilizations2/jakowski/lukasz/MapBG;->minimapIsBelowZero:Z
    :try_end_578
    .catchall {:try_start_db .. :try_end_578} :catchall_30

    .line 622
    :cond_578
    :try_start_578
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 623
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_57e
    .catch Ljava/lang/IllegalStateException; {:try_start_578 .. :try_end_57e} :catch_57f
    .catchall {:try_start_578 .. :try_end_57e} :catchall_30

    .line 626
    goto :goto_580

    .line 624
    :catch_57f
    move-exception v0

    .line 628
    :goto_580
    :try_start_580
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_583
    .catchall {:try_start_580 .. :try_end_583} :catchall_30

    .line 630
    .end local v9  # "tPosX":I
    .end local v10  # "tPosY":I
    .end local v11  # "tScale":F
    .end local v12  # "numOfProvinces":I
    .end local v13  # "tMinX":I
    .end local v14  # "tMaxX":I
    .end local v15  # "tempExtra":I
    .end local v16  # "tMinY":I
    .end local v17  # "tHeight":I
    .end local v18  # "nScale":F
    .end local v19  # "tWidth":I
    .end local v20  # "clipBounds":Lcom/badlogic/gdx/math/Rectangle;
    .end local v21  # "tMaxY":I
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v2, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    div-float/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v4

    div-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    .line 631
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    .line 632
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->cameraOrt:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v2, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    div-float/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    neg-int v3, v3

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v4

    div-float/2addr v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    .line 633
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->cameraOrt:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 640
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 643
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMinimapHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMinimapWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMinimapHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6, v3, v4, v5}, Lcom/badlogic/gdx/utils/ScreenUtils;->getFrameBufferPixmap(IIII)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/MapBG;->minimapCivs:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 646
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 647
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMinimapWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMinimapHeight()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 648
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 650
    const/4 v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    .line 654
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 662
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v2, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    div-float/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v4

    div-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    .line 663
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    .line 664
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->cameraOrt:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v2, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    div-float/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    neg-int v3, v3

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v4

    div-float/2addr v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    .line 665
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->cameraOrt:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 666
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 667
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderDef:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 668
    goto/16 :goto_768

    .line 630
    :goto_676
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v4

    div-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v5

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    .line 631
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    .line 632
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->cameraOrt:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v4

    div-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    neg-int v4, v4

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v5

    div-float/2addr v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v3, v4}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    .line 633
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->cameraOrt:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 640
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 643
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMinimapHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMinimapWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMinimapHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v7, v4, v5, v6}, Lcom/badlogic/gdx/utils/ScreenUtils;->getFrameBufferPixmap(IIII)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/MapBG;->minimapCivs:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 646
    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 647
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMinimapWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMinimapHeight()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 648
    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 650
    const/4 v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    .line 654
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 662
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v4

    div-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v5

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    .line 663
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    .line 664
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->cameraOrt:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v4

    div-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    neg-int v4, v4

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v5

    div-float/2addr v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v3, v4}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    .line 665
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->cameraOrt:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 666
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 667
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderDef:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 668
    throw v0

    .line 670
    :cond_768
    :goto_768
    return-void
.end method

.method public final getHeightM()I
    .registers 4

    .line 1256
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iHeight:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale(I)I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method

.method public final getHeightReal()I
    .registers 2

    .line 1260
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iHeight:I

    return v0
.end method

.method public final getMapExtraScale()F
    .registers 3

    .line 1284
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapExtraScale(I)F

    move-result v0

    return v0
.end method

.method public final getMapSc3()I
    .registers 3

    .line 1276
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale(I)I

    move-result v0

    return v0
.end method

.method public final getMapScale_PreExtra()I
    .registers 3

    .line 1280
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale_PreExtra(I)I

    move-result v0

    return v0
.end method

.method public final getMaxDistance()I
    .registers 2

    .line 1304
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iMaxDistance:I

    return v0
.end method

.method public final getMinimapHeight()I
    .registers 3

    .line 14
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iMinimapHeight:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getMinimapOfCivilizationsHeight()I
    .registers 3

    .line 1297
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->minimapCivs:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1298
    :catch_7
    move-exception v0

    .line 1299
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v1, 0x1

    return v1
.end method

.method public final getMinimapOfCivilizationsWidth()I
    .registers 3

    .line 1289
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->minimapCivs:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1290
    :catch_7
    move-exception v0

    .line 1291
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v1, 0x1

    return v1
.end method

.method public final getMinimapOverlay()Lage/of/civilizations2/jakowski/lukasz/Image;
    .registers 2

    .line 1264
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->minimapOverlay:Lage/of/civilizations2/jakowski/lukasz/Image;

    return-object v0
.end method

.method public final getMinimapWidth()I
    .registers 3

    .line 10
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iMinimapWidth:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getScenarioMinimapPreviewTexture(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)Lage/of/civilizations2/jakowski/lukasz/Image;
    .registers 24
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 673
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PREVIEW_HEIGHT:I

    .line 674
    .local v9, "tempMinimapHeight":I
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v0

    int-to-float v0, v0

    int-to-float v2, v9

    const/high16 v3, 0x40000000  # 2.0f

    sub-float/2addr v2, v3

    div-float v10, v0, v2

    .line 675
    .local v10, "tempScaleY":F
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v10

    float-to-int v11, v0

    .line 678
    .local v11, "tempMinimapWidth":I
    :try_start_18
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 679
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_1e
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_1e} :catch_1f

    .line 682
    goto :goto_20

    .line 680
    :catch_1f
    move-exception v0

    .line 683
    :goto_20
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 687
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v0

    .line 688
    .local v0, "tMinX":I
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v2

    neg-int v2, v2

    .line 689
    .local v2, "tMaxX":I
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v3

    .line 690
    .local v3, "tMinY":I
    const/4 v4, 0x0

    .line 692
    .local v4, "tMaxY":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_32
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v6

    if-ge v5, v6, :cond_ad

    .line 693
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v6

    if-nez v6, :cond_aa

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v6

    if-gez v6, :cond_aa

    .line 694
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v6

    if-ge v6, v0, :cond_68

    .line 695
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v0

    .line 698
    :cond_68
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaX7()I

    move-result v6

    if-le v6, v2, :cond_7e

    .line 699
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaX7()I

    move-result v2

    .line 702
    :cond_7e
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v6

    if-ge v6, v3, :cond_94

    .line 703
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v3

    .line 706
    :cond_94
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaY6()I

    move-result v6

    if-le v6, v4, :cond_aa

    .line 707
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaY6()I

    move-result v4

    .line 692
    :cond_aa
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 712
    .end local v5  # "i":I
    :cond_ad
    sub-int v5, v2, v0

    int-to-float v5, v5

    const/high16 v6, 0x3e000000  # 0.125f

    mul-float v5, v5, v6

    float-to-int v5, v5

    .line 714
    .local v5, "tempExtra":I
    sub-int/2addr v0, v5

    .line 715
    add-int v12, v2, v5

    .line 717
    .end local v2  # "tMaxX":I
    .local v12, "tMaxX":I
    sub-int v2, v4, v3

    int-to-float v2, v2

    mul-float v2, v2, v6

    float-to-int v13, v2

    .line 719
    .end local v5  # "tempExtra":I
    .local v13, "tempExtra":I
    sub-int/2addr v3, v13

    .line 720
    add-int v14, v4, v13

    .line 722
    .end local v4  # "tMaxY":I
    .local v14, "tMaxY":I
    if-gez v3, :cond_c6

    .line 723
    const/4 v3, 0x0

    move v15, v3

    goto :goto_c7

    .line 722
    :cond_c6
    move v15, v3

    .line 726
    .end local v3  # "tMinY":I
    .local v15, "tMinY":I
    :goto_c7
    const/4 v2, 0x0

    .line 727
    .local v2, "tPosX":I
    const/4 v3, 0x0

    .line 728
    .local v3, "tPosY":I
    const/high16 v4, 0x3f800000  # 1.0f

    .line 744
    .local v4, "tScale":F
    move v2, v0

    .line 745
    move v3, v15

    .line 747
    sub-int v5, v12, v0

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-int v6, v14, v15

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 749
    sub-int v5, v12, v0

    .line 750
    .local v5, "tWidth":I
    sub-int v6, v14, v15

    .line 753
    .local v6, "tHeight":I
    sub-int v7, v12, v0

    int-to-float v7, v7

    move/from16 v16, v2

    .end local v2  # "tPosX":I
    .local v16, "tPosX":I
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v7, v2

    sub-int v2, v14, v15

    int-to-float v2, v2

    move/from16 v17, v3

    .end local v3  # "tPosY":I
    .local v17, "tPosY":I
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/4 v3, 0x2

    cmpl-float v2, v7, v2

    if-ltz v2, :cond_13c

    .line 755
    sub-int v2, v12, v0

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v2, v7

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v7

    int-to-float v7, v7

    mul-float v2, v2, v7

    float-to-int v6, v2

    .line 759
    sub-int v2, v14, v15

    div-int/2addr v2, v3

    add-int/2addr v2, v15

    div-int/lit8 v7, v6, 0x2

    sub-int/2addr v2, v7

    .line 764
    .end local v17  # "tPosY":I
    .local v2, "tPosY":I
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v7

    int-to-float v7, v7

    sub-int v3, v12, v0

    int-to-float v3, v3

    move/from16 v17, v2

    .end local v2  # "tPosY":I
    .restart local v17  # "tPosY":I
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v3, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v2

    int-to-float v2, v2

    mul-float v3, v3, v2

    div-float/2addr v7, v3

    move v4, v7

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v16, v0

    move v0, v5

    move v7, v6

    .end local v4  # "tScale":F
    .local v7, "tScale":F
    goto :goto_173

    .line 767
    .end local v7  # "tScale":F
    .restart local v4  # "tScale":F
    :cond_13c
    sub-int v2, v14, v15

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    float-to-int v5, v2

    .line 771
    sub-int v2, v12, v0

    const/4 v3, 0x2

    div-int/2addr v2, v3

    add-int/2addr v2, v0

    div-int/lit8 v3, v5, 0x2

    sub-int/2addr v2, v3

    .line 775
    .end local v16  # "tPosX":I
    .local v2, "tPosX":I
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v3

    int-to-float v3, v3

    sub-int v7, v14, v15

    int-to-float v7, v7

    move/from16 v16, v0

    .end local v0  # "tMinX":I
    .local v16, "tMinX":I
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v7, v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v0

    int-to-float v0, v0

    mul-float v7, v7, v0

    div-float v7, v3, v7

    move v0, v5

    move v4, v7

    move/from16 v3, v17

    move v7, v6

    .line 786
    .end local v5  # "tWidth":I
    .end local v6  # "tHeight":I
    .end local v17  # "tPosY":I
    .local v0, "tWidth":I
    .restart local v3  # "tPosY":I
    .local v7, "tHeight":I
    :goto_173
    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const v6, 0x3f733333  # 0.95f

    cmpl-float v5, v5, v6

    if-gez v5, :cond_19b

    int-to-float v5, v7

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const v6, 0x3f733333  # 0.95f

    cmpl-float v5, v5, v6

    if-gez v5, :cond_19b

    if-ltz v15, :cond_19b

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v5

    if-lt v14, v5, :cond_198

    goto :goto_19b

    :cond_198
    move v6, v2

    move v5, v3

    goto :goto_1a1

    .line 787
    :cond_19b
    :goto_19b
    const/4 v2, 0x0

    .line 788
    const/4 v3, 0x0

    .line 789
    const/high16 v4, 0x3f800000  # 1.0f

    move v6, v2

    move v5, v3

    .line 795
    .end local v2  # "tPosX":I
    .end local v3  # "tPosY":I
    .local v5, "tPosY":I
    .local v6, "tPosX":I
    :goto_1a1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v3, v3

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v17

    move/from16 v19, v0

    .end local v0  # "tWidth":I
    .local v19, "tWidth":I
    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v0

    int-to-float v0, v0

    move/from16 v17, v7

    .end local v7  # "tHeight":I
    .local v17, "tHeight":I
    int-to-float v7, v11

    div-float/2addr v0, v7

    mul-float v3, v3, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    int-to-float v0, v0

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v7

    int-to-float v7, v7

    move/from16 v20, v10

    .end local v10  # "tempScaleY":F
    .local v20, "tempScaleY":F
    int-to-float v10, v9

    div-float/2addr v7, v10

    mul-float v0, v0, v7

    invoke-virtual {v2, v3, v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    .line 796
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    .line 797
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->cameraOrt:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v2, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v3

    int-to-float v3, v3

    int-to-float v7, v11

    div-float/2addr v3, v7

    mul-float v2, v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    int-to-float v3, v3

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v7

    int-to-float v7, v7

    int-to-float v10, v9

    div-float/2addr v7, v10

    mul-float v3, v3, v7

    neg-float v3, v3

    const/4 v10, 0x1

    invoke-virtual {v0, v10, v2, v3}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    .line 798
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->cameraOrt:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 800
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 802
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 803
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_240

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v0

    if-eq v0, v10, :cond_240

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvCommands:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Commands;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Commands;->MINIMAP_FORCE_USE_DEFAULT:Z

    if-eqz v0, :cond_225

    goto :goto_240

    .line 807
    :cond_225
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v0

    int-to-float v2, v6

    mul-float v2, v2, v4

    float-to-int v2, v2

    neg-int v2, v2

    int-to-float v7, v5

    mul-float v7, v7, v4

    float-to-int v7, v7

    neg-int v7, v7

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapScale_PreExtra()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v4

    invoke-virtual {v0, v8, v2, v7, v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    goto :goto_253

    .line 804
    :cond_240
    :goto_240
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v0

    int-to-float v2, v6

    mul-float v2, v2, v4

    float-to-int v2, v2

    neg-int v2, v2

    int-to-float v3, v5

    mul-float v3, v3, v4

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual {v0, v8, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 811
    :goto_253
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    int-to-float v0, v6

    mul-float v0, v0, v4

    float-to-int v0, v0

    neg-int v0, v0

    int-to-float v3, v5

    mul-float v3, v3, v4

    float-to-int v3, v3

    neg-int v7, v3

    const/16 v21, 0xdc

    const/4 v10, 0x2

    move-object/from16 v3, p1

    move/from16 v18, v4

    .end local v4  # "tScale":F
    .local v18, "tScale":F
    move v4, v0

    move v0, v5

    .end local v5  # "tPosY":I
    .local v0, "tPosY":I
    move v5, v7

    move v7, v6

    .end local v6  # "tPosX":I
    .local v7, "tPosX":I
    move/from16 v6, v18

    move v10, v7

    .end local v7  # "tPosX":I
    .local v10, "tPosX":I
    move/from16 v7, v21

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    .line 813
    int-to-float v2, v10

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v3

    int-to-float v3, v3

    move/from16 v7, v18

    .end local v18  # "tScale":F
    .local v7, "tScale":F
    mul-float v3, v3, v7

    add-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_300

    .line 814
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2c1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2c1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvCommands:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Commands;

    iget-boolean v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Commands;->MINIMAP_FORCE_USE_DEFAULT:Z

    if-eqz v2, :cond_29d

    goto :goto_2c1

    .line 818
    :cond_29d
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v2

    int-to-float v3, v10

    mul-float v3, v3, v7

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v7

    float-to-int v4, v4

    add-int/2addr v3, v4

    int-to-float v4, v0

    mul-float v4, v4, v7

    float-to-int v4, v4

    neg-int v4, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapScale_PreExtra()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v7

    invoke-virtual {v2, v8, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    goto :goto_2dd

    .line 815
    :cond_2c1
    :goto_2c1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v2

    int-to-float v3, v10

    mul-float v3, v3, v7

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v7

    float-to-int v4, v4

    add-int/2addr v3, v4

    int-to-float v4, v0

    mul-float v4, v4, v7

    float-to-int v4, v4

    neg-int v4, v4

    invoke-virtual {v2, v8, v3, v4, v7}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 821
    :goto_2dd
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    int-to-float v3, v10

    mul-float v3, v3, v7

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v7

    float-to-int v4, v4

    add-int/2addr v4, v3

    int-to-float v3, v0

    mul-float v3, v3, v7

    float-to-int v3, v3

    neg-int v5, v3

    const/16 v18, 0xdc

    move-object/from16 v3, p1

    move v6, v7

    move/from16 v21, v12

    move v12, v7

    .end local v7  # "tScale":F
    .local v12, "tScale":F
    .local v21, "tMaxX":I
    move/from16 v7, v18

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_303

    .line 813
    .end local v21  # "tMaxX":I
    .restart local v7  # "tScale":F
    .local v12, "tMaxX":I
    :cond_300
    move/from16 v21, v12

    move v12, v7

    .line 824
    .end local v7  # "tScale":F
    .local v12, "tScale":F
    .restart local v21  # "tMaxX":I
    :goto_303
    if-gez v10, :cond_37a

    .line 825
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_340

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_340

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvCommands:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Commands;

    iget-boolean v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Commands;->MINIMAP_FORCE_USE_DEFAULT:Z

    if-eqz v2, :cond_31c

    goto :goto_340

    .line 829
    :cond_31c
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v2

    int-to-float v3, v10

    mul-float v3, v3, v12

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v12

    float-to-int v4, v4

    sub-int/2addr v3, v4

    int-to-float v4, v0

    mul-float v4, v4, v12

    float-to-int v4, v4

    neg-int v4, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapScale_PreExtra()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v12

    invoke-virtual {v2, v8, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    goto :goto_35c

    .line 826
    :cond_340
    :goto_340
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v2

    int-to-float v3, v10

    mul-float v3, v3, v12

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v12

    float-to-int v4, v4

    sub-int/2addr v3, v4

    int-to-float v4, v0

    mul-float v4, v4, v12

    float-to-int v4, v4

    neg-int v4, v4

    invoke-virtual {v2, v8, v3, v4, v12}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 832
    :goto_35c
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    int-to-float v3, v10

    mul-float v3, v3, v12

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v12

    float-to-int v4, v4

    sub-int v4, v3, v4

    int-to-float v3, v0

    mul-float v3, v3, v12

    float-to-int v3, v3

    neg-int v5, v3

    const/16 v7, 0xdc

    move-object/from16 v3, p1

    move v6, v12

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    .line 834
    :cond_37a
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 836
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->cameraOrt:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    neg-int v4, v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    .line 837
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    .line 838
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    .line 839
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->cameraOrt:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 841
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 843
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sub-int/2addr v4, v9

    invoke-static {v5, v4, v11, v9}, Lcom/badlogic/gdx/utils/ScreenUtils;->getFrameBufferPixmap(IIII)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    return-object v2
.end method

.method public final getWidthM()I
    .registers 4

    .line 1248
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iWidth:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale(I)I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method

.method public final getWidthReal()I
    .registers 2

    .line 1252
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iWidth:I

    return v0
.end method

.method public final loadGameMap()V
    .registers 15

    .line 1127
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 1128
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->disposeGameMap()V

    .line 1131
    :cond_b
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->MAX_BELOW_ZERO_POINT_X:I

    .line 1133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "bg.txt"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_15e

    .line 1134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 1135
    .local v1, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v3

    const-string v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1137
    .local v3, "split":[Ljava/lang/String;
    aget-object v6, v3, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iBSX:I

    .line 1138
    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iBSY:I

    .line 1140
    const/4 v6, 0x0

    .line 1142
    .local v6, "loadMapBG_FileID":I
    add-int/lit8 v7, v6, 0x1

    .local v6, "j":I
    .local v7, "loadMapBG_FileID":I
    :goto_75
    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iBSY:I

    if-ge v6, v8, :cond_c7

    .line 1143
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_7a
    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iBSX:I

    if-ge v8, v9, :cond_c4

    .line 1144
    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "background/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".png"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v11

    sget-object v12, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v13, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v10, v11, v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1143
    add-int/lit8 v8, v8, 0x1

    goto :goto_7a

    .line 1147
    .end local v8  # "i":I
    :cond_c4
    add-int/lit8 v6, v6, 0x1

    goto :goto_75

    .line 1150
    .end local v6  # "j":I
    :cond_c7
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->gMD:Z

    .line 1151
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iGMIS:I

    .line 1153
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iWidth:I

    .line 1154
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d4
    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iBSX:I

    if-ge v2, v6, :cond_ec

    .line 1155
    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iWidth:I

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v8

    add-int/2addr v6, v8

    iput v6, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iWidth:I

    .line 1154
    add-int/lit8 v2, v2, 0x1

    goto :goto_d4

    .line 1158
    .end local v2  # "i":I
    :cond_ec
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iHeight:I

    .line 1159
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_ef
    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iBSY:I

    if-ge v2, v6, :cond_10b

    .line 1160
    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iHeight:I

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iBSX:I

    mul-int v9, v9, v2

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v8

    add-int/2addr v6, v8

    iput v6, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iHeight:I

    .line 1159
    add-int/lit8 v2, v2, 0x1

    goto :goto_ef

    .line 1163
    .end local v2  # "i":I
    :cond_10b
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v2, v6

    sput v2, Lage/of/civilizations2/jakowski/lukasz/MapScale;->MINSCALE:F

    .line 1165
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iGMIS:I

    sub-int/2addr v6, v5

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iWOSBG:I

    .line 1166
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iGMIS:I

    sub-int/2addr v6, v5

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iHOSBG:I

    .line 1168
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iWOSBG:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale(I)I

    move-result v6

    mul-int v2, v2, v6

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iWOSBGM:I

    .line 1169
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iHOSBG:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale(I)I

    move-result v6

    mul-int v2, v2, v6

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iHOSBGM:I

    .line 1170
    .end local v1  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3  # "split":[Ljava/lang/String;
    .end local v7  # "loadMapBG_FileID":I
    goto/16 :goto_1fb

    .line 1172
    :cond_15e
    iput-boolean v5, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->gMD:Z

    .line 1174
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "map/backgrounds/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBGName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "_L.png"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v7, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v1, v2, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->addGameMap(Lage/of/civilizations2/jakowski/lukasz/Image;)V

    .line 1175
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBGName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "_R.png"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v1, v2, v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->addGameMap(Lage/of/civilizations2/jakowski/lukasz/Image;)V

    .line 1177
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iWidth:I

    .line 1178
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iHeight:I

    .line 1180
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sput v1, Lage/of/civilizations2/jakowski/lukasz/MapScale;->MINSCALE:F

    .line 1183
    :goto_1fb
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthReal()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getIsMapWorldMap(I)Z

    move-result v2

    if-eqz v2, :cond_20e

    goto :goto_20f

    :cond_20e
    const/4 v4, 0x1

    :goto_20f
    div-int/2addr v1, v4

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L  # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightReal()I

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iMaxDistance:I

    .line 1185
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapScale;->MINSCALE:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_246

    .line 1186
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sput v1, Lage/of/civilizations2/jakowski/lukasz/MapScale;->MINSCALE:F

    .line 1189
    :cond_246
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale(I)I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iMapScaleBG:I

    .line 1191
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iMinimapScaled_PosX:I

    .line 1192
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iMinimapScaled_PosY:I

    .line 1193
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iMinimapScaled_Width:I

    .line 1194
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iMinimapScaled_Height:I

    .line 1196
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->fMinimapScaled_Scale:F

    .line 1198
    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->updateMinimapResolution(I)V

    .line 1200
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->updateWM()V

    .line 1201
    return-void
.end method

.method public final loadMinimap()V
    .registers 5

    .line 1204
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->minimapOverlay:Lage/of/civilizations2/jakowski/lukasz/Image;

    if-eqz v0, :cond_10

    .line 1205
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->minimapOverlay:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 1206
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->minimapOverlay:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 1209
    :cond_10
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UI/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getResPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "minimap_aoc2.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->minimapOverlay:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 1211
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->updateMinimapResolution(I)V

    .line 1212
    return-void
.end method

.method public final saveScenarioMinimapPreviewTexture(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 29
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 847
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PREVIEW_HEIGHT:I

    .line 848
    .local v9, "tempMinimapHeight":I
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v0

    int-to-float v0, v0

    int-to-float v2, v9

    const/high16 v3, 0x40000000  # 2.0f

    sub-float/2addr v2, v3

    div-float v10, v0, v2

    .line 849
    .local v10, "tempScaleY":F
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v10

    float-to-int v11, v0

    .line 852
    .local v11, "tempMinimapWidth":I
    :try_start_18
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 853
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_1e
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_1e} :catch_1f

    .line 856
    goto :goto_20

    .line 854
    :catch_1f
    move-exception v0

    .line 857
    :goto_20
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 860
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v0

    .line 861
    .local v0, "tMinX":I
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v2

    neg-int v2, v2

    .line 862
    .local v2, "tMaxX":I
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v3

    .line 863
    .local v3, "tMinY":I
    const/4 v4, 0x0

    .line 865
    .local v4, "tMaxY":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_32
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v6

    if-ge v5, v6, :cond_ad

    .line 866
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v6

    if-nez v6, :cond_aa

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v6

    if-gez v6, :cond_aa

    .line 867
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v6

    if-ge v6, v0, :cond_68

    .line 868
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v0

    .line 871
    :cond_68
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaX7()I

    move-result v6

    if-le v6, v2, :cond_7e

    .line 872
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaX7()I

    move-result v2

    .line 875
    :cond_7e
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v6

    if-ge v6, v3, :cond_94

    .line 876
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v3

    .line 879
    :cond_94
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaY6()I

    move-result v6

    if-le v6, v4, :cond_aa

    .line 880
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaY6()I

    move-result v4

    .line 865
    :cond_aa
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 885
    .end local v5  # "i":I
    :cond_ad
    sub-int v5, v2, v0

    int-to-float v5, v5

    const/high16 v6, 0x3e000000  # 0.125f

    mul-float v5, v5, v6

    float-to-int v5, v5

    .line 887
    .local v5, "tempExtra":I
    sub-int v12, v0, v5

    .line 888
    .end local v0  # "tMinX":I
    .local v12, "tMinX":I
    add-int v13, v2, v5

    .line 890
    .end local v2  # "tMaxX":I
    .local v13, "tMaxX":I
    sub-int v0, v4, v3

    int-to-float v0, v0

    mul-float v0, v0, v6

    float-to-int v14, v0

    .line 892
    .end local v5  # "tempExtra":I
    .local v14, "tempExtra":I
    sub-int/2addr v3, v14

    .line 893
    add-int v15, v4, v14

    .line 895
    .end local v4  # "tMaxY":I
    .local v15, "tMaxY":I
    if-gez v3, :cond_c8

    .line 896
    const/4 v3, 0x0

    move/from16 v16, v3

    goto :goto_ca

    .line 895
    :cond_c8
    move/from16 v16, v3

    .line 899
    .end local v3  # "tMinY":I
    .local v16, "tMinY":I
    :goto_ca
    const/4 v0, 0x0

    .line 900
    .local v0, "tPosX":I
    const/4 v2, 0x0

    .line 901
    .local v2, "tPosY":I
    const/high16 v3, 0x3f800000  # 1.0f

    .line 917
    .local v3, "tScale":F
    move v0, v12

    .line 918
    move/from16 v2, v16

    .line 920
    sub-int v4, v13, v12

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-int v5, v15, v16

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 922
    sub-int v4, v13, v12

    .line 923
    .local v4, "tWidth":I
    sub-int v5, v15, v16

    .line 926
    .local v5, "tHeight":I
    sub-int v6, v13, v12

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    sub-int v7, v15, v16

    int-to-float v7, v7

    move/from16 v17, v0

    .end local v0  # "tPosX":I
    .local v17, "tPosX":I
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v7, v0

    const/4 v0, 0x2

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_13a

    .line 928
    sub-int v6, v13, v12

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v7

    int-to-float v7, v7

    mul-float v6, v6, v7

    float-to-int v5, v6

    .line 932
    sub-int v6, v15, v16

    div-int/2addr v6, v0

    add-int v6, v16, v6

    div-int/lit8 v7, v5, 0x2

    sub-int v2, v6, v7

    .line 937
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v6

    int-to-float v6, v6

    sub-int v7, v13, v12

    int-to-float v7, v7

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v7, v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v0

    int-to-float v0, v0

    mul-float v7, v7, v0

    div-float/2addr v6, v7

    move v7, v4

    move v3, v6

    move/from16 v0, v17

    move v6, v5

    .end local v3  # "tScale":F
    .local v6, "tScale":F
    goto :goto_170

    .line 940
    .end local v6  # "tScale":F
    .restart local v3  # "tScale":F
    :cond_13a
    sub-int v0, v15, v16

    int-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v0, v6

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v6

    int-to-float v6, v6

    mul-float v0, v0, v6

    float-to-int v4, v0

    .line 944
    sub-int v0, v13, v12

    const/4 v6, 0x2

    div-int/2addr v0, v6

    add-int/2addr v0, v12

    div-int/lit8 v6, v4, 0x2

    sub-int/2addr v0, v6

    .line 948
    .end local v17  # "tPosX":I
    .restart local v0  # "tPosX":I
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v6

    int-to-float v6, v6

    sub-int v7, v15, v16

    int-to-float v7, v7

    move/from16 v17, v0

    .end local v0  # "tPosX":I
    .restart local v17  # "tPosX":I
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v7, v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v0

    int-to-float v0, v0

    mul-float v7, v7, v0

    div-float/2addr v6, v7

    move v7, v4

    move v3, v6

    move/from16 v0, v17

    move v6, v5

    .line 953
    .end local v4  # "tWidth":I
    .end local v5  # "tHeight":I
    .end local v17  # "tPosX":I
    .restart local v0  # "tPosX":I
    .local v6, "tHeight":I
    .local v7, "tWidth":I
    :goto_170
    int-to-float v4, v7

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const v5, 0x3f733333  # 0.95f

    cmpl-float v4, v4, v5

    if-gez v4, :cond_198

    int-to-float v4, v6

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const v5, 0x3f733333  # 0.95f

    cmpl-float v4, v4, v5

    if-gez v4, :cond_198

    if-ltz v16, :cond_198

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v4

    if-lt v15, v4, :cond_195

    goto :goto_198

    :cond_195
    move v5, v0

    move v4, v2

    goto :goto_19e

    .line 954
    :cond_198
    :goto_198
    const/4 v0, 0x0

    .line 955
    const/4 v2, 0x0

    .line 956
    const/high16 v3, 0x3f800000  # 1.0f

    move v5, v0

    move v4, v2

    .line 962
    .end local v0  # "tPosX":I
    .end local v2  # "tPosY":I
    .local v4, "tPosY":I
    .local v5, "tPosX":I
    :goto_19e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v2, v2

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v17

    move/from16 v19, v6

    .end local v6  # "tHeight":I
    .local v19, "tHeight":I
    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v6

    int-to-float v6, v6

    move/from16 v17, v7

    .end local v7  # "tWidth":I
    .local v17, "tWidth":I
    int-to-float v7, v11

    div-float/2addr v6, v7

    mul-float v2, v2, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    int-to-float v6, v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v7

    int-to-float v7, v7

    move/from16 v20, v10

    .end local v10  # "tempScaleY":F
    .local v20, "tempScaleY":F
    int-to-float v10, v9

    div-float/2addr v7, v10

    mul-float v6, v6, v7

    invoke-virtual {v0, v2, v6}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    .line 963
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    .line 964
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->cameraOrt:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v2, v2

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v11

    div-float/2addr v6, v7

    mul-float v2, v2, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    int-to-float v6, v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v7

    int-to-float v7, v7

    int-to-float v10, v9

    div-float/2addr v7, v10

    mul-float v6, v6, v7

    neg-float v6, v6

    const/4 v10, 0x1

    invoke-virtual {v0, v10, v2, v6}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    .line 965
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->cameraOrt:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 967
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 969
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 970
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_23d

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v0

    if-eq v0, v10, :cond_23d

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvCommands:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Commands;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Commands;->MINIMAP_FORCE_USE_DEFAULT:Z

    if-eqz v0, :cond_222

    goto :goto_23d

    .line 974
    :cond_222
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v0

    int-to-float v2, v5

    mul-float v2, v2, v3

    float-to-int v2, v2

    neg-int v2, v2

    int-to-float v6, v4

    mul-float v6, v6, v3

    float-to-int v6, v6

    neg-int v6, v6

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapScale_PreExtra()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v3

    invoke-virtual {v0, v8, v2, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    goto :goto_250

    .line 971
    :cond_23d
    :goto_23d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v0

    int-to-float v2, v5

    mul-float v2, v2, v3

    float-to-int v2, v2

    neg-int v2, v2

    int-to-float v6, v4

    mul-float v6, v6, v3

    float-to-int v6, v6

    neg-int v6, v6

    invoke-virtual {v0, v8, v2, v6, v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 977
    :goto_250
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    int-to-float v0, v5

    mul-float v0, v0, v3

    float-to-int v0, v0

    neg-int v0, v0

    int-to-float v6, v4

    mul-float v6, v6, v3

    float-to-int v6, v6

    neg-int v6, v6

    const/16 v7, 0xdc

    move/from16 v21, v3

    .end local v3  # "tScale":F
    .local v21, "tScale":F
    move-object/from16 v3, p1

    move/from16 v22, v4

    .end local v4  # "tPosY":I
    .local v22, "tPosY":I
    move v4, v0

    move v10, v5

    .end local v5  # "tPosX":I
    .local v10, "tPosX":I
    move v5, v6

    move/from16 v6, v21

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    .line 979
    int-to-float v0, v10

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v2

    int-to-float v2, v2

    move/from16 v7, v21

    .end local v21  # "tScale":F
    .local v7, "tScale":F
    mul-float v2, v2, v7

    add-float/2addr v0, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_303

    .line 980
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2bf

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2bf

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvCommands:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Commands;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Commands;->MINIMAP_FORCE_USE_DEFAULT:Z

    if-eqz v0, :cond_299

    move/from16 v6, v22

    goto :goto_2c1

    .line 984
    :cond_299
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v0

    int-to-float v2, v10

    mul-float v2, v2, v7

    float-to-int v2, v2

    neg-int v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v7

    float-to-int v3, v3

    add-int/2addr v2, v3

    move/from16 v6, v22

    .end local v22  # "tPosY":I
    .local v6, "tPosY":I
    int-to-float v3, v6

    mul-float v3, v3, v7

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapScale_PreExtra()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v7

    invoke-virtual {v0, v8, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    goto :goto_2dd

    .line 980
    .end local v6  # "tPosY":I
    .restart local v22  # "tPosY":I
    :cond_2bf
    move/from16 v6, v22

    .line 981
    .end local v22  # "tPosY":I
    .restart local v6  # "tPosY":I
    :goto_2c1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v0

    int-to-float v2, v10

    mul-float v2, v2, v7

    float-to-int v2, v2

    neg-int v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v7

    float-to-int v3, v3

    add-int/2addr v2, v3

    int-to-float v3, v6

    mul-float v3, v3, v7

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual {v0, v8, v2, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 987
    :goto_2dd
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    int-to-float v0, v10

    mul-float v0, v0, v7

    float-to-int v0, v0

    neg-int v0, v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v7

    float-to-int v3, v3

    add-int v4, v0, v3

    int-to-float v0, v6

    mul-float v0, v0, v7

    float-to-int v0, v0

    neg-int v5, v0

    const/16 v0, 0xdc

    move-object/from16 v3, p1

    move/from16 v21, v12

    move v12, v6

    .end local v6  # "tPosY":I
    .local v12, "tPosY":I
    .local v21, "tMinX":I
    move v6, v7

    move/from16 v22, v13

    move v13, v7

    .end local v7  # "tScale":F
    .local v13, "tScale":F
    .local v22, "tMaxX":I
    move v7, v0

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_30a

    .line 979
    .end local v21  # "tMinX":I
    .restart local v7  # "tScale":F
    .local v12, "tMinX":I
    .local v13, "tMaxX":I
    .local v22, "tPosY":I
    :cond_303
    move/from16 v21, v12

    move/from16 v12, v22

    move/from16 v22, v13

    move v13, v7

    .line 989
    .end local v7  # "tScale":F
    .local v12, "tPosY":I
    .local v13, "tScale":F
    .restart local v21  # "tMinX":I
    .local v22, "tMaxX":I
    :goto_30a
    if-gez v10, :cond_381

    .line 990
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/MapBG;->lGMI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_347

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_347

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvCommands:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Commands;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Commands;->MINIMAP_FORCE_USE_DEFAULT:Z

    if-eqz v0, :cond_323

    goto :goto_347

    .line 994
    :cond_323
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v0

    int-to-float v2, v10

    mul-float v2, v2, v13

    float-to-int v2, v2

    neg-int v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v13

    float-to-int v3, v3

    sub-int/2addr v2, v3

    int-to-float v3, v12

    mul-float v3, v3, v13

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapScale_PreExtra()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v13

    invoke-virtual {v0, v8, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    goto :goto_363

    .line 991
    :cond_347
    :goto_347
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v0

    int-to-float v2, v10

    mul-float v2, v2, v13

    float-to-int v2, v2

    neg-int v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v13

    float-to-int v3, v3

    sub-int/2addr v2, v3

    int-to-float v3, v12

    mul-float v3, v3, v13

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual {v0, v8, v2, v3, v13}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 997
    :goto_363
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    int-to-float v0, v10

    mul-float v0, v0, v13

    float-to-int v0, v0

    neg-int v0, v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v13

    float-to-int v3, v3

    sub-int v4, v0, v3

    int-to-float v0, v12

    mul-float v0, v0, v13

    float-to-int v0, v0

    neg-int v5, v0

    const/16 v7, 0xdc

    move-object/from16 v3, p1

    move v6, v13

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    .line 999
    :cond_381
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 1001
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->cameraOrt:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    neg-int v3, v3

    int-to-float v3, v3

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v2, v3}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    .line 1002
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    .line 1003
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    .line 1004
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->cameraOrt:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 1006
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 1009
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sub-int/2addr v3, v9

    invoke-static {v7, v3, v11, v9}, Lcom/badlogic/gdx/utils/ScreenUtils;->getFrameBufferPixmap(IIII)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    move-object/from16 v18, v0

    .line 1012
    .local v18, "tempMinimapPrerivew":Lage/of/civilizations2/jakowski/lukasz/Image;
    :try_start_3be
    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->prepare()V
    :try_end_3c9
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3be .. :try_end_3c9} :catch_3ca

    .line 1015
    goto :goto_3cb

    .line 1013
    :catch_3ca
    move-exception v0

    .line 1017
    :goto_3cb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "map/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "scenarios/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_GAME_DATA_TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "preview.png"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v2

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/TextureData;->consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/badlogic/gdx/graphics/PixmapIO;->writePNG(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 1020
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1021
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    const/4 v0, 0x0

    const/16 v23, 0x0

    move-object/from16 v24, v3

    move-object/from16 v3, p1

    move-object v1, v4

    move v4, v0

    move-object/from16 v25, v5

    move/from16 v5, v23

    move-object/from16 v26, v6

    move v6, v11

    move/from16 v23, v10

    const/4 v10, 0x0

    .end local v10  # "tPosX":I
    .local v23, "tPosX":I
    move v7, v9

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1022
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1024
    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 1025
    const/16 v18, 0x0

    .line 1032
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_488

    .line 1033
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v26

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v6, v25

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_GAME_DATA_TAG:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v7, v24

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    move-object v4, v0

    .local v0, "tempImage":Lage/of/civilizations2/jakowski/lukasz/Image;
    goto :goto_4c8

    .line 1035
    .end local v0  # "tempImage":Lage/of/civilizations2/jakowski/lukasz/Image;
    :cond_488
    move-object/from16 v7, v24

    move-object/from16 v6, v25

    move-object/from16 v5, v26

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_GAME_DATA_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    move-object v4, v0

    .line 1038
    .local v4, "tempImage":Lage/of/civilizations2/jakowski/lukasz/Image;
    :goto_4c8
    invoke-virtual {v4, v8, v10, v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 1042
    :try_start_4cb
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 1043
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_4d1
    .catch Ljava/lang/IllegalStateException; {:try_start_4cb .. :try_end_4d1} :catch_4d2

    .line 1046
    goto :goto_4d3

    .line 1044
    :catch_4d2
    move-exception v0

    .line 1047
    :goto_4d3
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 1048
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 1049
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1052
    :try_start_4de
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v24

    sub-int v3, v3, v24

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v10
    :try_end_4ee
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_4de .. :try_end_4ee} :catch_55a

    move/from16 v25, v12

    .end local v12  # "tPosY":I
    .local v25, "tPosY":I
    :try_start_4f0
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v12
    :try_end_4f4
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_4f0 .. :try_end_4f4} :catch_556

    move-object/from16 v26, v4

    const/4 v4, 0x0

    .end local v4  # "tempImage":Lage/of/civilizations2/jakowski/lukasz/Image;
    .local v26, "tempImage":Lage/of/civilizations2/jakowski/lukasz/Image;
    :try_start_4f7
    invoke-static {v4, v3, v10, v12}, Lcom/badlogic/gdx/utils/ScreenUtils;->getFrameBufferPixmap(IIII)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V
    :try_end_501
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_4f7 .. :try_end_501} :catch_554

    move-object v2, v0

    .line 1055
    .local v2, "tempFlagImage2":Lage/of/civilizations2/jakowski/lukasz/Image;
    :try_start_502
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->prepare()V
    :try_end_50d
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_502 .. :try_end_50d} :catch_50e

    .line 1058
    goto :goto_50f

    .line 1056
    :catch_50e
    move-exception v0

    .line 1060
    :goto_50f
    :try_start_50f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_GAME_DATA_TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v1

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/TextureData;->consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/PixmapIO;->writePNG(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 1061
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V
    :try_end_552
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_50f .. :try_end_552} :catch_554

    .line 1062
    nop

    .line 1065
    .end local v2  # "tempFlagImage2":Lage/of/civilizations2/jakowski/lukasz/Image;
    goto :goto_55f

    .line 1063
    :catch_554
    move-exception v0

    goto :goto_55f

    .end local v26  # "tempImage":Lage/of/civilizations2/jakowski/lukasz/Image;
    .restart local v4  # "tempImage":Lage/of/civilizations2/jakowski/lukasz/Image;
    :catch_556
    move-exception v0

    move-object/from16 v26, v4

    .end local v4  # "tempImage":Lage/of/civilizations2/jakowski/lukasz/Image;
    .restart local v26  # "tempImage":Lage/of/civilizations2/jakowski/lukasz/Image;
    goto :goto_55f

    .end local v25  # "tPosY":I
    .end local v26  # "tempImage":Lage/of/civilizations2/jakowski/lukasz/Image;
    .restart local v4  # "tempImage":Lage/of/civilizations2/jakowski/lukasz/Image;
    .restart local v12  # "tPosY":I
    :catch_55a
    move-exception v0

    move-object/from16 v26, v4

    move/from16 v25, v12

    .line 1069
    .end local v4  # "tempImage":Lage/of/civilizations2/jakowski/lukasz/Image;
    .end local v12  # "tPosY":I
    .restart local v25  # "tPosY":I
    .restart local v26  # "tempImage":Lage/of/civilizations2/jakowski/lukasz/Image;
    :goto_55f
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1070
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p1

    move-object/from16 v1, v26

    .end local v26  # "tempImage":Lage/of/civilizations2/jakowski/lukasz/Image;
    .local v1, "tempImage":Lage/of/civilizations2/jakowski/lukasz/Image;
    move v6, v11

    move v7, v9

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1071
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1073
    const/4 v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    .line 1075
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 1076
    const/4 v0, 0x0

    .line 1077
    .end local v1  # "tempImage":Lage/of/civilizations2/jakowski/lukasz/Image;
    .restart local v0  # "tempImage":Lage/of/civilizations2/jakowski/lukasz/Image;
    return-void
.end method

.method public final updateMinimapResolution(I)V
    .registers 4
    .param p1, "nScale"  # I

    .line 1215
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->updateMinimapScaleXY()V

    .line 1217
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Info/Menu_InGame_ProvInfo;->getUseSmallProvinceInfo()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1218
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    mul-int v0, v0, p1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iMinimapHeight:I

    goto :goto_28

    .line 1221
    :cond_1b
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    mul-int v0, v0, p1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iMinimapHeight:I

    .line 1223
    :goto_28
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getMinimapScaleY()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iMinimapWidth:I

    .line 1225
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->updateMinimapScaleXY()V

    .line 1226
    return-void
.end method

.method public final updateWM()V
    .registers 3

    .line 105
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->gMD:Z

    if-eqz v0, :cond_22

    .line 106
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getIsMapWorldMap(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 107
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapBG$1;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapBG;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->oWMP:Lage/of/civilizations2/jakowski/lukasz/MapBG$WMP;

    goto :goto_3f

    .line 135
    :cond_1a
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapBG$2;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapBG;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->oWMP:Lage/of/civilizations2/jakowski/lukasz/MapBG$WMP;

    goto :goto_3f

    .line 167
    :cond_22
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getIsMapWorldMap(I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 168
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapBG$3;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapBG;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->oWMP:Lage/of/civilizations2/jakowski/lukasz/MapBG$WMP;

    goto :goto_3f

    .line 232
    :cond_38
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapBG$4;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapBG;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->oWMP:Lage/of/civilizations2/jakowski/lukasz/MapBG$WMP;

    .line 282
    :goto_3f
    return-void
.end method

.method public final updateWorldMap_Shaders()V
    .registers 3

    .line 293
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInNextPlayerTurn()Z

    move-result v0

    if-nez v0, :cond_73

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInVictory()Z

    move-result v0

    if-nez v0, :cond_73

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Formable_Civ_Provinces()Z

    move-result v0

    if-nez v0, :cond_73

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_FormAnimation()Z

    move-result v0

    if-nez v0, :cond_73

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_CreateAVassal()Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->VIEW_SHOW_VALUES:Z

    if-eqz v0, :cond_73

    :cond_2c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 294
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView()Z

    move-result v0

    if-eqz v0, :cond_62

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getActiveTurnStateID()Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->LOAD_AI_RTO:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    if-eq v0, v1, :cond_73

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView_Options()Z

    move-result v0

    if-nez v0, :cond_73

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView_EndOfGame()Z

    move-result v0

    if-nez v0, :cond_73

    sget v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_IMPERIAL_MODE:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v1

    if-eq v0, v1, :cond_73

    sget v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_DISEASES_MODE:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v1

    if-eq v0, v1, :cond_73

    :cond_62
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 295
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInSelectLanguage()Z

    move-result v0

    if-eqz v0, :cond_6b

    goto :goto_73

    .line 307
    :cond_6b
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapBG$6;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapBG;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->worldMap_Shaders:Lage/of/civilizations2/jakowski/lukasz/MapBG$WorldMap_Shaders;

    goto :goto_7a

    .line 297
    :cond_73
    :goto_73
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapBG$5;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapBG$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapBG;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->worldMap_Shaders:Lage/of/civilizations2/jakowski/lukasz/MapBG$WorldMap_Shaders;

    .line 314
    :goto_7a
    return-void
.end method
