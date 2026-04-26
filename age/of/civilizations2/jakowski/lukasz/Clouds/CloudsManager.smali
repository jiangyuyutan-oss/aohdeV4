.class public Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;
.super Ljava/lang/Object;
.source "CloudsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsSettings;,
        Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsInterface;
    }
.end annotation


# static fields
.field public static updateInViewID:I


# instance fields
.field public cloudsInterface:Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsInterface;

.field public cloudsSettings:Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsSettings;

.field private fDA:F

.field public iCL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Image;",
            ">;"
        }
    .end annotation
.end field

.field public iCLMD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private iCS:I

.field private lC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;",
            ">;"
        }
    .end annotation
.end field

.field private lTDINA:J

.field private lTDOA:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 124
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->updateInViewID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->iCL:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->iCLMD:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->lC:Ljava/util/List;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->iCS:I

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->lTDOA:J

    .line 34
    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->lTDINA:J

    .line 36
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->fDA:F

    .line 44
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsSettings;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsSettings;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->cloudsSettings:Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsSettings;

    .line 161
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$1;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->cloudsInterface:Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsInterface;

    .line 42
    return-void
.end method


# virtual methods
.method public final aCLO()V
    .registers 4

    .line 107
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->aCLO(II)V

    .line 108
    return-void
.end method

.method public final aCLO(II)V
    .registers 12
    .param p1, "nPosX"  # I
    .param p2, "nPosY"  # I

    .line 111
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->iCS:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->cloudsSettings:Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsSettings;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsSettings;->maxNumOfCloudsInTheGame:I

    if-ge v0, v1, :cond_60

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->cloudsSettings:Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsSettings;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsSettings;->numOfCloudImages:I

    if-lez v0, :cond_60

    .line 112
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->iCL:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 114
    .local v0, "tempID":I
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->lC:Ljava/util/List;

    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0x14

    .line 117
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v4, 0x19

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x42c80000  # 100.0f

    div-float v6, v2, v3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0x168

    .line 118
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    move-object v2, v8

    move v3, v0

    move v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;-><init>(IIIFI)V

    .line 114
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->lC:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->iCS:I

    .line 122
    .end local v0  # "tempID":I
    :cond_60
    return-void
.end method

.method public bLCL()Z
    .registers 2

    .line 70
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getIsDesktop()Z

    move-result v0

    return v0
.end method

.method public final drC(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 8
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 190
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->cloudsSettings:Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsSettings;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsSettings;->drawCloudsMinScale:F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_53

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 191
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->cloudsSettings:Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsSettings;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsSettings;->drawCloudsMaxScale:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_53

    .line 193
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->lTDOA:J

    .line 195
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->fDA:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_4d

    .line 196
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    iget-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->lTDINA:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->cloudsAnimation:Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->cloudsSettings:Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsSettings;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsSettings;->spawnAnimationTime:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float v0, v0, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->fDA:F

    .line 197
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->fDA:F

    .line 200
    :cond_4d
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->fDA:F

    invoke-virtual {p0, p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->drC(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_85

    .line 203
    :cond_53
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    iget-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->lTDOA:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->cloudsAnimation:Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->cloudsSettings:Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsSettings;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsSettings;->spawnAnimationTime:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float v0, v0, v3

    sub-float/2addr v3, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->fDA:F

    .line 205
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->cloudsAnimation:Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->cloudsSettings:Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsSettings;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsSettings;->spawnAnimationTime:I

    int-to-float v2, v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->fDA:F

    mul-float v2, v2, v3

    float-to-long v4, v2

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->lTDINA:J

    .line 207
    const v0, 0x3c23d70a  # 0.01f

    cmpl-float v0, v3, v0

    if-lez v0, :cond_85

    .line 208
    invoke-virtual {p0, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->drC(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 212
    :cond_85
    :goto_85
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 213
    return-void
.end method

.method public final drC(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "modAlpha"  # F

    .line 216
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->uCLO()V

    .line 219
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->iCS:I

    if-ge v0, v1, :cond_ac

    .line 220
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->lC:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;

    iget-boolean v1, v1, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;->isInView:Z

    if-eqz v1, :cond_a8

    .line 221
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->lC:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;->fAlpha:F

    mul-float v2, v2, p2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 223
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->iCL:Ljava/util/List;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->lC:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;->iCloudImageID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->lC:Ljava/util/List;

    .line 224
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;->iPosX:F

    float-to-int v1, v1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->lC:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;->iPosX_SecondSideOfMap:I

    add-int/2addr v1, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPX()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->lC:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;->iShadowX:I

    add-int v4, v1, v3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->lC:Ljava/util/List;

    .line 225
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;->iPosY:F

    float-to-int v1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->lC:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;->iShadowY:I

    add-int v5, v1, v3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->lC:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;->fScale:F

    const/high16 v3, 0x3f400000  # 0.75f

    mul-float v6, v1, v3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->lC:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;->iRotate:I

    int-to-float v7, v1

    .line 223
    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFF)V

    .line 219
    :cond_a8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 229
    .end local v0  # "i":I
    :cond_ac
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_ce

    .line 230
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v0

    sub-float v0, v1, v0

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    mul-float p2, p2, v0

    .line 234
    :cond_ce
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_cf
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->iCS:I

    if-ge v0, v2, :cond_15c

    .line 235
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->lC:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;

    iget-boolean v2, v2, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;->isInView:Z

    if-eqz v2, :cond_158

    .line 236
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->lC:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;->fAlpha:F

    mul-float v3, v3, p2

    invoke-direct {v2, v1, v1, v1, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 238
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->iCL:Ljava/util/List;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->lC:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;->iCloudImageID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->lC:Ljava/util/List;

    .line 239
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;->iPosX:F

    float-to-int v2, v2

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->lC:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;->iPosX_SecondSideOfMap:I

    add-int/2addr v2, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPX()I

    move-result v4

    add-int v5, v2, v4

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->lC:Ljava/util/List;

    .line 240
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;->iPosY:F

    float-to-int v2, v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v4

    add-int v6, v2, v4

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->lC:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;

    iget v7, v2, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;->fScale:F

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->lC:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;->iRotate:I

    int-to-float v8, v2

    .line 238
    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFF)V

    .line 234
    :cond_158
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_cf

    .line 244
    .end local v0  # "i":I
    :cond_15c
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 245
    return-void
.end method

.method public final loCI()V
    .registers 5

    .line 75
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->bLCL()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 76
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->cloudsSettings:Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsSettings;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsSettings;->numOfCloudImages:I

    if-ge v0, v1, :cond_32

    .line 77
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->iCL:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "game/clouds/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->loadImage(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 80
    .end local v0  # "i":I
    :cond_32
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_33
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->cloudsSettings:Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsSettings;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsSettings;->numOfCloudImages:I

    if-ge v0, v1, :cond_61

    .line 81
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->iCLMD:Ljava/util/List;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->iCL:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->iCL:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 84
    .end local v0  # "i":I
    :cond_61
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_62
    const/16 v1, 0x19

    if-ge v0, v1, :cond_6c

    .line 85
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->aCLO()V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    .line 88
    .end local v0  # "i":I
    :cond_6c
    return-void
.end method

.method public final rSCL()V
    .registers 3

    .line 150
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->cloudsSettings:Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsSettings;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsSettings;->spawnCloudChance:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_11

    .line 151
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->aCLO()V

    .line 153
    :cond_11
    return-void
.end method

.method public final readSettings()V
    .registers 6

    .line 91
    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 92
    .local v0, "json":Lcom/badlogic/gdx/utils/Json;
    const-string v1, "game/clouds/Config.json"

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 93
    .local v1, "file":Lcom/badlogic/gdx/files/FileHandle;
    const-class v2, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsSettings;

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsSettings;

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->cloudsSettings:Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsSettings;

    .line 95
    iget v3, v2, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsSettings;->moveSpeedY:F

    const v4, 0x3dcccccd  # 0.1f

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsSettings;->moveSpeedY:F

    .line 96
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->cloudsSettings:Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsSettings;

    iget v3, v2, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsSettings;->randomAlpha:F

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsSettings;->randomAlpha:F

    .line 98
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->bLCL()Z

    move-result v2

    if-nez v2, :cond_37

    .line 99
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->cloudsSettings:Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsSettings;

    const/4 v3, 0x0

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsSettings;->numOfCloudImages:I

    .line 101
    :cond_37
    return-void
.end method

.method public final uCLO()V
    .registers 3

    .line 128
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->lC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_28

    .line 129
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->lC:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;->removeCloud()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 130
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->lC:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 131
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->lC:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->iCS:I

    .line 128
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 135
    .end local v0  # "i":I
    :cond_28
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->rSCL()V

    .line 136
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->updateInView_CordsXY()V

    .line 138
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_2f
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->iCS:I

    if-ge v0, v1, :cond_41

    .line 139
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->lC:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;->update()V

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 142
    .end local v0  # "i":I
    :cond_41
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->updateInViewID:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x8

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->updateInViewID:I

    .line 143
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->updateInViewID:I

    .restart local v0  # "i":I
    :goto_4b
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->iCS:I

    if-ge v0, v1, :cond_5d

    .line 144
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->lC:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Clouds/Cloud;->updateIsInView()V

    .line 143
    add-int/lit8 v0, v0, 0x8

    goto :goto_4b

    .line 146
    .end local v0  # "i":I
    :cond_5d
    return-void
.end method

.method public final updateCloudsInterface()V
    .registers 2

    .line 167
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->CLOUDS:Z

    if-nez v0, :cond_16

    .line 168
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$2;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->cloudsInterface:Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsInterface;

    .line 173
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->lC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 174
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->iCS:I

    goto :goto_1d

    .line 177
    :cond_16
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$3;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->cloudsInterface:Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsInterface;

    .line 184
    :goto_1d
    return-void
.end method
