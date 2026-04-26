.class public Lage/of/civilizations2/jakowski/lukasz/MapScale;
.super Ljava/lang/Object;
.source "MapScale.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;
    }
.end annotation


# static fields
.field private static final MAXSCALE:F = 500.0f

.field public static MINSCALE:F = 0.0f

.field private static final REQUIRED_TIME_TO_RESET_SCALE:S = 0xafs

.field public static SCALE_ANIMATION_TIME:I

.field public static STANDARD_SCALE:F

.field protected static animation_TIME_TO_END:I

.field public static defScales:Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;


# instance fields
.field protected animation_StartingScale:F

.field protected animation_TIME_STARTED:J

.field private changeCurrentScaleByX:F

.field public definedScale:I

.field private definedScaleBeforeReset:I

.field public definedScalesLength:I

.field private fCurrScale:F

.field private fDifferenceScale:F

.field private fMinimapScaleX:F

.field private fMinimapScaleY:F

.field private fScaleAnimation_PercX:F

.field private fScaleAnimation_PercY:F

.field private fScaleBeforeReset:F

.field private fStartScaling_Scale:F

.field private iScaleAnimationTime:J

.field private iStartScaleMapPosX:I

.field private iStartScaleMapPosY:I

.field private iStartScalePosX:I

.field private iStartScalePosX2:I

.field private iStartScalePosY:I

.field private iStartScalePosY2:I

.field private newScale:F

.field private scaleByYAxis:Z

.field private scaleChangeByTouch:Z

.field private scaleMode:Z

.field private startScale:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    const v0, 0x3c23d70a  # 0.01f

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->MINSCALE:F

    .line 20
    const/high16 v0, 0x3f800000  # 1.0f

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->STANDARD_SCALE:F

    .line 98
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->defScales:Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;

    .line 399
    const/16 v0, 0x64

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->animation_TIME_TO_END:I

    .line 511
    const/16 v0, 0x7d

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->SCALE_ANIMATION_TIME:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fCurrScale:F

    .line 24
    const/high16 v1, -0x40800000  # -1.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->newScale:F

    .line 27
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->startScale:F

    .line 29
    const/4 v1, 0x1

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->scaleByYAxis:Z

    .line 36
    const/4 v2, -0x1

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iStartScaleMapPosX:I

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iStartScaleMapPosY:I

    .line 38
    const/4 v2, 0x0

    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->scaleMode:Z

    .line 49
    const/high16 v2, 0x3fc00000  # 1.5f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fScaleBeforeReset:F

    .line 53
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->scaleChangeByTouch:Z

    .line 57
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->definedScale:I

    .line 58
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->definedScaleBeforeReset:I

    .line 60
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->definedScalesLength:I

    .line 400
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->animation_TIME_STARTED:J

    .line 401
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->animation_StartingScale:F

    .line 512
    iput-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iScaleAnimationTime:J

    .line 513
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fStartScaling_Scale:F

    .line 516
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fScaleAnimation_PercX:F

    .line 517
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fScaleAnimation_PercY:F

    .line 147
    return-void
.end method

.method private getDefinedScale()F
    .registers 3

    .line 139
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->defScales:Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;->definedScales:[F

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->definedScale:I

    aget v0, v0, v1
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 140
    :catch_9
    move-exception v0

    .line 141
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    const/high16 v1, 0x3f800000  # 1.0f

    return v1
.end method

.method private final resetScaleAnimation()V
    .registers 4

    .line 578
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fDifferenceScale:F

    .line 579
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iScaleAnimationTime:J

    .line 581
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->changeCurrentScaleByX:F

    .line 582
    iput-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->animation_TIME_STARTED:J

    .line 583
    return-void
.end method

.method private final scaleTheMap(IIFF)V
    .registers 10
    .param p1, "nY"  # I
    .param p2, "nY2"  # I
    .param p3, "fCenterX"  # F
    .param p4, "fCenterY"  # F

    .line 250
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->startScale:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_23

    .line 251
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPX()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iStartScaleMapPosX:I

    .line 252
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iStartScaleMapPosY:I

    .line 253
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fCurrScale:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->startScale:F

    .line 256
    :cond_23
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iStartScalePosY:I

    const/high16 v1, 0x43160000  # 150.0f

    const/4 v2, 0x1

    if-eq v0, p1, :cond_52

    .line 257
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fCurrScale:F

    if-ge p1, p2, :cond_30

    sub-int/2addr v0, p1

    goto :goto_32

    :cond_30
    sub-int v0, p1, v0

    :goto_32
    int-to-float v0, v0

    div-float/2addr v0, v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    div-float/2addr v0, v4

    add-float/2addr v3, v0

    invoke-virtual {p0, v3, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->setNewCurrentScaleByTouch(FFF)V

    .line 258
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iStartScalePosY:I

    .line 259
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getTouchMgr()Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->setUpdateStartMovePosX(Z)V

    .line 260
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getTouchMgr()Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->setUpdateStartMovePosY(Z)V

    .line 261
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->resetScaleAnimation()V

    .line 264
    :cond_52
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iStartScalePosY2:I

    if-eq v0, p2, :cond_7e

    .line 265
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fCurrScale:F

    if-le p1, p2, :cond_5c

    sub-int/2addr v0, p2

    goto :goto_5e

    :cond_5c
    sub-int v0, p2, v0

    :goto_5e
    int-to-float v0, v0

    div-float/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    div-float/2addr v0, v1

    add-float/2addr v3, v0

    invoke-virtual {p0, v3, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->setNewCurrentScaleByTouch(FFF)V

    .line 266
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iStartScalePosY2:I

    .line 267
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getTouchMgr()Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->setUpdateStartMovePosX(Z)V

    .line 268
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getTouchMgr()Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->setUpdateStartMovePosY(Z)V

    .line 269
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->resetScaleAnimation()V

    .line 271
    :cond_7e
    return-void
.end method

.method private final updateScale()V
    .registers 8

    .line 531
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fCurrScale:F

    .line 533
    .local v0, "oldCurrentScale":F
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->animation_StartingScale:F

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->changeCurrentScaleByX:F

    sget-wide v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    iget-wide v5, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->animation_TIME_STARTED:J

    sub-long/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/MapScale;->animation_TIME_TO_END:I

    int-to-long v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-float v3, v3

    mul-float v2, v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/MapScale;->animation_TIME_TO_END:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->setCurrScale(F)V

    .line 535
    sget-wide v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    iget-wide v3, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->animation_TIME_STARTED:J

    sub-long/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/MapScale;->animation_TIME_TO_END:I

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_4b

    .line 536
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fScaleBeforeReset:F

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapScale;->STANDARD_SCALE:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_35

    iget-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->scaleChangeByTouch:Z

    if-nez v1, :cond_45

    :cond_35
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fCurrScale:F

    const v3, 0x3f7e147b  # 0.9925f

    cmpl-float v3, v1, v3

    if-lez v3, :cond_48

    const v3, 0x3f80f5c3  # 1.0075f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_48

    .line 537
    :cond_45
    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->setCurrScale(F)V

    .line 540
    :cond_48
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->resetScaleAnimation()V

    .line 543
    :cond_4b
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPX()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fCurrScale:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fScaleAnimation_PercX:F

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->setNewPosX(I)V

    .line 544
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    int-to-float v4, v4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fCurrScale:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fScaleAnimation_PercY:F

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->setNewPosY(I)V

    .line 545
    return-void
.end method


# virtual methods
.method public final getCurrSc()F
    .registers 2

    .line 603
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fCurrScale:F

    return v0
.end method

.method public final getMinimapScaleX()F
    .registers 2

    .line 607
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fMinimapScaleX:F

    return v0
.end method

.method public final getMinimapScaleY()F
    .registers 2

    .line 624
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fMinimapScaleY:F

    return v0
.end method

.method public final getMinimapScaled_ScaleX()F
    .registers 4

    .line 611
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v0

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iMinimapScaled_Width:I

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMinimapWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000  # 2.0f

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public final getMinimapScaled_ScaleY()F
    .registers 4

    .line 615
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v0

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iMinimapScaled_Height:I

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMinimapHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000  # 2.0f

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public final getScaleMode()Z
    .registers 2

    .line 628
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->scaleMode:Z

    return v0
.end method

.method public final getStartScalePosY()I
    .registers 2

    .line 636
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iStartScalePosY:I

    return v0
.end method

.method public final initDefinedScales()V
    .registers 7

    .line 102
    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 103
    .local v0, "json":Lcom/badlogic/gdx/utils/Json;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DefinedScales.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 104
    .local v1, "file":Lcom/badlogic/gdx/files/FileHandle;
    const-class v2, Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;

    sput-object v2, Lage/of/civilizations2/jakowski/lukasz/MapScale;->defScales:Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;

    .line 106
    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;->definedScale_Default:I

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->definedScale:I

    .line 107
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/MapScale;->defScales:Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;->definedScale_Default:I

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->definedScaleBeforeReset:I

    .line 109
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/MapScale;->defScales:Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;->definedScale_Default:I

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->definedScalesLength:I

    .line 111
    const/4 v2, 0x0

    .local v2, "i":I
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/MapScale;->defScales:Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;->definedScales:[F

    array-length v3, v3

    .local v3, "iSize":I
    :goto_4e
    if-ge v2, v3, :cond_67

    .line 112
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/MapScale;->defScales:Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;->definedScales:[F

    aget v4, v4, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/MapScale;->MINSCALE:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_64

    .line 113
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/MapScale;->defScales:Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;->definedScales:[F

    sget v5, Lage/of/civilizations2/jakowski/lukasz/MapScale;->MINSCALE:F

    aput v5, v4, v2

    .line 111
    :cond_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 117
    .end local v2  # "i":I
    .end local v3  # "iSize":I
    :cond_67
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/MapScale;->defScales:Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;->definedScales:[F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/MapScale;->defScales:Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;->definedScales:[F

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/MapScale;->MINSCALE:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_89

    .line 118
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/MapScale;->defScales:Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;->definedScales:[F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/MapScale;->defScales:Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;->definedScales:[F

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/MapScale;->MINSCALE:F

    aput v4, v2, v3

    .line 121
    :cond_89
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/MapScale;->defScales:Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;->definedScales:[F

    array-length v2, v2

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->definedScalesLength:I
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_90} :catch_91

    .line 134
    .end local v0  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v1  # "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_a6

    .line 122
    :catch_91
    move-exception v0

    .line 127
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_92
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/MapScale;->defScales:Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;->definedScale_Default:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->definedScale:I

    .line 128
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/MapScale;->defScales:Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;->definedScale_Default:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->definedScaleBeforeReset:I

    .line 130
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/MapScale;->defScales:Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;->definedScale_Default:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->definedScalesLength:I
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_a4} :catch_a5

    .line 133
    goto :goto_a6

    .line 131
    :catch_a5
    move-exception v1

    .line 135
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_a6
    return-void
.end method

.method public final resetScaleInfo()V
    .registers 2

    .line 356
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->resetStartScalePosition()V

    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->scaleMode:Z

    .line 358
    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->startScale:F

    .line 359
    return-void
.end method

.method protected final resetScaleOfMap(J)V
    .registers 9
    .param p1, "nActionDownTime"  # J

    .line 276
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_85

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->changeCurrentScaleByX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_85

    .line 277
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getTouchMgr()Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->getActionDownTime()J

    move-result-wide v2

    const-wide/16 v4, 0xaf

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_85

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getDisableMovingMap()Z

    move-result v0

    if-nez v0, :cond_85

    .line 278
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->resetScaleAnimation()V

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->scaleChangeByTouch:Z

    .line 282
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fCurrScale:F

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->animation_StartingScale:F

    .line 284
    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapScale;->STANDARD_SCALE:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_46

    .line 285
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fScaleBeforeReset:F

    .line 287
    sub-float/2addr v2, v1

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->changeCurrentScaleByX:F

    .line 288
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->definedScaleBeforeReset:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->definedScale:I

    goto :goto_57

    .line 291
    :cond_46
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fScaleBeforeReset:F

    sub-float/2addr v3, v1

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->changeCurrentScaleByX:F

    .line 293
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fScaleBeforeReset:F

    .line 294
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->definedScale:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->definedScaleBeforeReset:I

    .line 295
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/MapScale;->defScales:Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;->definedScale_Default:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->definedScale:I

    .line 298
    :goto_57
    sget-wide v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    iput-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->animation_TIME_STARTED:J

    .line 299
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Touch;->getMousePosX()I

    move-result v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Touch;->getMousePosY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->updateAnimationScale_CenterToXY(II)V

    .line 301
    const/16 v1, 0x64

    sput v1, Lage/of/civilizations2/jakowski/lukasz/MapScale;->animation_TIME_TO_END:I

    .line 303
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getTouchMgr()Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->setUpdateStartMovePosX(Z)V

    .line 304
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getTouchMgr()Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->setUpdateStartMovePosY(Z)V

    .line 306
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpSl()Lage/of/civilizations2/jakowski/lukasz/MapScroll;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->resetScrollInfo()V

    .line 311
    :cond_85
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getTouchMgr()Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->setActionDownTime(J)V

    .line 312
    return-void
.end method

.method public final resetStartScalePosition()V
    .registers 2

    .line 352
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iStartScalePosY2:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iStartScalePosY:I

    .line 353
    return-void
.end method

.method public final scaleTheMap(IIII)V
    .registers 8
    .param p1, "nX"  # I
    .param p2, "nX2"  # I
    .param p3, "nY"  # I
    .param p4, "nY2"  # I

    .line 242
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->scaleByYAxis:Z

    const/high16 v1, 0x40000000  # 2.0f

    if-eqz v0, :cond_1a

    .line 243
    add-int v0, p1, p2

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-int v2, p3, p4

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-direct {p0, p3, p4, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->scaleTheMap(IIFF)V

    goto :goto_2d

    .line 245
    :cond_1a
    add-int v0, p1, p2

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-int v2, p3, p4

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->scaleTheMap(IIFF)V

    .line 247
    :goto_2d
    return-void
.end method

.method public final scaleTheMap2(IIII)V
    .registers 9
    .param p1, "nX"  # I
    .param p2, "nX2"  # I
    .param p3, "nY"  # I
    .param p4, "nY2"  # I

    .line 162
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iStartScalePosX:I

    const/high16 v1, 0x43160000  # 150.0f

    if-ne v0, p1, :cond_31

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iStartScalePosY:I

    if-eq v2, p3, :cond_b

    goto :goto_31

    .line 173
    :cond_b
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iStartScalePosX2:I

    if-ne v0, p2, :cond_13

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iStartScalePosY2:I

    if-eq v2, p4, :cond_4b

    .line 174
    :cond_13
    const/4 v2, 0x0

    .line 176
    .local v2, "fScaleDifference":F
    if-eq v0, p2, :cond_22

    .line 177
    int-to-float v3, v0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    div-float/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    div-float/2addr v0, v1

    add-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iStartScalePosX2:I

    goto :goto_2d

    .line 178
    :cond_22
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iStartScalePosY2:I

    if-eq v0, p3, :cond_2d

    .line 179
    sub-int/2addr v0, p3

    int-to-float v0, v0

    div-float/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    div-float/2addr v0, v1

    add-float/2addr v2, v0

    .line 182
    :cond_2d
    :goto_2d
    invoke-virtual {p0, v2, p2, p4}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->setNewScale_ByTouch2(FII)V

    goto :goto_4b

    .line 163
    .end local v2  # "fScaleDifference":F
    :cond_31
    :goto_31
    const/4 v2, 0x0

    .line 165
    .restart local v2  # "fScaleDifference":F
    if-eq v0, p1, :cond_3c

    .line 166
    sub-int/2addr v0, p1

    int-to-float v0, v0

    div-float/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    div-float/2addr v0, v1

    add-float/2addr v2, v0

    goto :goto_47

    .line 167
    :cond_3c
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iStartScalePosY:I

    if-eq v0, p3, :cond_47

    .line 168
    sub-int/2addr v0, p3

    int-to-float v0, v0

    div-float/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    div-float/2addr v0, v1

    add-float/2addr v2, v0

    .line 171
    :cond_47
    :goto_47
    invoke-virtual {p0, v2, p2, p4}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->setNewScale_ByTouch2(FII)V

    .line 172
    .end local v2  # "fScaleDifference":F
    nop

    .line 185
    :cond_4b
    :goto_4b
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iStartScalePosX:I

    .line 186
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iStartScalePosX2:I

    .line 188
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iStartScalePosY:I

    .line 189
    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iStartScalePosY2:I

    .line 191
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getTouchMgr()Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->setUpdateStartMovePosX(Z)V

    .line 192
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getTouchMgr()Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->setUpdateStartMovePosY(Z)V

    .line 193
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->resetScaleAnimation()V

    .line 194
    return-void
.end method

.method public final scrollScale(I)V
    .registers 7
    .param p1, "changeScaleByX"  # I

    .line 413
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->definedScale:I

    add-int/2addr v0, p1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->definedScale:I

    .line 419
    const/4 v1, 0x0

    if-gez v0, :cond_b

    .line 420
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->definedScale:I

    goto :goto_43

    .line 421
    :cond_b
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/MapScale;->defScales:Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;->definedScales:[F

    array-length v2, v2

    if-lt v0, v2, :cond_43

    .line 422
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->defScales:Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;->definedScales:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->definedScale:I

    .line 425
    :try_start_1b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvMapScroll:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_MapScroll;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_MapScroll;->USE_MAP_SCALE_SCROLL_FIX_FOR_SMALL_MAPS:Z

    if-eqz v0, :cond_41

    .line 426
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->defScales:Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;->definedScales:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    .local v0, "i":I
    :goto_28
    if-ltz v0, :cond_41

    .line 427
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/MapScale;->defScales:Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;->definedScales:[F

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->definedScale:I

    aget v2, v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/MapScale;->defScales:Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;->definedScales:[F

    aget v3, v3, v0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3e

    .line 428
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->definedScale:I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_3e} :catch_42

    .line 426
    :cond_3e
    add-int/lit8 v0, v0, -0x1

    goto :goto_28

    .line 434
    .end local v0  # "i":I
    :cond_41
    goto :goto_43

    .line 432
    :catch_42
    move-exception v0

    .line 437
    :cond_43
    :goto_43
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getDefinedScale()F

    move-result v0

    .line 439
    .local v0, "newMapScale":F
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvMapScroll:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_MapScroll;

    iget-boolean v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_MapScroll;->USE_MAP_SCALE_SCROLL_FIX_FOR_SMALL_MAPS:Z

    if-eqz v2, :cond_5d

    const v2, 0x3f7eb852  # 0.995f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_5d

    const v2, 0x3f80a3d7  # 1.005f

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_5d

    .line 440
    sget v0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->STANDARD_SCALE:F

    .line 444
    :cond_5d
    :try_start_5d
    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapScale;->MINSCALE:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_7e

    .line 445
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/MapScale;->defScales:Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;->definedScales:[F

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_6a
    if-ltz v2, :cond_7e

    .line 446
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/MapScale;->defScales:Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/MapScale$DefinedScales;->definedScales:[F

    aget v3, v3, v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/MapScale;->MINSCALE:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_7b

    .line 447
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->definedScale:I
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_7a} :catch_7f

    .line 448
    goto :goto_7e

    .line 445
    :cond_7b
    add-int/lit8 v2, v2, -0x1

    goto :goto_6a

    .line 454
    .end local v2  # "i":I
    :cond_7e
    :goto_7e
    goto :goto_80

    .line 452
    :catch_7f
    move-exception v2

    .line 456
    :goto_80
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fCurrScale:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_b2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapScale;->MINSCALE:F

    const v3, 0x3d4ccccd  # 0.05f

    sub-float/2addr v2, v3

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_b2

    .line 457
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->resetScaleAnimation()V

    .line 459
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->scaleChangeByTouch:Z

    .line 461
    const/16 v1, 0x7d

    sput v1, Lage/of/civilizations2/jakowski/lukasz/MapScale;->animation_TIME_TO_END:I

    .line 463
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fCurrScale:F

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->animation_StartingScale:F

    .line 464
    sub-float v1, v0, v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->changeCurrentScaleByX:F

    .line 466
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fScaleBeforeReset:F

    .line 468
    sget-wide v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    iput-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->animation_TIME_STARTED:J

    .line 469
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Touch;->getMousePosX()I

    move-result v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Touch;->getMousePosY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->updateAnimationScale_CenterToXY(II)V

    .line 474
    :cond_b2
    return-void
.end method

.method public final setCurrScale(F)V
    .registers 4
    .param p1, "currentScale"  # F

    .line 590
    const/high16 v0, 0x43fa0000  # 500.0f

    cmpg-float v0, v0, p1

    if-gez v0, :cond_9

    .line 591
    const/high16 p1, 0x43fa0000  # 500.0f

    goto :goto_11

    .line 592
    :cond_9
    sget v0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->MINSCALE:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_11

    .line 593
    sget p1, Lage/of/civilizations2/jakowski/lukasz/MapScale;->MINSCALE:F

    .line 596
    :cond_11
    :goto_11
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fCurrScale:F

    .line 598
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setuPRV(Z)V

    .line 599
    return-void
.end method

.method public final setNewCurrentScaleByButton2(F)V
    .registers 7
    .param p1, "newScale"  # F

    .line 477
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fDifferenceScale:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_8

    .line 478
    add-float/2addr p1, v0

    .line 481
    :cond_8
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fCurrScale:F

    add-float/2addr p1, v0

    .line 483
    const v1, 0x3f7eb852  # 0.995f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1b

    const v1, 0x3f80a3d7  # 1.005f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1b

    .line 484
    const/high16 p1, 0x3f800000  # 1.0f

    .line 487
    :cond_1b
    cmpl-float v0, p1, v0

    if-eqz v0, :cond_61

    sget v0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->MINSCALE:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_61

    .line 488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iScaleAnimationTime:J

    sub-long/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapScale;->SCALE_ANIMATION_TIME:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_58

    .line 489
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->resetScaleAnimation()V

    .line 491
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->scaleChangeByTouch:Z

    .line 493
    const/16 v0, 0x32

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->SCALE_ANIMATION_TIME:I

    .line 495
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fCurrScale:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fStartScaling_Scale:F

    .line 497
    sub-float v0, p1, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fDifferenceScale:F

    .line 499
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fScaleBeforeReset:F

    .line 501
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iScaleAnimationTime:J

    .line 502
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Touch;->getMousePosX()I

    move-result v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Touch;->getMousePosY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->updateScaleAnimation_PercXY(II)V

    .line 505
    :cond_58
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpSl()Lage/of/civilizations2/jakowski/lukasz/MapScroll;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->resetScrollInfo()V

    .line 507
    :cond_61
    return-void
.end method

.method public final setNewCurrentScaleByTouch(FFF)V
    .registers 11
    .param p1, "nCurrentScale"  # F
    .param p2, "fCenterX"  # F
    .param p3, "fCenterY"  # F

    .line 362
    const/high16 v0, 0x43fa0000  # 500.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_9

    .line 363
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->newScale:F

    goto :goto_14

    .line 364
    :cond_9
    sget v0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->MINSCALE:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_12

    .line 365
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->newScale:F

    goto :goto_14

    .line 367
    :cond_12
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->newScale:F

    .line 370
    :goto_14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->scaleChangeByTouch:Z

    .line 372
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->newScale:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_d0

    .line 373
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fCurrScale:F

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_b5

    .line 377
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v0, v0

    div-float v0, p2, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fScaleAnimation_PercX:F

    .line 378
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    int-to-float v0, v0

    div-float v0, p3, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fScaleAnimation_PercY:F

    .line 380
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->startScale:F

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fCurrScale:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_77

    .line 381
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iStartScaleMapPosX:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v3, v3

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->startScale:F

    div-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->newScale:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fScaleAnimation_PercX:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->setNewPosX(I)V

    .line 382
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iStartScaleMapPosY:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    int-to-float v3, v3

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->startScale:F

    div-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    int-to-float v4, v4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->newScale:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fScaleAnimation_PercY:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->setNewPosY(I)V

    goto :goto_af

    .line 385
    :cond_77
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iStartScaleMapPosX:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v3, v3

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->startScale:F

    div-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->newScale:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->setNewPosX(I)V

    .line 386
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iStartScaleMapPosY:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    int-to-float v3, v3

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->startScale:F

    div-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    int-to-float v5, v5

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->newScale:F

    div-float/2addr v5, v6

    sub-float/2addr v3, v5

    div-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->setNewPosY(I)V

    .line 389
    :goto_af
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->newScale:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fCurrScale:F

    .line 390
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->newScale:F

    .line 393
    :cond_b5
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->checkPositionOfMapY()V

    .line 394
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->checkPositionOfMapX()V

    .line 395
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->updateSecondSideOfMap()V

    .line 397
    :cond_d0
    return-void
.end method

.method public final setNewScale_ByTouch2(FII)V
    .registers 9
    .param p1, "nDifference"  # F
    .param p2, "nXCenter"  # I
    .param p3, "nYCenter"  # I

    .line 197
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_6

    .line 198
    return-void

    .line 201
    :cond_6
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fCurrScale:F

    add-float v2, v1, p1

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->newScale:F

    .line 203
    const/high16 v3, 0x43fa0000  # 500.0f

    cmpl-float v4, v2, v3

    if-lez v4, :cond_15

    .line 204
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->newScale:F

    goto :goto_1d

    .line 205
    :cond_15
    sget v3, Lage/of/civilizations2/jakowski/lukasz/MapScale;->MINSCALE:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1d

    .line 206
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->newScale:F

    .line 209
    :cond_1d
    :goto_1d
    const/4 v2, 0x1

    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->scaleChangeByTouch:Z

    .line 211
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->newScale:F

    cmpl-float v3, v2, v0

    if-lez v3, :cond_49

    .line 212
    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2e

    .line 213
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fCurrScale:F

    .line 214
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->newScale:F

    .line 217
    :cond_2e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->checkPositionOfMapY()V

    .line 218
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->checkPositionOfMapX()V

    .line 219
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->updateSecondSideOfMap()V

    .line 221
    :cond_49
    return-void
.end method

.method public final setScaleBeforeReset(F)V
    .registers 2
    .param p1, "fScaleBeforeReset"  # F

    .line 640
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fScaleBeforeReset:F

    .line 641
    return-void
.end method

.method public final setScaleMode(Z)V
    .registers 2
    .param p1, "scaleMode"  # Z

    .line 632
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->scaleMode:Z

    .line 633
    return-void
.end method

.method public final startScaleTheMap(IIII)V
    .registers 9
    .param p1, "nX"  # I
    .param p2, "nX2"  # I
    .param p3, "nY"  # I
    .param p4, "nY2"  # I

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->scaleMode:Z

    .line 228
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_1f

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->scaleByYAxis:Z

    .line 231
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iStartScalePosY:I

    .line 232
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iStartScalePosY2:I

    goto :goto_25

    .line 234
    :cond_1f
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->scaleByYAxis:Z

    .line 236
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iStartScalePosY:I

    .line 237
    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iStartScalePosY2:I

    .line 239
    :goto_25
    return-void
.end method

.method public final startScaleTheMap2(IIII)V
    .registers 6
    .param p1, "nX"  # I
    .param p2, "nX2"  # I
    .param p3, "nY"  # I
    .param p4, "nY2"  # I

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->scaleMode:Z

    .line 154
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iStartScalePosX:I

    .line 155
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iStartScalePosX2:I

    .line 157
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iStartScalePosY:I

    .line 158
    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->iStartScalePosY2:I

    .line 159
    return-void
.end method

.method public final update()V
    .registers 3

    .line 525
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->changeCurrentScaleByX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    .line 526
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->updateScale()V

    .line 528
    :cond_a
    return-void
.end method

.method protected final updateAnimationScale_CenterToXY(II)V
    .registers 5
    .param p1, "nPosX"  # I
    .param p2, "nPosY"  # I

    .line 406
    int-to-float v0, p1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fScaleAnimation_PercX:F

    .line 407
    int-to-float v0, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fScaleAnimation_PercY:F

    .line 408
    return-void
.end method

.method public final updateMinimapScaleXY()V
    .registers 4

    .line 619
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMinimapWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000  # 2.0f

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fMinimapScaleX:F

    .line 620
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMinimapHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fMinimapScaleY:F

    .line 621
    return-void
.end method

.method public final updateScaleAnimation_PercXY(II)V
    .registers 5
    .param p1, "nPosX"  # I
    .param p2, "nPosY"  # I

    .line 520
    int-to-float v0, p1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fScaleAnimation_PercX:F

    .line 521
    int-to-float v0, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScale;->fScaleAnimation_PercY:F

    .line 522
    return-void
.end method
