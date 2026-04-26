.class public Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;
.super Ljava/lang/Object;
.source "Civilization_Region.java"


# instance fields
.field public centerCharXY:Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

.field public drawMatrix4:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/math/Matrix4;",
            ">;"
        }
    .end annotation
.end field

.field protected drawName:Z

.field private fAngle:F

.field private fAngle_Low:F

.field private fontScale:F

.field private haveNotOccupiedProvince:Z

.field public iAveragePointPosX:I

.field public iAveragePointPosY:I

.field public iAveragePotential:I

.field private iCharMaxHeight:I

.field private iCharMaxWidth:I

.field private iMaxX:I

.field private iMaxY:I

.field private iMinX:I

.field private iMinY:I

.field private iProvincesSize:I

.field private iRegionID:I

.field public isKeyRegion:Z

.field private isSupplied:Z

.field protected lCoastlineProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Point_XY2;",
            ">;"
        }
    .end annotation
.end field

.field private lProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private numOfTries:I

.field private seaAccess:Z

.field private seaAccess_HavePort:Z

.field private shortestLine:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private triedToUse:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->isSupplied:Z

    .line 27
    const/4 v1, 0x0

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess:Z

    .line 28
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess_HavePort:Z

    .line 29
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->haveNotOccupiedProvince:Z

    .line 32
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->isKeyRegion:Z

    .line 34
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAveragePotential:I

    .line 38
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lCoastlineProvinces:Ljava/util/List;

    .line 42
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    .line 44
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinX:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxX:I

    .line 45
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinY:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxY:I

    .line 47
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAveragePointPosX:I

    .line 48
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAveragePointPosY:I

    .line 50
    const/high16 v2, 0x3f800000  # 1.0f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    .line 52
    const/4 v2, 0x0

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fAngle:F

    .line 53
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fAngle_Low:F

    .line 55
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iCharMaxWidth:I

    .line 56
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iCharMaxHeight:I

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    .line 59
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->drawMatrix4:Ljava/util/List;

    .line 64
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->drawName:Z

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->triedToUse:Ljava/util/List;

    .line 223
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->numOfTries:I

    .line 70
    return-void
.end method

.method public constructor <init>(II)V
    .registers 6
    .param p1, "nProvinceID"  # I
    .param p2, "iRegionID"  # I

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->isSupplied:Z

    .line 27
    const/4 v1, 0x0

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess:Z

    .line 28
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess_HavePort:Z

    .line 29
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->haveNotOccupiedProvince:Z

    .line 32
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->isKeyRegion:Z

    .line 34
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAveragePotential:I

    .line 38
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lCoastlineProvinces:Ljava/util/List;

    .line 42
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    .line 44
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinX:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxX:I

    .line 45
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinY:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxY:I

    .line 47
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAveragePointPosX:I

    .line 48
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAveragePointPosY:I

    .line 50
    const/high16 v2, 0x3f800000  # 1.0f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    .line 52
    const/4 v2, 0x0

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fAngle:F

    .line 53
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fAngle_Low:F

    .line 55
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iCharMaxWidth:I

    .line 56
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iCharMaxHeight:I

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    .line 59
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->drawMatrix4:Ljava/util/List;

    .line 64
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->drawName:Z

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->triedToUse:Ljava/util/List;

    .line 223
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->numOfTries:I

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lCoastlineProvinces:Ljava/util/List;

    .line 77
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iRegionID:I

    .line 78
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->addProvince(I)V

    .line 79
    return-void
.end method

.method private final buildAveragePoint()V
    .registers 16

    .line 603
    const-wide/16 v0, 0x0

    .line 604
    .local v0, "lAverageX":J
    const-wide/16 v2, 0x0

    .line 606
    .local v2, "lAverageY":J
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v4

    .line 607
    .local v4, "tempMinX":I
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaX7()I

    move-result v5

    .line 608
    .local v5, "tempMaxX":I
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v6

    .line 609
    .local v6, "tempMinY":I
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaY6()I

    move-result v8

    .line 611
    .local v8, "tempMaxY":I
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v11, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v9

    if-ge v9, v4, :cond_d4

    .line 612
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v11, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v4

    .line 615
    :cond_d4
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v11, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaX7()I

    move-result v9

    if-le v9, v5, :cond_11a

    .line 616
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v11, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaX7()I

    move-result v5

    .line 619
    :cond_11a
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v11, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v9

    if-ge v9, v6, :cond_160

    .line 620
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v11, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v6

    .line 623
    :cond_160
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v11, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaY6()I

    move-result v9

    if-le v9, v8, :cond_1a6

    .line 624
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v11, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaY6()I

    move-result v8

    .line 627
    :cond_1a6
    const/4 v9, 0x0

    .line 629
    .local v9, "tSize":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1a8
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvincesSize()I

    move-result v11

    if-ge v10, v11, :cond_2b8

    .line 630
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShX()I

    move-result v11

    if-lt v11, v4, :cond_212

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShX()I

    move-result v11

    if-gt v11, v5, :cond_212

    .line 631
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShY()I

    move-result v11

    if-lt v11, v6, :cond_2b4

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShY()I

    move-result v11

    if-gt v11, v8, :cond_2b4

    .line 632
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShX()I

    move-result v11

    int-to-long v13, v11

    add-long/2addr v0, v13

    .line 633
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShY()I

    move-result v11

    int-to-long v13, v11

    add-long/2addr v2, v13

    .line 634
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2b4

    .line 637
    :cond_212
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v11

    if-le v11, v4, :cond_232

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v11

    if-le v11, v5, :cond_252

    :cond_232
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 638
    invoke-virtual {p0, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaX7()I

    move-result v11

    if-le v11, v4, :cond_2b4

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaX7()I

    move-result v11

    if-gt v11, v5, :cond_2b4

    .line 640
    :cond_252
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v11

    if-lt v11, v6, :cond_272

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v11

    if-le v11, v8, :cond_292

    :cond_272
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 641
    invoke-virtual {p0, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaY6()I

    move-result v11

    if-lt v11, v6, :cond_2b4

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaY6()I

    move-result v11

    if-gt v11, v8, :cond_2b4

    .line 643
    :cond_292
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShX()I

    move-result v11

    int-to-long v13, v11

    add-long/2addr v0, v13

    .line 644
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShY()I

    move-result v11

    int-to-long v13, v11

    add-long/2addr v2, v13

    .line 645
    add-int/lit8 v9, v9, 0x1

    .line 629
    :cond_2b4
    :goto_2b4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1a8

    .line 650
    .end local v10  # "i":I
    :cond_2b8
    if-nez v9, :cond_2bb

    .line 651
    const/4 v9, 0x1

    .line 654
    :cond_2bb
    int-to-long v10, v9

    div-long v10, v0, v10

    long-to-int v11, v10

    iput v11, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAveragePointPosX:I

    .line 655
    int-to-long v10, v9

    div-long v10, v2, v10

    long-to-int v11, v10

    iput v11, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAveragePointPosY:I

    .line 657
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v11, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v13, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeX()I

    move-result v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v13, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v14, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeX()I

    move-result v11

    add-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    .line 658
    .local v10, "tAveX":I
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v13, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v14, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v11, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeY()I

    move-result v7

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v13, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v14, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeY()I

    move-result v11

    add-int/2addr v7, v11

    div-int/lit8 v7, v7, 0x2

    .line 660
    .local v7, "tAveY":I
    int-to-float v11, v10

    iget v12, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAveragePointPosX:I

    sub-int v12, v10, v12

    int-to-float v12, v12

    const v13, 0x3f19999a  # 0.6f

    mul-float v12, v12, v13

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAveragePointPosX:I

    .line 661
    int-to-float v11, v7

    iget v12, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAveragePointPosY:I

    sub-int v12, v7, v12

    int-to-float v12, v12

    mul-float v12, v12, v13

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAveragePointPosY:I

    .line 662
    return-void
.end method

.method private final buildMinMaxBounds()V
    .registers 4

    .line 445
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinX:I

    .line 446
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaX7()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxX:I

    .line 447
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinY:I

    .line 448
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaY6()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxY:I

    .line 450
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_62
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iProvincesSize:I

    if-ge v0, v1, :cond_132

    .line 451
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinX:I

    if-ge v1, v2, :cond_98

    .line 452
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinX:I

    .line 455
    :cond_98
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaX7()I

    move-result v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxX:I

    if-le v1, v2, :cond_ca

    .line 456
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaX7()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxX:I

    .line 459
    :cond_ca
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinY:I

    if-ge v1, v2, :cond_fc

    .line 460
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinY:I

    .line 463
    :cond_fc
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaY6()I

    move-result v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxY:I

    if-le v1, v2, :cond_12e

    .line 464
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaY6()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxY:I
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12e} :catch_133

    .line 450
    :cond_12e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_62

    .line 469
    .end local v0  # "i":I
    :cond_132
    goto :goto_137

    .line 467
    :catch_133
    move-exception v0

    .line 468
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 470
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_137
    return-void
.end method

.method private final canDrawTextProperly(II)Lage/of/civilizations2/jakowski/lukasz/Point_XY2;
    .registers 28
    .param p1, "fromProvinceID"  # I
    .param p2, "toProvinceID"  # I

    .line 473
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->buildAveragePoint()V

    .line 475
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 477
    .local v4, "tempPoints":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Point_XY2;>;"
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShX()I

    move-result v5

    .line 478
    .local v5, "tX":I
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShX()I

    move-result v6

    .line 480
    .local v6, "tX2":I
    sub-int v0, v6, v5

    int-to-float v0, v0

    const v7, 0x3e19999a  # 0.15f

    mul-float v0, v0, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    const/4 v8, -0x1

    if-le v5, v6, :cond_35

    const/4 v10, -0x1

    goto :goto_36

    :cond_35
    const/4 v10, 0x1

    :goto_36
    mul-int v0, v0, v10

    add-int v10, v5, v0

    .line 481
    .local v10, "extra10X":I
    sub-int v0, v6, v5

    int-to-float v0, v0

    mul-float v0, v0, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    if-le v6, v5, :cond_48

    const/4 v11, -0x1

    goto :goto_49

    :cond_48
    const/4 v11, 0x1

    :goto_49
    mul-int v0, v0, v11

    add-int v11, v6, v0

    .line 483
    .local v11, "extra10X2":I
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShY()I

    move-result v12

    .line 484
    .local v12, "tY":I
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShY()I

    move-result v13

    .line 486
    .local v13, "tY2":I
    sub-int v0, v13, v12

    int-to-float v0, v0

    mul-float v0, v0, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    if-le v12, v13, :cond_6f

    const/4 v14, -0x1

    goto :goto_70

    :cond_6f
    const/4 v14, 0x1

    :goto_70
    mul-int v0, v0, v14

    add-int v14, v12, v0

    .line 487
    .local v14, "extra10Y":I
    sub-int v0, v13, v12

    int-to-float v0, v0

    mul-float v0, v0, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    if-le v13, v12, :cond_81

    goto :goto_82

    :cond_81
    const/4 v8, 0x1

    :goto_82
    mul-int v0, v0, v8

    add-int v7, v13, v0

    .line 489
    .local v7, "extra10Y2":I
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v8

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivNameLength()I

    move-result v0

    mul-int/lit8 v8, v0, 0xa

    .line 490
    .local v8, "iPrecision":I
    new-array v15, v8, [Lcom/badlogic/gdx/math/Vector2;

    .line 492
    .local v15, "vPoints":[Lcom/badlogic/gdx/math/Vector2;
    const/4 v0, 0x5

    new-array v9, v0, [Lcom/badlogic/gdx/math/Vector2;

    .line 493
    .local v9, "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v3, v10

    move/from16 v16, v5

    .end local v5  # "tX":I
    .local v16, "tX":I
    int-to-float v5, v14

    invoke-direct {v0, v3, v5}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v3, 0x0

    aput-object v0, v9, v3

    .line 494
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v5, v10

    int-to-float v3, v14

    invoke-direct {v0, v5, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v3, 0x1

    aput-object v0, v9, v3

    .line 495
    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAveragePointPosX:I

    int-to-float v5, v5

    iget v0, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAveragePointPosY:I

    int-to-float v0, v0

    invoke-direct {v3, v5, v0}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v0, 0x2

    aput-object v3, v9, v0

    .line 496
    const/4 v0, 0x3

    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v5, v11

    int-to-float v1, v7

    invoke-direct {v3, v5, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v3, v9, v0

    .line 497
    const/4 v0, 0x4

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v3, v11

    int-to-float v5, v7

    invoke-direct {v1, v3, v5}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v1, v9, v0

    .line 499
    new-instance v0, Lcom/badlogic/gdx/math/CatmullRomSpline;

    const/4 v1, 0x0

    invoke-direct {v0, v9, v1}, Lcom/badlogic/gdx/math/CatmullRomSpline;-><init>([Lcom/badlogic/gdx/math/Vector;Z)V

    move-object v1, v0

    .line 501
    .local v1, "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e1
    if-ge v0, v8, :cond_fd

    .line 502
    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    aput-object v3, v15, v0

    .line 503
    aget-object v3, v15, v0

    int-to-float v5, v0

    move/from16 v18, v6

    .end local v6  # "tX2":I
    .local v18, "tX2":I
    int-to-float v6, v8

    const/high16 v19, 0x3f800000  # 1.0f

    sub-float v6, v6, v19

    div-float/2addr v5, v6

    invoke-virtual {v1, v3, v5}, Lcom/badlogic/gdx/math/CatmullRomSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    .line 501
    add-int/lit8 v0, v0, 0x1

    move/from16 v6, v18

    goto :goto_e1

    .end local v18  # "tX2":I
    .restart local v6  # "tX2":I
    :cond_fd
    move/from16 v18, v6

    .line 506
    .end local v0  # "i":I
    .end local v6  # "tX2":I
    .restart local v18  # "tX2":I
    const/4 v0, 0x0

    .line 508
    .local v0, "tempPrecisionWidth":F
    const/4 v3, 0x0

    move/from16 v24, v3

    move v3, v0

    move/from16 v0, v24

    .local v0, "i":I
    .local v3, "tempPrecisionWidth":F
    :goto_106
    add-int/lit8 v5, v8, -0x1

    if-ge v0, v5, :cond_132

    .line 509
    aget-object v5, v15, v0

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v5, v5

    aget-object v6, v15, v0

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v6, v6

    add-int/lit8 v19, v0, 0x1

    move-object/from16 v20, v1

    .end local v1  # "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    .local v20, "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    aget-object v1, v15, v19

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v1, v1

    add-int/lit8 v19, v0, 0x1

    move/from16 v21, v7

    .end local v7  # "extra10Y2":I
    .local v21, "extra10Y2":I
    aget-object v7, v15, v19

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v7, v7

    invoke-static {v5, v6, v1, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth2(IIII)F

    move-result v1

    add-float/2addr v3, v1

    .line 508
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, v20

    move/from16 v7, v21

    goto :goto_106

    .end local v20  # "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    .end local v21  # "extra10Y2":I
    .restart local v1  # "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    .restart local v7  # "extra10Y2":I
    :cond_132
    move-object/from16 v20, v1

    move/from16 v21, v7

    .line 512
    .end local v0  # "i":I
    .end local v1  # "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    .end local v7  # "extra10Y2":I
    .restart local v20  # "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    .restart local v21  # "extra10Y2":I
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    const/4 v1, 0x0

    aget-object v5, v15, v1

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v5, v5

    aget-object v1, v15, v1

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v1, v1

    invoke-direct {v0, v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    const/4 v1, 0x0

    .line 517
    .local v1, "acceptableWidth":F
    :try_start_14a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    invoke-virtual {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivNameLength()I

    move-result v0
    :try_end_15e
    .catch Ljava/lang/ArithmeticException; {:try_start_14a .. :try_end_15e} :catch_164

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    int-to-float v0, v0

    div-float v1, v3, v0

    .line 522
    goto :goto_16c

    .line 518
    :catch_164
    move-exception v0

    .line 519
    .local v0, "ex":Ljava/lang/ArithmeticException;
    sget-boolean v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGs:Z

    if-eqz v5, :cond_16c

    .line 520
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 525
    .end local v0  # "ex":Ljava/lang/ArithmeticException;
    :cond_16c
    :goto_16c
    const/4 v0, 0x0

    .line 527
    .local v0, "currentPointsWidth":F
    const/4 v5, 0x1

    .local v5, "i":I
    const/4 v6, 0x0

    .local v6, "startPrecision":I
    :goto_16f
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    move/from16 v17, v0

    .end local v0  # "currentPointsWidth":F
    .local v17, "currentPointsWidth":F
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v0

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivNameLength()I

    move-result v0

    if-ge v5, v0, :cond_1e9

    move/from16 v0, v17

    .line 529
    .end local v17  # "currentPointsWidth":F
    .restart local v0  # "currentPointsWidth":F
    :goto_189
    add-int/lit8 v7, v8, -0x1

    if-ge v6, v7, :cond_1da

    .line 530
    aget-object v7, v15, v6

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v7, v7

    move/from16 v19, v3

    .end local v3  # "tempPrecisionWidth":F
    .local v19, "tempPrecisionWidth":F
    aget-object v3, v15, v6

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v3, v3

    add-int/lit8 v17, v6, 0x1

    move/from16 v22, v8

    .end local v8  # "iPrecision":I
    .local v22, "iPrecision":I
    aget-object v8, v15, v17

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v8, v8

    add-int/lit8 v17, v6, 0x1

    move-object/from16 v23, v9

    .end local v9  # "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    .local v23, "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    aget-object v9, v15, v17

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v9, v9

    invoke-static {v7, v3, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth2(IIII)F

    move-result v3

    .line 532
    .local v3, "tempPrecisionWidth2":F
    add-float v7, v0, v3

    cmpl-float v7, v7, v1

    if-ltz v7, :cond_1d0

    cmpg-float v7, v0, v1

    if-gtz v7, :cond_1d0

    .line 533
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    aget-object v8, v15, v6

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v8, v8

    aget-object v9, v15, v6

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v9, v9

    invoke-direct {v7, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    add-float v7, v0, v3

    sub-float v0, v1, v7

    .line 536
    goto :goto_1e0

    .line 538
    :cond_1d0
    add-float/2addr v0, v3

    .line 529
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v19

    move/from16 v8, v22

    move-object/from16 v9, v23

    goto :goto_189

    .end local v19  # "tempPrecisionWidth":F
    .end local v22  # "iPrecision":I
    .end local v23  # "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    .local v3, "tempPrecisionWidth":F
    .restart local v8  # "iPrecision":I
    .restart local v9  # "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    :cond_1da
    move/from16 v19, v3

    move/from16 v22, v8

    move-object/from16 v23, v9

    .line 527
    .end local v3  # "tempPrecisionWidth":F
    .end local v8  # "iPrecision":I
    .end local v9  # "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    .restart local v19  # "tempPrecisionWidth":F
    .restart local v22  # "iPrecision":I
    .restart local v23  # "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    :goto_1e0
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v19

    move/from16 v8, v22

    move-object/from16 v9, v23

    goto :goto_16f

    .end local v0  # "currentPointsWidth":F
    .end local v19  # "tempPrecisionWidth":F
    .end local v22  # "iPrecision":I
    .end local v23  # "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    .restart local v3  # "tempPrecisionWidth":F
    .restart local v8  # "iPrecision":I
    .restart local v9  # "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    .restart local v17  # "currentPointsWidth":F
    :cond_1e9
    move/from16 v19, v3

    move/from16 v22, v8

    move-object/from16 v23, v9

    .line 543
    .end local v3  # "tempPrecisionWidth":F
    .end local v5  # "i":I
    .end local v6  # "startPrecision":I
    .end local v8  # "iPrecision":I
    .end local v9  # "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    .restart local v19  # "tempPrecisionWidth":F
    .restart local v22  # "iPrecision":I
    .restart local v23  # "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->buildScaleOfText()V

    .line 545
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    array-length v3, v15

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    aget-object v3, v15, v3

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v3, v3

    array-length v6, v15

    sub-int/2addr v6, v5

    aget-object v6, v15, v6

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v6, v6

    invoke-direct {v0, v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v5

    .local v0, "i":I
    :goto_20e
    if-ltz v0, :cond_24c

    .line 548
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v5

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setProviPoint(II)I

    move-result v3

    .line 550
    .local v3, "nNewChosenProvinceID":I
    if-ltz v3, :cond_249

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 552
    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    if-eq v5, v6, :cond_249

    .line 553
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    return-object v5

    .line 547
    .end local v3  # "nNewChosenProvinceID":I
    :cond_249
    add-int/lit8 v0, v0, -0x1

    goto :goto_20e

    .line 599
    .end local v0  # "i":I
    :cond_24c
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLineWidth(IIII)I
    .registers 10
    .param p0, "fromPosX"  # I
    .param p1, "fromPosY"  # I
    .param p2, "toPosX"  # I
    .param p3, "toPosY"  # I

    .line 1070
    sub-int v0, p0, p2

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-int v4, p1, p3

    int-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static getLineWidth2(IIII)F
    .registers 10
    .param p0, "fromPosX"  # I
    .param p1, "fromPosY"  # I
    .param p2, "toPosX"  # I
    .param p3, "toPosY"  # I

    .line 1074
    sub-int v0, p0, p2

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-int v4, p1, p3

    int-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static getLineWidth3(FFFF)F
    .registers 10
    .param p0, "fromPosX"  # F
    .param p1, "fromPosY"  # F
    .param p2, "toPosX"  # F
    .param p3, "toPosY"  # F

    .line 1078
    sub-float v0, p0, p2

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float v4, p1, p3

    float-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static getLinesAngle(IIII)F
    .registers 8
    .param p0, "fromPosX"  # I
    .param p1, "fromPosY"  # I
    .param p2, "toPosX"  # I
    .param p3, "toPosY"  # I

    .line 1054
    sub-int v0, p1, p3

    int-to-double v0, v0

    neg-int v2, p0

    add-int/2addr v2, p2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L  # 180.0

    mul-double v0, v0, v2

    const-wide v2, 0x400921fb54442d18L  # Math.PI

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public static getLinesAngle2(FFFF)F
    .registers 8
    .param p0, "fromPosX"  # F
    .param p1, "fromPosY"  # F
    .param p2, "toPosX"  # F
    .param p3, "toPosY"  # F

    .line 1058
    sub-float v0, p1, p3

    float-to-double v0, v0

    neg-float v2, p0

    add-float/2addr v2, p2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L  # 180.0

    mul-double v0, v0, v2

    const-wide v2, 0x400921fb54442d18L  # Math.PI

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public final addProvince(I)V
    .registers 6
    .param p1, "nProvinceID"  # I

    .line 96
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iProvincesSize:I

    .line 99
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvincesSize()I

    move-result v0

    if-lez v0, :cond_26

    .line 100
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lCoastlineProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_26
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->isCapital()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_35

    .line 104
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->isKeyRegion:Z

    .line 107
    :cond_35
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iRegionID:I

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivRegionID(I)V

    .line 109
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess:Z

    if-nez v0, :cond_6e

    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_45
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvincesSize()I

    move-result v2

    if-ge v0, v2, :cond_6e

    .line 111
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfPort()I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_6b

    .line 112
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess:Z

    .line 113
    goto :goto_6e

    .line 110
    :cond_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 118
    .end local v0  # "i":I
    :cond_6e
    :goto_6e
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess:Z

    if-eqz v0, :cond_84

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess_HavePort:Z

    if-nez v0, :cond_84

    .line 119
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfPort()I

    move-result v0

    if-lez v0, :cond_84

    .line 120
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess_HavePort:Z

    .line 124
    :cond_84
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->haveNotOccupiedProvince:Z

    if-nez v0, :cond_96

    .line 125
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v0

    if-nez v0, :cond_96

    .line 126
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->haveNotOccupiedProvince:Z

    .line 129
    :cond_96
    return-void
.end method

.method public final buildDrawData()V
    .registers 31

    .line 844
    move-object/from16 v1, p0

    monitor-enter p0

    .line 845
    :try_start_3
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder2:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v2

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 847
    const/4 v2, 0x1

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iCharMaxWidth:I

    .line 848
    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iCharMaxHeight:I
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_6f0

    .line 851
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    const/4 v4, 0x0

    :try_start_15
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivNameLength()I

    move-result v5

    if-ge v3, v5, :cond_93

    .line 852
    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;

    invoke-direct {v5}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;-><init>()V

    .line 854
    .local v5, "glyphLayout":Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder2:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivNameCharacter(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 856
    iget v6, v5, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->width:F

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iCharMaxWidth:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_82

    .line 857
    iget v6, v5, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->width:F

    float-to-int v6, v6

    iput v6, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iCharMaxWidth:I

    .line 860
    :cond_82
    iget v6, v5, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->height:F

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iCharMaxWidth:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_90

    .line 861
    iget v6, v5, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->height:F

    float-to-int v6, v6

    iput v6, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iCharMaxHeight:I
    :try_end_90
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_15 .. :try_end_90} :catch_c1
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_90} :catch_9a
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_90} :catch_94
    .catchall {:try_start_15 .. :try_end_90} :catchall_6f0

    .line 851
    .end local v5  # "glyphLayout":Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;
    :cond_90
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .end local v3  # "i":I
    :cond_93
    goto :goto_c6

    .line 874
    :catch_94
    move-exception v0

    move-object v3, v0

    .line 875
    .local v3, "ex":Ljava/lang/IllegalStateException;
    :try_start_96
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_c7

    .line 866
    .end local v3  # "ex":Ljava/lang/IllegalStateException;
    :catch_9a
    move-exception v0

    move-object v3, v0

    .line 867
    .local v3, "ex":Ljava/lang/NullPointerException;
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_9f
    .catchall {:try_start_96 .. :try_end_9f} :catchall_6f0

    .line 870
    :try_start_9f
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setUpdateRegions(Z)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_be} :catch_bf
    .catchall {:try_start_9f .. :try_end_be} :catchall_6f0

    .line 873
    goto :goto_c6

    .line 871
    :catch_bf
    move-exception v0

    goto :goto_c6

    .line 864
    .end local v3  # "ex":Ljava/lang/NullPointerException;
    :catch_c1
    move-exception v0

    move-object v3, v0

    .line 865
    .local v3, "ex":Ljava/lang/IndexOutOfBoundsException;
    :try_start_c3
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 876
    .end local v3  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_c6
    nop

    .line 877
    :goto_c7
    monitor-exit p0
    :try_end_c8
    .catchall {:try_start_c3 .. :try_end_c8} :catchall_6f0

    .line 879
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShY()I

    move-result v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShY()I

    move-result v5

    sub-int/2addr v3, v5

    int-to-double v5, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v1, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v7

    invoke-virtual {v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShX()I

    move-result v3

    neg-int v3, v3

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v1, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShX()I

    move-result v7

    add-int/2addr v3, v7

    int-to-double v7, v3

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    const-wide v7, 0x4066800000000000L  # 180.0

    mul-double v5, v5, v7

    const-wide v9, 0x400921fb54442d18L  # Math.PI

    div-double/2addr v5, v9

    double-to-float v3, v5

    iput v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fAngle:F

    .line 881
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShY()I

    move-result v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v2

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShY()I

    move-result v5

    sub-int/2addr v3, v5

    int-to-double v5, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v1, v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v11

    invoke-virtual {v3, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShX()I

    move-result v3

    neg-int v3, v3

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v2

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v1, v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShX()I

    move-result v11

    add-int/2addr v3, v11

    int-to-double v11, v3

    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    mul-double v5, v5, v7

    div-double/2addr v5, v9

    double-to-float v3, v5

    iput v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fAngle_Low:F

    .line 883
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 884
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->drawMatrix4:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 885
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 888
    .local v3, "lPointsAngle":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :try_start_1d9
    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 889
    .local v5, "fromProvinceID":I
    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 891
    .local v6, "toProvinceID":I
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShX()I

    move-result v7

    .line 892
    .local v7, "tX":I
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShX()I

    move-result v8

    .line 894
    .local v8, "tX2":I
    sub-int v9, v8, v7

    int-to-float v9, v9

    const v10, 0x3e19999a  # 0.15f

    mul-float v9, v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v9, v9

    if-le v7, v8, :cond_22e

    const/4 v12, -0x1

    goto :goto_22f

    :cond_22e
    const/4 v12, 0x1

    :goto_22f
    mul-int v9, v9, v12

    add-int/2addr v9, v7

    .line 895
    .local v9, "extra10X":I
    sub-int v12, v8, v7

    int-to-float v12, v12

    mul-float v12, v12, v10

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    float-to-int v12, v12

    if-le v8, v7, :cond_240

    const/4 v13, -0x1

    goto :goto_241

    :cond_240
    const/4 v13, 0x1

    :goto_241
    mul-int v12, v12, v13

    add-int/2addr v12, v8

    .line 897
    .local v12, "extra10X2":I
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v13, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShY()I

    move-result v13

    .line 898
    .local v13, "tY":I
    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v14, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShY()I

    move-result v14

    .line 900
    .local v14, "tY2":I
    sub-int v15, v14, v13

    int-to-float v15, v15

    mul-float v15, v15, v10

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-int v15, v15

    if-le v13, v14, :cond_267

    const/16 v16, -0x1

    goto :goto_269

    :cond_267
    const/16 v16, 0x1

    :goto_269
    mul-int v15, v15, v16

    add-int/2addr v15, v13

    .line 901
    .local v15, "extra10Y":I
    sub-int v11, v14, v13

    int-to-float v11, v11

    mul-float v11, v11, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v10, v10

    if-le v14, v13, :cond_27a

    const/4 v11, -0x1

    goto :goto_27b

    :cond_27a
    const/4 v11, 0x1

    :goto_27b
    mul-int v10, v10, v11

    add-int/2addr v10, v14

    .line 903
    .local v10, "extra10Y2":I
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v11, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivNameLength()I

    move-result v2

    const/4 v11, 0x3

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    .line 904
    .local v2, "iPrecision":I
    new-array v11, v2, [Lcom/badlogic/gdx/math/Vector2;

    .line 906
    .local v11, "vPoints":[Lcom/badlogic/gdx/math/Vector2;
    const/4 v4, 0x5

    new-array v4, v4, [Lcom/badlogic/gdx/math/Vector2;

    .line 907
    .local v4, "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    move/from16 v18, v6

    .end local v6  # "toProvinceID":I
    .local v18, "toProvinceID":I
    new-instance v6, Lcom/badlogic/gdx/math/Vector2;

    move/from16 v19, v7

    .end local v7  # "tX":I
    .local v19, "tX":I
    int-to-float v7, v9

    move/from16 v20, v8

    .end local v8  # "tX2":I
    .local v20, "tX2":I
    int-to-float v8, v15

    invoke-direct {v6, v7, v8}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v7, 0x0

    aput-object v6, v4, v7

    .line 908
    new-instance v6, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v7, v9

    int-to-float v8, v15

    invoke-direct {v6, v7, v8}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v7, 0x1

    aput-object v6, v4, v7

    .line 909
    new-instance v6, Lcom/badlogic/gdx/math/Vector2;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAveragePointPosX:I

    int-to-float v7, v7

    iget v8, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAveragePointPosY:I

    int-to-float v8, v8

    invoke-direct {v6, v7, v8}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v7, 0x2

    aput-object v6, v4, v7

    .line 910
    new-instance v6, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v8, v12

    int-to-float v7, v10

    invoke-direct {v6, v8, v7}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v7, 0x3

    aput-object v6, v4, v7

    .line 911
    new-instance v7, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v8, v12

    int-to-float v6, v10

    invoke-direct {v7, v8, v6}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v6, 0x4

    aput-object v7, v4, v6

    .line 913
    new-instance v6, Lcom/badlogic/gdx/math/CatmullRomSpline;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Lcom/badlogic/gdx/math/CatmullRomSpline;-><init>([Lcom/badlogic/gdx/math/Vector;Z)V

    .line 915
    .local v6, "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2e1
    if-ge v7, v2, :cond_301

    .line 916
    new-instance v17, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct/range {v17 .. v17}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    aput-object v17, v11, v7

    .line 917
    aget-object v8, v11, v7

    move-object/from16 v21, v4

    .end local v4  # "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    .local v21, "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    int-to-float v4, v7

    move/from16 v22, v9

    .end local v9  # "extra10X":I
    .local v22, "extra10X":I
    int-to-float v9, v2

    const/high16 v17, 0x3f800000  # 1.0f

    sub-float v9, v9, v17

    div-float/2addr v4, v9

    invoke-virtual {v6, v8, v4}, Lcom/badlogic/gdx/math/CatmullRomSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    .line 915
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, v21

    move/from16 v9, v22

    goto :goto_2e1

    .end local v21  # "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    .end local v22  # "extra10X":I
    .restart local v4  # "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    .restart local v9  # "extra10X":I
    :cond_301
    move-object/from16 v21, v4

    move/from16 v22, v9

    .line 920
    .end local v4  # "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    .end local v7  # "i":I
    .end local v9  # "extra10X":I
    .restart local v21  # "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    .restart local v22  # "extra10X":I
    const/4 v4, 0x0

    .line 922
    .local v4, "tempPrecissionWidth":F
    const/4 v7, 0x0

    .restart local v7  # "i":I
    :goto_307
    add-int/lit8 v8, v2, -0x1

    if-ge v7, v8, :cond_333

    .line 923
    aget-object v8, v11, v7

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v8, v8

    aget-object v9, v11, v7

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v9, v9

    add-int/lit8 v23, v7, 0x1

    move-object/from16 v24, v6

    .end local v6  # "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    .local v24, "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    aget-object v6, v11, v23

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v6, v6

    add-int/lit8 v23, v7, 0x1

    move/from16 v25, v10

    .end local v10  # "extra10Y2":I
    .local v25, "extra10Y2":I
    aget-object v10, v11, v23

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v10, v10

    invoke-static {v8, v9, v6, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth2(IIII)F

    move-result v6

    add-float/2addr v4, v6

    .line 922
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v6, v24

    move/from16 v10, v25

    goto :goto_307

    .end local v24  # "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    .end local v25  # "extra10Y2":I
    .restart local v6  # "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    .restart local v10  # "extra10Y2":I
    :cond_333
    move-object/from16 v24, v6

    move/from16 v25, v10

    .line 926
    .end local v6  # "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    .end local v7  # "i":I
    .end local v10  # "extra10Y2":I
    .restart local v24  # "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    .restart local v25  # "extra10Y2":I
    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    const/4 v8, 0x0

    aget-object v9, v11, v8

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v9, v9

    aget-object v10, v11, v8

    iget v8, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v8, v8

    invoke-direct {v7, v9, v8}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_34c
    .catch Ljava/lang/Exception; {:try_start_1d9 .. :try_end_34c} :catch_6c6

    .line 928
    const/4 v6, 0x0

    .line 931
    .local v6, "acceptableWidth":F
    :try_start_34d
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivNameLength()I

    move-result v7
    :try_end_361
    .catch Ljava/lang/Exception; {:try_start_34d .. :try_end_361} :catch_367

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float v6, v4, v7

    .line 934
    goto :goto_36c

    .line 932
    :catch_367
    move-exception v0

    move-object v7, v0

    .line 933
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_369
    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 936
    .end local v7  # "ex":Ljava/lang/Exception;
    :goto_36c
    const/4 v7, 0x0

    .line 938
    .local v7, "currentPointsWidth":F
    const/4 v8, 0x1

    .local v8, "i":I
    const/4 v9, 0x0

    .local v9, "startPrecision":I
    :goto_36f
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    move/from16 v23, v4

    .end local v4  # "tempPrecissionWidth":F
    .local v23, "tempPrecissionWidth":F
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v4

    invoke-virtual {v10, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivNameLength()I

    move-result v4

    if-ge v8, v4, :cond_3e8

    .line 939
    :goto_387
    add-int/lit8 v4, v2, -0x1

    if-ge v9, v4, :cond_3d7

    .line 940
    aget-object v4, v11, v9

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v4, v4

    aget-object v10, v11, v9

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v10, v10

    add-int/lit8 v26, v9, 0x1

    move/from16 v27, v2

    .end local v2  # "iPrecision":I
    .local v27, "iPrecision":I
    aget-object v2, v11, v26

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v2, v2

    add-int/lit8 v26, v9, 0x1

    move/from16 v28, v12

    .end local v12  # "extra10X2":I
    .local v28, "extra10X2":I
    aget-object v12, v11, v26

    iget v12, v12, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v12, v12

    invoke-static {v4, v10, v2, v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth2(IIII)F

    move-result v2

    .line 942
    .local v2, "tempPrecisionWidth":F
    add-float v4, v7, v2

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_3cd

    .line 943
    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    aget-object v12, v11, v9

    iget v12, v12, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v12, v12

    move/from16 v26, v13

    .end local v13  # "tY":I
    .local v26, "tY":I
    aget-object v13, v11, v9

    iget v13, v13, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v13, v13

    invoke-direct {v10, v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 945
    add-float v4, v7, v2

    sub-float v4, v6, v4

    .line 946
    .end local v7  # "currentPointsWidth":F
    .local v4, "currentPointsWidth":F
    move v7, v4

    goto :goto_3dd

    .line 948
    .end local v4  # "currentPointsWidth":F
    .end local v26  # "tY":I
    .restart local v7  # "currentPointsWidth":F
    .restart local v13  # "tY":I
    :cond_3cd
    move/from16 v26, v13

    .end local v13  # "tY":I
    .restart local v26  # "tY":I
    add-float/2addr v7, v2

    .line 939
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v27

    move/from16 v12, v28

    goto :goto_387

    .end local v26  # "tY":I
    .end local v27  # "iPrecision":I
    .end local v28  # "extra10X2":I
    .local v2, "iPrecision":I
    .restart local v12  # "extra10X2":I
    .restart local v13  # "tY":I
    :cond_3d7
    move/from16 v27, v2

    move/from16 v28, v12

    move/from16 v26, v13

    .line 938
    .end local v2  # "iPrecision":I
    .end local v12  # "extra10X2":I
    .end local v13  # "tY":I
    .restart local v26  # "tY":I
    .restart local v27  # "iPrecision":I
    .restart local v28  # "extra10X2":I
    :goto_3dd
    add-int/lit8 v8, v8, 0x1

    move/from16 v4, v23

    move/from16 v13, v26

    move/from16 v2, v27

    move/from16 v12, v28

    goto :goto_36f

    .end local v26  # "tY":I
    .end local v27  # "iPrecision":I
    .end local v28  # "extra10X2":I
    .restart local v2  # "iPrecision":I
    .restart local v12  # "extra10X2":I
    .restart local v13  # "tY":I
    :cond_3e8
    move/from16 v27, v2

    move/from16 v28, v12

    move/from16 v26, v13

    .line 953
    .end local v2  # "iPrecision":I
    .end local v8  # "i":I
    .end local v9  # "startPrecision":I
    .end local v12  # "extra10X2":I
    .end local v13  # "tY":I
    .restart local v26  # "tY":I
    .restart local v27  # "iPrecision":I
    .restart local v28  # "extra10X2":I
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    array-length v8, v11

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    aget-object v8, v11, v8

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v8, v8

    array-length v10, v11

    sub-int/2addr v10, v9

    aget-object v9, v11, v10

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v9, v9

    invoke-direct {v4, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_407
    .catch Ljava/lang/Exception; {:try_start_369 .. :try_end_407} :catch_6c6

    .line 956
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_408
    :try_start_408
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v8

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivNameLength()I

    move-result v4
    :try_end_41c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_408 .. :try_end_41c} :catch_668
    .catch Ljava/lang/NullPointerException; {:try_start_408 .. :try_end_41c} :catch_639
    .catch Ljava/lang/IllegalStateException; {:try_start_408 .. :try_end_41c} :catch_62f
    .catch Ljava/lang/Exception; {:try_start_408 .. :try_end_41c} :catch_6c6

    if-ge v2, v4, :cond_62e

    .line 957
    const/4 v4, 0x0

    .line 960
    .local v4, "tempPointsAngle":F
    :try_start_41f
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v9, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivNameLength()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    if-ge v2, v8, :cond_471

    .line 961
    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v8

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v9

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    add-int/lit8 v12, v2, 0x1

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v10

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    add-int/lit8 v13, v2, 0x1

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v12

    invoke-static {v8, v9, v10, v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLinesAngle(IIII)F

    move-result v8

    move v4, v8

    goto :goto_4ae

    .line 965
    :cond_471
    add-int/lit8 v8, v2, -0x1

    if-ltz v8, :cond_4ae

    .line 966
    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    add-int/lit8 v9, v2, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v8

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    add-int/lit8 v10, v2, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v9

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v10

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v12

    invoke-static {v8, v9, v10, v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLinesAngle(IIII)F

    move-result v8

    move v4, v8

    .line 970
    :cond_4ae
    :goto_4ae
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4b5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_41f .. :try_end_4b5} :catch_584
    .catch Ljava/lang/NullPointerException; {:try_start_41f .. :try_end_4b5} :catch_4b7
    .catch Ljava/lang/IllegalStateException; {:try_start_41f .. :try_end_4b5} :catch_62f
    .catch Ljava/lang/Exception; {:try_start_41f .. :try_end_4b5} :catch_6c6

    .line 1011
    goto/16 :goto_62a

    .line 987
    :catch_4b7
    move-exception v0

    move-object v8, v0

    .line 990
    .local v8, "ex":Ljava/lang/NullPointerException;
    if-nez v2, :cond_50f

    .line 992
    :try_start_4bb
    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v9

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v10

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    add-int/lit8 v13, v2, 0x1

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v12

    iget-object v13, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;
    :try_end_4e3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4bb .. :try_end_4e3} :catch_500
    .catch Ljava/lang/NullPointerException; {:try_start_4bb .. :try_end_4e3} :catch_639
    .catch Ljava/lang/IllegalStateException; {:try_start_4bb .. :try_end_4e3} :catch_62f
    .catch Ljava/lang/Exception; {:try_start_4bb .. :try_end_4e3} :catch_6c6

    move/from16 v29, v4

    .end local v4  # "tempPointsAngle":F
    .local v29, "tempPointsAngle":F
    add-int/lit8 v4, v2, 0x1

    :try_start_4e7
    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v4

    invoke-static {v9, v10, v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLinesAngle(IIII)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4fc
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4e7 .. :try_end_4fc} :catch_4fd
    .catch Ljava/lang/NullPointerException; {:try_start_4e7 .. :try_end_4fc} :catch_639
    .catch Ljava/lang/IllegalStateException; {:try_start_4e7 .. :try_end_4fc} :catch_62f
    .catch Ljava/lang/Exception; {:try_start_4e7 .. :try_end_4fc} :catch_6c6

    .line 995
    goto :goto_55c

    .line 993
    :catch_4fd
    move-exception v0

    move-object v4, v0

    goto :goto_504

    .end local v29  # "tempPointsAngle":F
    .restart local v4  # "tempPointsAngle":F
    :catch_500
    move-exception v0

    move/from16 v29, v4

    move-object v4, v0

    .line 994
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v29  # "tempPointsAngle":F
    :goto_504
    :try_start_504
    iget v9, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fAngle:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_50d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_504 .. :try_end_50d} :catch_668
    .catch Ljava/lang/NullPointerException; {:try_start_504 .. :try_end_50d} :catch_639
    .catch Ljava/lang/IllegalStateException; {:try_start_504 .. :try_end_50d} :catch_62f
    .catch Ljava/lang/Exception; {:try_start_504 .. :try_end_50d} :catch_6c6

    .line 995
    nop

    .end local v4  # "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_55c

    .line 998
    .end local v29  # "tempPointsAngle":F
    .local v4, "tempPointsAngle":F
    :cond_50f
    move/from16 v29, v4

    .end local v4  # "tempPointsAngle":F
    .restart local v29  # "tempPointsAngle":F
    :try_start_511
    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    add-int/lit8 v9, v2, -0x1

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v4

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    add-int/lit8 v10, v2, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v9

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v10

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v12

    invoke-static {v4, v9, v10, v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLinesAngle(IIII)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_550
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_511 .. :try_end_550} :catch_551
    .catch Ljava/lang/NullPointerException; {:try_start_511 .. :try_end_550} :catch_639
    .catch Ljava/lang/IllegalStateException; {:try_start_511 .. :try_end_550} :catch_62f
    .catch Ljava/lang/Exception; {:try_start_511 .. :try_end_550} :catch_6c6

    .line 1001
    goto :goto_55c

    .line 999
    :catch_551
    move-exception v0

    move-object v4, v0

    .line 1000
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_553
    iget v9, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fAngle:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_55c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_553 .. :try_end_55c} :catch_668
    .catch Ljava/lang/NullPointerException; {:try_start_553 .. :try_end_55c} :catch_639
    .catch Ljava/lang/IllegalStateException; {:try_start_553 .. :try_end_55c} :catch_62f
    .catch Ljava/lang/Exception; {:try_start_553 .. :try_end_55c} :catch_6c6

    .line 1005
    .end local v4  # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_55c
    :try_start_55c
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v9

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setUpdateRegions(Z)V
    :try_end_57d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_55c .. :try_end_57d} :catch_581
    .catch Ljava/lang/NullPointerException; {:try_start_55c .. :try_end_57d} :catch_57e
    .catch Ljava/lang/IllegalStateException; {:try_start_55c .. :try_end_57d} :catch_62f
    .catch Ljava/lang/Exception; {:try_start_55c .. :try_end_57d} :catch_6c6

    goto :goto_582

    .line 1008
    :catch_57e
    move-exception v0

    goto/16 :goto_62a

    .line 1006
    :catch_581
    move-exception v0

    .line 1010
    :goto_582
    goto/16 :goto_62a

    .line 971
    .end local v8  # "ex":Ljava/lang/NullPointerException;
    .end local v29  # "tempPointsAngle":F
    .local v4, "tempPointsAngle":F
    :catch_584
    move-exception v0

    move-object v8, v0

    .line 974
    .local v8, "ex":Ljava/lang/IndexOutOfBoundsException;
    if-nez v2, :cond_5dc

    .line 976
    :try_start_588
    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v9

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v10

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    add-int/lit8 v13, v2, 0x1

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v12

    iget-object v13, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;
    :try_end_5b0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_588 .. :try_end_5b0} :catch_5cd
    .catch Ljava/lang/NullPointerException; {:try_start_588 .. :try_end_5b0} :catch_639
    .catch Ljava/lang/IllegalStateException; {:try_start_588 .. :try_end_5b0} :catch_62f
    .catch Ljava/lang/Exception; {:try_start_588 .. :try_end_5b0} :catch_6c6

    move/from16 v29, v4

    .end local v4  # "tempPointsAngle":F
    .restart local v29  # "tempPointsAngle":F
    add-int/lit8 v4, v2, 0x1

    :try_start_5b4
    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v4

    invoke-static {v9, v10, v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLinesAngle(IIII)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5c9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5b4 .. :try_end_5c9} :catch_5ca
    .catch Ljava/lang/NullPointerException; {:try_start_5b4 .. :try_end_5c9} :catch_639
    .catch Ljava/lang/IllegalStateException; {:try_start_5b4 .. :try_end_5c9} :catch_62f
    .catch Ljava/lang/Exception; {:try_start_5b4 .. :try_end_5c9} :catch_6c6

    .line 979
    goto :goto_629

    .line 977
    :catch_5ca
    move-exception v0

    move-object v4, v0

    goto :goto_5d1

    .end local v29  # "tempPointsAngle":F
    .restart local v4  # "tempPointsAngle":F
    :catch_5cd
    move-exception v0

    move/from16 v29, v4

    move-object v4, v0

    .line 978
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v29  # "tempPointsAngle":F
    :goto_5d1
    :try_start_5d1
    iget v9, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fAngle:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5da
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5d1 .. :try_end_5da} :catch_668
    .catch Ljava/lang/NullPointerException; {:try_start_5d1 .. :try_end_5da} :catch_639
    .catch Ljava/lang/IllegalStateException; {:try_start_5d1 .. :try_end_5da} :catch_62f
    .catch Ljava/lang/Exception; {:try_start_5d1 .. :try_end_5da} :catch_6c6

    .line 979
    nop

    .end local v4  # "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_629

    .line 982
    .end local v29  # "tempPointsAngle":F
    .local v4, "tempPointsAngle":F
    :cond_5dc
    move/from16 v29, v4

    .end local v4  # "tempPointsAngle":F
    .restart local v29  # "tempPointsAngle":F
    :try_start_5de
    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    add-int/lit8 v9, v2, -0x1

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v4

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    add-int/lit8 v10, v2, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v9

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v10

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v12

    invoke-static {v4, v9, v10, v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLinesAngle(IIII)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_61d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5de .. :try_end_61d} :catch_61e
    .catch Ljava/lang/NullPointerException; {:try_start_5de .. :try_end_61d} :catch_639
    .catch Ljava/lang/IllegalStateException; {:try_start_5de .. :try_end_61d} :catch_62f
    .catch Ljava/lang/Exception; {:try_start_5de .. :try_end_61d} :catch_6c6

    .line 985
    goto :goto_629

    .line 983
    :catch_61e
    move-exception v0

    move-object v4, v0

    .line 984
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_620
    iget v9, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fAngle:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_629
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_620 .. :try_end_629} :catch_668
    .catch Ljava/lang/NullPointerException; {:try_start_620 .. :try_end_629} :catch_639
    .catch Ljava/lang/IllegalStateException; {:try_start_620 .. :try_end_629} :catch_62f
    .catch Ljava/lang/Exception; {:try_start_620 .. :try_end_629} :catch_6c6

    .line 1011
    .end local v4  # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v8  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_629
    nop

    .line 956
    .end local v29  # "tempPointsAngle":F
    :goto_62a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_408

    .end local v2  # "i":I
    :cond_62e
    goto :goto_671

    .line 1029
    :catch_62f
    move-exception v0

    move-object v2, v0

    .line 1030
    .local v2, "ex":Ljava/lang/IllegalStateException;
    :try_start_631
    sget-boolean v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGs:Z

    if-eqz v4, :cond_672

    .line 1031
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_672

    .line 1017
    .end local v2  # "ex":Ljava/lang/IllegalStateException;
    :catch_639
    move-exception v0

    move-object v2, v0

    .line 1018
    .local v2, "ex":Ljava/lang/NullPointerException;
    sget-boolean v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGs:Z

    if-eqz v4, :cond_642

    .line 1019
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_642
    .catch Ljava/lang/Exception; {:try_start_631 .. :try_end_642} :catch_6c6

    .line 1023
    :cond_642
    :try_start_642
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v8

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setUpdateRegions(Z)V
    :try_end_663
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_642 .. :try_end_663} :catch_666
    .catch Ljava/lang/NullPointerException; {:try_start_642 .. :try_end_663} :catch_664
    .catch Ljava/lang/Exception; {:try_start_642 .. :try_end_663} :catch_6c6

    goto :goto_667

    .line 1026
    :catch_664
    move-exception v0

    goto :goto_671

    .line 1024
    :catch_666
    move-exception v0

    .line 1028
    :goto_667
    goto :goto_671

    .line 1013
    .end local v2  # "ex":Ljava/lang/NullPointerException;
    :catch_668
    move-exception v0

    move-object v2, v0

    .line 1014
    .local v2, "ex":Ljava/lang/IndexOutOfBoundsException;
    :try_start_66a
    sget-boolean v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGs:Z

    if-eqz v4, :cond_671

    .line 1015
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1033
    .end local v2  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_671
    :goto_671
    nop

    .line 1035
    :cond_672
    :goto_672
    const/4 v2, 0x0

    .line 1037
    .local v2, "tempAngle":F
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "iSize":I
    :goto_678
    if-ge v4, v8, :cond_688

    .line 1038
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    add-float/2addr v2, v9

    .line 1037
    add-int/lit8 v4, v4, 0x1

    goto :goto_678

    .line 1041
    .end local v4  # "i":I
    .end local v8  # "iSize":I
    :cond_688
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 1043
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getCharMaxWidth()I

    move-result v8

    const/4 v9, 0x2

    div-int/2addr v8, v9

    int-to-float v8, v8

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x42b40000  # 90.0f

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    sub-float v9, v10, v9

    div-float/2addr v9, v10

    const/high16 v12, 0x3f800000  # 1.0f

    sub-float v9, v12, v9

    mul-float v8, v8, v9

    float-to-int v8, v8

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getCharMaxHeight()I

    move-result v9

    const/4 v12, 0x2

    div-int/2addr v9, v12

    int-to-float v9, v9

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-static {v12, v10}, Ljava/lang/Math;->min(FF)F

    move-result v12

    sub-float v12, v10, v12

    div-float/2addr v12, v10

    mul-float v9, v9, v12

    float-to-int v9, v9

    invoke-direct {v4, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    iput-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->centerCharXY:Lage/of/civilizations2/jakowski/lukasz/Point_XY2;
    :try_end_6c5
    .catch Ljava/lang/Exception; {:try_start_66a .. :try_end_6c5} :catch_6c6

    .line 1046
    .end local v2  # "tempAngle":F
    .end local v5  # "fromProvinceID":I
    .end local v6  # "acceptableWidth":F
    .end local v7  # "currentPointsWidth":F
    .end local v11  # "vPoints":[Lcom/badlogic/gdx/math/Vector2;
    .end local v14  # "tY2":I
    .end local v15  # "extra10Y":I
    .end local v18  # "toProvinceID":I
    .end local v19  # "tX":I
    .end local v20  # "tX2":I
    .end local v21  # "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    .end local v22  # "extra10X":I
    .end local v23  # "tempPrecissionWidth":F
    .end local v24  # "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    .end local v25  # "extra10Y2":I
    .end local v26  # "tY":I
    .end local v27  # "iPrecision":I
    .end local v28  # "extra10X2":I
    goto :goto_6cb

    .line 1044
    :catch_6c6
    move-exception v0

    move-object v2, v0

    .line 1045
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1048
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_6cb
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "iSize":I
    :goto_6d0
    if-ge v2, v4, :cond_6ef

    .line 1049
    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->drawMatrix4:Ljava/util/List;

    new-instance v6, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v6}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/Renderer;->textRotatedVector3:Lcom/badlogic/gdx/math/Vector3;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1048
    add-int/lit8 v2, v2, 0x1

    goto :goto_6d0

    .line 1051
    .end local v2  # "i":I
    .end local v4  # "iSize":I
    :cond_6ef
    return-void

    .line 877
    .end local v3  # "lPointsAngle":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :catchall_6f0
    move-exception v0

    move-object v2, v0

    :try_start_6f2
    monitor-exit p0
    :try_end_6f3
    .catchall {:try_start_6f2 .. :try_end_6f3} :catchall_6f0

    goto :goto_6f5

    :goto_6f4
    throw v2

    :goto_6f5
    goto :goto_6f4
.end method

.method public final buildRegionPath()Z
    .registers 25

    move-object/from16 v1, p0

    .line 256
    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->drawName:Z

    .line 258
    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->buildMinMaxBounds()V

    .line 260
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_12

    .line 261
    return v2

    .line 262
    :cond_12
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v4, :cond_807

    .line 263
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget-boolean v3, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->DRAW_CIVILIZATIONS_NAMES_OVER_PROVINCES_IN_GAME:Z

    if-nez v3, :cond_21

    .line 264
    return v2

    .line 267
    :cond_21
    const/4 v3, -0x1

    .line 268
    .local v3, "startID":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_23
    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iProvincesSize:I

    if-ge v5, v6, :cond_3a

    .line 269
    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->triedToUse:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_39

    .line 270
    nop

    .line 268
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 273
    :cond_39
    move v3, v5

    .line 278
    .end local v5  # "i":I
    :cond_3a
    const/4 v5, -0x1

    if-ne v3, v5, :cond_3e

    .line 279
    return v2

    .line 282
    :cond_3e
    move v5, v3

    .line 283
    .local v5, "fromProvinceID_LEFTRIGHT":I
    move v6, v3

    .line 285
    .local v6, "toProvinceID_LEFTRIGHT":I
    move v7, v3

    .line 286
    .local v7, "fromProvinceID_RIGHTLEFT":I
    move v8, v3

    .line 288
    .local v8, "toProvinceID_RIGHTLEFT":I
    move v9, v3

    .line 289
    .local v9, "fromProvinceID_BOTTOM":I
    move v10, v3

    .line 291
    .local v10, "toProvinceID_TOP":I
    move v11, v3

    .line 292
    .local v11, "fromProvinceID_LR":I
    move v12, v3

    .line 294
    .local v12, "toProvinceID_LR":I
    iget v13, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinX:I

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v15, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeX()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-double v13, v13

    move/from16 v16, v3

    .end local v3  # "startID":I
    .local v16, "startID":I
    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    iget v15, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxY:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeY()I

    move-result v2

    sub-int/2addr v15, v2

    int-to-double v2, v15

    move v4, v6

    move v15, v7

    const-wide/high16 v6, 0x4000000000000000L  # 2.0

    .end local v6  # "toProvinceID_LEFTRIGHT":I
    .end local v7  # "fromProvinceID_RIGHTLEFT":I
    .local v4, "toProvinceID_LEFTRIGHT":I
    .local v15, "fromProvinceID_RIGHTLEFT":I
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v13, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 295
    .local v2, "leftBottomDistance":I
    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxX:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeX()I

    move-result v6

    sub-int/2addr v3, v6

    int-to-double v6, v3

    const-wide/high16 v13, 0x4000000000000000L  # 2.0

    invoke-static {v6, v7, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinY:I

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v14, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeY()I

    move-result v13

    sub-int/2addr v3, v13

    int-to-double v13, v3

    move/from16 v19, v2

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    .end local v2  # "leftBottomDistance":I
    .local v19, "leftBottomDistance":I
    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    add-double/2addr v6, v13

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 297
    .local v2, "rightTopDistance":I
    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxX:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeX()I

    move-result v6

    sub-int/2addr v3, v6

    int-to-double v6, v3

    const-wide/high16 v13, 0x4000000000000000L  # 2.0

    invoke-static {v6, v7, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxY:I

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v14, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeY()I

    move-result v13

    sub-int/2addr v3, v13

    int-to-double v13, v3

    move/from16 v20, v2

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    .end local v2  # "rightTopDistance":I
    .local v20, "rightTopDistance":I
    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    add-double/2addr v6, v13

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 298
    .local v2, "rightBottomDistance":I
    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinX:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeX()I

    move-result v6

    sub-int/2addr v3, v6

    int-to-double v6, v3

    const-wide/high16 v13, 0x4000000000000000L  # 2.0

    invoke-static {v6, v7, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinY:I

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v14, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeY()I

    move-result v13

    sub-int/2addr v3, v13

    int-to-double v13, v3

    move/from16 v21, v2

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    .end local v2  # "rightBottomDistance":I
    .local v21, "rightBottomDistance":I
    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 300
    .local v2, "leftTopDistance":I
    add-int/lit8 v3, v16, 0x1

    move v6, v3

    move v7, v5

    move v13, v11

    move v14, v12

    move/from16 v3, v20

    move v5, v2

    move v11, v9

    move v12, v10

    move v9, v15

    move/from16 v2, v19

    move v10, v8

    move v8, v4

    move/from16 v4, v21

    .end local v15  # "fromProvinceID_RIGHTLEFT":I
    .end local v19  # "leftBottomDistance":I
    .end local v20  # "rightTopDistance":I
    .end local v21  # "rightBottomDistance":I
    .local v2, "leftBottomDistance":I
    .local v3, "rightTopDistance":I
    .local v4, "rightBottomDistance":I
    .local v5, "leftTopDistance":I
    .local v6, "i":I
    .local v7, "fromProvinceID_LEFTRIGHT":I
    .local v8, "toProvinceID_LEFTRIGHT":I
    .local v9, "fromProvinceID_RIGHTLEFT":I
    .local v10, "toProvinceID_RIGHTLEFT":I
    .local v11, "fromProvinceID_BOTTOM":I
    .local v12, "toProvinceID_TOP":I
    .local v13, "fromProvinceID_LR":I
    .local v14, "toProvinceID_LR":I
    :goto_17a
    iget v15, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iProvincesSize:I

    if-ge v6, v15, :cond_53b

    .line 301
    iget-object v15, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->triedToUse:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_18e

    .line 302
    goto/16 :goto_537

    .line 305
    :cond_18e
    iget v15, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinX:I

    move/from16 v17, v9

    .end local v9  # "fromProvinceID_RIGHTLEFT":I
    .local v17, "fromProvinceID_RIGHTLEFT":I
    iget v9, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxY:I

    move/from16 v18, v10

    .end local v10  # "toProvinceID_RIGHTLEFT":I
    .local v18, "toProvinceID_RIGHTLEFT":I
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    move/from16 v19, v7

    .end local v7  # "fromProvinceID_LEFTRIGHT":I
    .local v19, "fromProvinceID_LEFTRIGHT":I
    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v10, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeX()I

    move-result v7

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    move/from16 v20, v8

    .end local v8  # "toProvinceID_LEFTRIGHT":I
    .local v20, "toProvinceID_LEFTRIGHT":I
    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v10, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPX()I

    move-result v8

    add-int/2addr v7, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeY()I

    move-result v8

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    move/from16 v21, v14

    .end local v14  # "toProvinceID_LR":I
    .local v21, "toProvinceID_LR":I
    iget-object v14, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v10, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPY()I

    move-result v10

    add-int/2addr v8, v10

    invoke-static {v15, v9, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(IIII)I

    move-result v7

    .line 307
    .local v7, "tempDistance":I
    if-ge v7, v2, :cond_200

    .line 308
    move v2, v7

    .line 309
    move v8, v6

    move/from16 v19, v8

    .line 312
    :cond_200
    iget v8, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxX:I

    iget v9, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinY:I

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v14, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v10, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeX()I

    move-result v10

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v15, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPX()I

    move-result v14

    add-int/2addr v10, v14

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v15, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeY()I

    move-result v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    move/from16 v22, v2

    .end local v2  # "leftBottomDistance":I
    .local v22, "leftBottomDistance":I
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v15, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPY()I

    move-result v2

    add-int/2addr v14, v2

    invoke-static {v8, v9, v10, v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(IIII)I

    move-result v2

    .line 314
    .end local v7  # "tempDistance":I
    .local v2, "tempDistance":I
    if-ge v2, v3, :cond_269

    .line 315
    move v3, v2

    .line 316
    move v8, v6

    .end local v20  # "toProvinceID_LEFTRIGHT":I
    .restart local v8  # "toProvinceID_LEFTRIGHT":I
    goto :goto_26b

    .line 314
    .end local v8  # "toProvinceID_LEFTRIGHT":I
    .restart local v20  # "toProvinceID_LEFTRIGHT":I
    :cond_269
    move/from16 v8, v20

    .line 320
    .end local v20  # "toProvinceID_LEFTRIGHT":I
    .restart local v8  # "toProvinceID_LEFTRIGHT":I
    :goto_26b
    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxX:I

    iget v9, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxY:I

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v14, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v10, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeX()I

    move-result v10

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v15, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPX()I

    move-result v14

    add-int/2addr v10, v14

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v15, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeY()I

    move-result v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    move/from16 v23, v2

    .end local v2  # "tempDistance":I
    .local v23, "tempDistance":I
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v15, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPY()I

    move-result v2

    add-int/2addr v14, v2

    invoke-static {v7, v9, v10, v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(IIII)I

    move-result v2

    .line 322
    .end local v23  # "tempDistance":I
    .restart local v2  # "tempDistance":I
    if-ge v2, v4, :cond_2d4

    .line 323
    move v4, v2

    .line 324
    move v9, v6

    .end local v17  # "fromProvinceID_RIGHTLEFT":I
    .restart local v9  # "fromProvinceID_RIGHTLEFT":I
    goto :goto_2d6

    .line 322
    .end local v9  # "fromProvinceID_RIGHTLEFT":I
    .restart local v17  # "fromProvinceID_RIGHTLEFT":I
    :cond_2d4
    move/from16 v9, v17

    .line 327
    .end local v17  # "fromProvinceID_RIGHTLEFT":I
    .restart local v9  # "fromProvinceID_RIGHTLEFT":I
    :goto_2d6
    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinX:I

    iget v10, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinY:I

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v15, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeX()I

    move-result v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    move/from16 v20, v2

    .end local v2  # "tempDistance":I
    .local v20, "tempDistance":I
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v15, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPX()I

    move-result v2

    add-int/2addr v14, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v15, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v2, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeY()I

    move-result v2

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    move/from16 v23, v3

    .end local v3  # "rightTopDistance":I
    .local v23, "rightTopDistance":I
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v15, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v7, v10, v14, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(IIII)I

    move-result v2

    .line 329
    .end local v20  # "tempDistance":I
    .restart local v2  # "tempDistance":I
    if-ge v2, v5, :cond_341

    .line 330
    move v5, v2

    .line 331
    move v10, v6

    .end local v18  # "toProvinceID_RIGHTLEFT":I
    .restart local v10  # "toProvinceID_RIGHTLEFT":I
    goto :goto_343

    .line 329
    .end local v10  # "toProvinceID_RIGHTLEFT":I
    .restart local v18  # "toProvinceID_RIGHTLEFT":I
    :cond_341
    move/from16 v10, v18

    .line 335
    .end local v18  # "toProvinceID_RIGHTLEFT":I
    .restart local v10  # "toProvinceID_RIGHTLEFT":I
    :goto_343
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeY()I

    move-result v3

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v14, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v7, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPY()I

    move-result v7

    add-int/2addr v3, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v14, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v7, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeY()I

    move-result v7

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v15, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPY()I

    move-result v14

    add-int/2addr v7, v14

    if-ge v3, v7, :cond_3a0

    .line 336
    move v11, v6

    .line 339
    :cond_3a0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeY()I

    move-result v3

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v14, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v7, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPY()I

    move-result v7

    add-int/2addr v3, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v14, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v7, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeY()I

    move-result v7

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v15, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPY()I

    move-result v14

    add-int/2addr v7, v14

    if-le v3, v7, :cond_3fd

    .line 340
    move v12, v6

    .line 343
    :cond_3fd
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeX()I

    move-result v3

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v14, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v7, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPX()I

    move-result v7

    add-int/2addr v3, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v14, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v7, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeX()I

    move-result v7

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v15, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPX()I

    move-result v14

    add-int/2addr v7, v14

    if-le v3, v7, :cond_491

    .line 344
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeY()I

    move-result v3

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v14, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v7, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPY()I

    move-result v7

    add-int/2addr v3, v7

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinY:I

    iget v14, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxY:I

    sub-int/2addr v14, v7

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v7, v14

    if-lt v3, v7, :cond_491

    .line 346
    move v13, v6

    .line 351
    :cond_491
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    move/from16 v14, v21

    .end local v21  # "toProvinceID_LR":I
    .restart local v14  # "toProvinceID_LR":I
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeX()I

    move-result v3

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v15, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v7, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPX()I

    move-result v7

    add-int/2addr v3, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v15, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v7, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeX()I

    move-result v7

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    move/from16 v17, v2

    .end local v2  # "tempDistance":I
    .local v17, "tempDistance":I
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v15, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPX()I

    move-result v2

    add-int/2addr v7, v2

    if-ge v3, v7, :cond_531

    .line 352
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeY()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPY()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinY:I

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxY:I

    sub-int/2addr v7, v3

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v3, v7

    if-gt v2, v3, :cond_531

    .line 354
    move v2, v6

    move v14, v2

    move/from16 v7, v19

    move/from16 v2, v22

    move/from16 v3, v23

    .end local v14  # "toProvinceID_LR":I
    .local v2, "toProvinceID_LR":I
    goto :goto_537

    .line 300
    .end local v2  # "toProvinceID_LR":I
    .end local v17  # "tempDistance":I
    .restart local v14  # "toProvinceID_LR":I
    :cond_531
    move/from16 v7, v19

    move/from16 v2, v22

    move/from16 v3, v23

    .end local v19  # "fromProvinceID_LEFTRIGHT":I
    .end local v22  # "leftBottomDistance":I
    .end local v23  # "rightTopDistance":I
    .local v2, "leftBottomDistance":I
    .restart local v3  # "rightTopDistance":I
    .local v7, "fromProvinceID_LEFTRIGHT":I
    :goto_537
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_17a

    :cond_53b
    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v17, v9

    move/from16 v18, v10

    .line 360
    .end local v6  # "i":I
    .end local v7  # "fromProvinceID_LEFTRIGHT":I
    .end local v8  # "toProvinceID_LEFTRIGHT":I
    .end local v9  # "fromProvinceID_RIGHTLEFT":I
    .end local v10  # "toProvinceID_RIGHTLEFT":I
    .local v17, "fromProvinceID_RIGHTLEFT":I
    .restart local v18  # "toProvinceID_RIGHTLEFT":I
    .restart local v19  # "fromProvinceID_LEFTRIGHT":I
    .local v20, "toProvinceID_LEFTRIGHT":I
    nop

    .end local v19  # "fromProvinceID_LEFTRIGHT":I
    .end local v20  # "toProvinceID_LEFTRIGHT":I
    .restart local v7  # "fromProvinceID_LEFTRIGHT":I
    .restart local v8  # "toProvinceID_LEFTRIGHT":I
    invoke-virtual {v1, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(II)I

    move-result v6

    move/from16 v9, v17

    move/from16 v10, v18

    .end local v17  # "fromProvinceID_RIGHTLEFT":I
    .end local v18  # "toProvinceID_RIGHTLEFT":I
    .restart local v9  # "fromProvinceID_RIGHTLEFT":I
    .restart local v10  # "toProvinceID_RIGHTLEFT":I
    invoke-virtual {v1, v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(II)I

    move-result v15

    if-le v6, v15, :cond_5bf

    .line 361
    invoke-virtual {v1, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(II)I

    move-result v6

    invoke-virtual {v1, v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(II)I

    move-result v15

    if-le v6, v15, :cond_58e

    .line 362
    invoke-virtual {v1, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(II)I

    move-result v6

    invoke-virtual {v1, v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(II)I

    move-result v15

    if-le v6, v15, :cond_57a

    .line 363
    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_628

    .line 366
    :cond_57a
    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_628

    .line 370
    :cond_58e
    invoke-virtual {v1, v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(II)I

    move-result v6

    invoke-virtual {v1, v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(II)I

    move-result v15

    if-le v6, v15, :cond_5ac

    .line 371
    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_628

    .line 374
    :cond_5ac
    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_628

    .line 380
    :cond_5bf
    invoke-virtual {v1, v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(II)I

    move-result v6

    invoke-virtual {v1, v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(II)I

    move-result v15

    if-le v6, v15, :cond_5f9

    .line 381
    invoke-virtual {v1, v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(II)I

    move-result v6

    invoke-virtual {v1, v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(II)I

    move-result v15

    if-le v6, v15, :cond_5e6

    .line 382
    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_628

    .line 385
    :cond_5e6
    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_628

    .line 389
    :cond_5f9
    invoke-virtual {v1, v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(II)I

    move-result v6

    invoke-virtual {v1, v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(II)I

    move-result v15

    if-le v6, v15, :cond_616

    .line 390
    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_628

    .line 393
    :cond_616
    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    :goto_628
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v15, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    move/from16 v17, v2

    .end local v2  # "leftBottomDistance":I
    .local v17, "leftBottomDistance":I
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    move/from16 v18, v3

    const/4 v3, 0x0

    .end local v3  # "rightTopDistance":I
    .local v18, "rightTopDistance":I
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v15

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeX()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v15, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    move/from16 v19, v4

    const/4 v4, 0x1

    .end local v4  # "rightBottomDistance":I
    .local v19, "rightBottomDistance":I
    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeX()I

    move-result v3

    if-le v2, v3, :cond_69b

    .line 400
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 401
    .local v2, "tempS":I
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v3, v6, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 406
    .end local v2  # "tempS":I
    :cond_69b
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_7f5

    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_6bb

    move/from16 v20, v5

    move/from16 v21, v7

    move/from16 v22, v8

    goto/16 :goto_7fb

    .line 412
    :cond_6bb
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->canDrawTextProperly(II)Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    move-result-object v2

    .line 414
    .local v2, "tD":Lage/of/civilizations2/jakowski/lukasz/Point_XY2;
    if-eqz v2, :cond_7e6

    .line 415
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v3

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v4

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v15, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    move/from16 v20, v5

    .end local v5  # "leftTopDistance":I
    .local v20, "leftTopDistance":I
    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    move/from16 v21, v7

    const/4 v7, 0x0

    .end local v7  # "fromProvinceID_LEFTRIGHT":I
    .local v21, "fromProvinceID_LEFTRIGHT":I
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShX()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v15, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    move/from16 v22, v8

    const/4 v8, 0x0

    .end local v8  # "toProvinceID_LEFTRIGHT":I
    .local v22, "toProvinceID_LEFTRIGHT":I
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v15

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShY()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(IIII)I

    move-result v3

    .line 416
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v4

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    const/4 v15, 0x1

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShX()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v15, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    move-object/from16 v23, v2

    const/4 v2, 0x1

    .end local v2  # "tD":Lage/of/civilizations2/jakowski/lukasz/Point_XY2;
    .local v23, "tD":Lage/of/civilizations2/jakowski/lukasz/Point_XY2;
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v7, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShY()I

    move-result v2

    invoke-static {v4, v5, v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(IIII)I

    move-result v2

    if-ge v3, v2, :cond_7ba

    .line 418
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->triedToUse:Ljava/util/List;

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7d0

    .line 420
    :cond_7ba
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->triedToUse:Ljava/util/List;

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 423
    :goto_7d0
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 425
    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->numOfTries:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->numOfTries:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_7e4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->buildRegionPath()Z

    move-result v2

    goto :goto_7e5

    :cond_7e4
    const/4 v2, 0x0

    :goto_7e5
    return v2

    .line 429
    .end local v20  # "leftTopDistance":I
    .end local v21  # "fromProvinceID_LEFTRIGHT":I
    .end local v22  # "toProvinceID_LEFTRIGHT":I
    .end local v23  # "tD":Lage/of/civilizations2/jakowski/lukasz/Point_XY2;
    .restart local v2  # "tD":Lage/of/civilizations2/jakowski/lukasz/Point_XY2;
    .restart local v5  # "leftTopDistance":I
    .restart local v7  # "fromProvinceID_LEFTRIGHT":I
    .restart local v8  # "toProvinceID_LEFTRIGHT":I
    :cond_7e6
    move-object/from16 v23, v2

    move/from16 v20, v5

    move/from16 v21, v7

    move/from16 v22, v8

    .end local v2  # "tD":Lage/of/civilizations2/jakowski/lukasz/Point_XY2;
    .end local v5  # "leftTopDistance":I
    .end local v7  # "fromProvinceID_LEFTRIGHT":I
    .end local v8  # "toProvinceID_LEFTRIGHT":I
    .restart local v20  # "leftTopDistance":I
    .restart local v21  # "fromProvinceID_LEFTRIGHT":I
    .restart local v22  # "toProvinceID_LEFTRIGHT":I
    .restart local v23  # "tD":Lage/of/civilizations2/jakowski/lukasz/Point_XY2;
    const/4 v2, 0x0

    .line 430
    .end local v23  # "tD":Lage/of/civilizations2/jakowski/lukasz/Point_XY2;
    .restart local v2  # "tD":Lage/of/civilizations2/jakowski/lukasz/Point_XY2;
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->triedToUse:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_807

    .line 406
    .end local v2  # "tD":Lage/of/civilizations2/jakowski/lukasz/Point_XY2;
    .end local v20  # "leftTopDistance":I
    .end local v21  # "fromProvinceID_LEFTRIGHT":I
    .end local v22  # "toProvinceID_LEFTRIGHT":I
    .restart local v5  # "leftTopDistance":I
    .restart local v7  # "fromProvinceID_LEFTRIGHT":I
    .restart local v8  # "toProvinceID_LEFTRIGHT":I
    :cond_7f5
    move/from16 v20, v5

    move/from16 v21, v7

    move/from16 v22, v8

    .line 407
    .end local v5  # "leftTopDistance":I
    .end local v7  # "fromProvinceID_LEFTRIGHT":I
    .end local v8  # "toProvinceID_LEFTRIGHT":I
    .restart local v20  # "leftTopDistance":I
    .restart local v21  # "fromProvinceID_LEFTRIGHT":I
    .restart local v22  # "toProvinceID_LEFTRIGHT":I
    :goto_7fb
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 408
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->triedToUse:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 409
    const/4 v2, 0x0

    return v2

    .line 434
    .end local v9  # "fromProvinceID_RIGHTLEFT":I
    .end local v10  # "toProvinceID_RIGHTLEFT":I
    .end local v11  # "fromProvinceID_BOTTOM":I
    .end local v12  # "toProvinceID_TOP":I
    .end local v13  # "fromProvinceID_LR":I
    .end local v14  # "toProvinceID_LR":I
    .end local v16  # "startID":I
    .end local v17  # "leftBottomDistance":I
    .end local v18  # "rightTopDistance":I
    .end local v19  # "rightBottomDistance":I
    .end local v20  # "leftTopDistance":I
    .end local v21  # "fromProvinceID_LEFTRIGHT":I
    .end local v22  # "toProvinceID_LEFTRIGHT":I
    :cond_807
    :goto_807
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->updateDrawRegionName()V
    :try_end_80a
    .catch Ljava/lang/StackOverflowError; {:try_start_3 .. :try_end_80a} :catch_80c

    .line 436
    const/4 v2, 0x1

    return v2

    .line 437
    :catch_80c
    move-exception v0

    move-object v2, v0

    .line 438
    .local v2, "ex":Ljava/lang/StackOverflowError;
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 439
    const/4 v3, 0x0

    return v3
.end method

.method public final buildRegionPath_TriedToUse()V
    .registers 5

    .line 240
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->triedToUse:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 241
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iProvincesSize:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_17

    .line 242
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->triedToUse:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 245
    .end local v0  # "i":I
    :cond_17
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_18
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iProvincesSize:I

    if-ge v0, v1, :cond_41

    .line 246
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsBelowZero()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 247
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->triedToUse:Ljava/util/List;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 251
    .end local v0  # "i":I
    :cond_41
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->numOfTries:I

    .line 252
    return-void
.end method

.method public final buildScaleOfText()V
    .registers 12

    .line 666
    const/4 v0, 0x1

    const v1, 0x3dcccccd  # 0.1f

    const/4 v2, 0x0

    :try_start_5
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v0, :cond_30b

    .line 667
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeX()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPX()I

    move-result v4

    add-int/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeX()I

    move-result v4

    sub-int/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPX()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L  # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeY()I

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPY()I

    move-result v8

    add-int/2addr v7, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeY()I

    move-result v8

    sub-int/2addr v7, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPY()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-double v7, v7

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 669
    .local v3, "iDistance":I
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder2:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V
    :try_end_168
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_168} :catch_30c

    .line 670
    const/4 v4, 0x0

    .line 674
    .local v4, "tempNumOfInterations":I
    :goto_169
    int-to-float v5, v3

    :try_start_16a
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1cc

    .line 675
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder2:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder2:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v6

    iget v6, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    add-float/2addr v6, v1

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 677
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder2:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 679
    int-to-float v5, v3

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_226

    .line 680
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder2:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    sub-float/2addr v5, v1

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    .line 681
    goto :goto_22d

    .line 685
    :cond_1cc
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder2:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder2:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v6

    iget v6, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    sub-float/2addr v6, v1

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 687
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder2:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 689
    int-to-float v5, v3

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_226

    .line 690
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder2:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    add-float/2addr v5, v1

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F
    :try_end_225
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_16a .. :try_end_225} :catch_25c
    .catch Ljava/lang/NullPointerException; {:try_start_16a .. :try_end_225} :catch_235
    .catch Ljava/lang/IllegalStateException; {:try_start_16a .. :try_end_225} :catch_231

    .line 691
    goto :goto_22d

    .line 695
    :cond_226
    add-int/lit8 v5, v4, 0x1

    .end local v4  # "tempNumOfInterations":I
    .local v5, "tempNumOfInterations":I
    const/16 v6, 0x3e8

    if-ne v4, v6, :cond_22e

    .line 696
    move v4, v5

    .line 715
    .end local v5  # "tempNumOfInterations":I
    .restart local v4  # "tempNumOfInterations":I
    :goto_22d
    goto :goto_260

    .line 695
    .end local v4  # "tempNumOfInterations":I
    .restart local v5  # "tempNumOfInterations":I
    :cond_22e
    move v4, v5

    goto/16 :goto_169

    .line 712
    .end local v5  # "tempNumOfInterations":I
    .restart local v4  # "tempNumOfInterations":I
    :catch_231
    move-exception v5

    .line 713
    .local v5, "ex":Ljava/lang/IllegalStateException;
    :try_start_232
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    goto :goto_260

    .line 701
    .end local v5  # "ex":Ljava/lang/IllegalStateException;
    :catch_235
    move-exception v5

    .line 702
    .local v5, "ex":Ljava/lang/NullPointerException;
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F
    :try_end_238
    .catch Ljava/lang/NullPointerException; {:try_start_232 .. :try_end_238} :catch_30c

    .line 706
    :try_start_238
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setUpdateRegions(Z)V
    :try_end_257
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_238 .. :try_end_257} :catch_25a
    .catch Ljava/lang/NullPointerException; {:try_start_238 .. :try_end_257} :catch_258

    goto :goto_25b

    .line 709
    :catch_258
    move-exception v6

    goto :goto_22d

    .line 707
    :catch_25a
    move-exception v6

    .line 711
    :goto_25b
    goto :goto_22d

    .line 699
    .end local v5  # "ex":Ljava/lang/NullPointerException;
    :catch_25c
    move-exception v5

    .line 700
    .local v5, "ex":Ljava/lang/IndexOutOfBoundsException;
    :try_start_25d
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    .end local v5  # "ex":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_22d

    .line 717
    :goto_260
    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    const/high16 v6, 0x41a00000  # 20.0f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_270

    .line 718
    const/high16 v6, 0x3e800000  # 0.25f

    mul-float v5, v5, v6

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    goto/16 :goto_2fa

    .line 719
    :cond_270
    const/high16 v6, 0x41700000  # 15.0f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_27f

    .line 720
    const v6, 0x3e8ccccd  # 0.275f

    mul-float v5, v5, v6

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    goto/16 :goto_2fa

    .line 721
    :cond_27f
    const/high16 v6, 0x41200000  # 10.0f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_28e

    .line 722
    const v6, 0x3e99999a  # 0.3f

    mul-float v5, v5, v6

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    goto/16 :goto_2fa

    .line 723
    :cond_28e
    float-to-double v6, v5

    const-wide/high16 v8, 0x401e000000000000L  # 7.5

    cmpl-double v10, v6, v8

    if-lez v10, :cond_29d

    .line 724
    const v6, 0x3eb33333  # 0.35f

    mul-float v5, v5, v6

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    goto :goto_2fa

    .line 725
    :cond_29d
    const/high16 v6, 0x40a00000  # 5.0f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_2aa

    .line 726
    const/high16 v6, 0x3ec00000  # 0.375f

    mul-float v5, v5, v6

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    goto :goto_2fa

    .line 727
    :cond_2aa
    float-to-double v6, v5

    const-wide/high16 v8, 0x400c000000000000L  # 3.5

    cmpl-double v10, v6, v8

    if-lez v10, :cond_2b9

    .line 728
    const v6, 0x3ecccccd  # 0.4f

    mul-float v5, v5, v6

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    goto :goto_2fa

    .line 729
    :cond_2b9
    float-to-double v6, v5

    const-wide/high16 v8, 0x4004000000000000L  # 2.5

    cmpl-double v10, v6, v8

    if-lez v10, :cond_2c8

    .line 730
    const v6, 0x3ed9999a  # 0.425f

    mul-float v5, v5, v6

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    goto :goto_2fa

    .line 731
    :cond_2c8
    const/high16 v6, 0x40000000  # 2.0f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_2d6

    .line 732
    const v6, 0x3ee66666  # 0.45f

    mul-float v5, v5, v6

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    goto :goto_2fa

    .line 733
    :cond_2d6
    float-to-double v6, v5

    const-wide/high16 v8, 0x3ffc000000000000L  # 1.75

    cmpl-double v10, v6, v8

    if-lez v10, :cond_2e4

    .line 734
    const/high16 v6, 0x3f000000  # 0.5f

    mul-float v5, v5, v6

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    goto :goto_2fa

    .line 735
    :cond_2e4
    float-to-double v6, v5

    const-wide/high16 v8, 0x3ff8000000000000L  # 1.5

    cmpl-double v10, v6, v8

    if-lez v10, :cond_2f3

    .line 736
    const v6, 0x3f066666  # 0.525f

    mul-float v5, v5, v6

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    goto :goto_2fa

    .line 738
    :cond_2f3
    const v6, 0x3f0ccccd  # 0.55f

    mul-float v5, v5, v6

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    .line 741
    :goto_2fa
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder2:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v5

    const/high16 v6, 0x3f800000  # 1.0f

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 743
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->buildAveragePoint()V

    .line 744
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->buildDrawData()V
    :try_end_30b
    .catch Ljava/lang/NullPointerException; {:try_start_25d .. :try_end_30b} :catch_30c

    .line 755
    .end local v3  # "iDistance":I
    .end local v4  # "tempNumOfInterations":I
    :cond_30b
    goto :goto_333

    .line 746
    :catch_30c
    move-exception v3

    .line 747
    .local v3, "exr":Ljava/lang/NullPointerException;
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    .line 749
    :try_start_30f
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setUpdateRegions(Z)V
    :try_end_32e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_30f .. :try_end_32e} :catch_331
    .catch Ljava/lang/NullPointerException; {:try_start_30f .. :try_end_32e} :catch_32f

    goto :goto_332

    .line 752
    :catch_32f
    move-exception v0

    goto :goto_333

    .line 750
    :catch_331
    move-exception v0

    .line 754
    :goto_332
    nop

    .line 756
    .end local v3  # "exr":Ljava/lang/NullPointerException;
    :goto_333
    return-void
.end method

.method public final checkRegionBordersWithEnemy(I)Z
    .registers 5
    .param p1, "nCivID"  # I

    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 85
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getBordersWithEnemy()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 86
    const/4 v1, 0x1

    return v1

    .line 84
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    .end local v0  # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public final containsProvince(I)Z
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 211
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iProvincesSize:I

    if-ge v0, v1, :cond_18

    .line 212
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_15

    .line 213
    const/4 v1, 0x1

    return v1

    .line 211
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 217
    .end local v0  # "i":I
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized drawCivilizationName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IF)V
    .registers 9
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "fromProvinceID"  # I
    .param p3, "fontScale"  # F

    monitor-enter p0

    .line 1084
    :try_start_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 1086
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivNameLength()I

    move-result v1

    if-ge v0, v1, :cond_93

    .line 1087
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivNameCharacter(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 1088
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPX()I

    move-result v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->centerCharXY:Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v3

    sub-int/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 1089
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v3

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->centerCharXY:Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->drawMatrix4:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/math/Matrix4;

    .line 1087
    invoke-static {p1, v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextRotatedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/math/Matrix4;)V
    :try_end_8f
    .catchall {:try_start_1 .. :try_end_8f} :catchall_95

    .line 1086
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b

    .line 1091
    .end local v0  # "i":I
    .end local p0  # "this":Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;
    :cond_93
    monitor-exit p0

    return-void

    .line 1083
    .end local p1  # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .end local p2  # "fromProvinceID":I
    .end local p3  # "fontScale":F
    :catchall_95
    move-exception p1

    monitor-exit p0

    goto :goto_99

    :goto_98
    throw p1

    :goto_99
    goto :goto_98
.end method

.method protected final declared-synchronized drawCivilizationName_SecondSideOfMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IF)V
    .registers 9
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "fromProvinceID"  # I
    .param p3, "fontScale"  # F

    monitor-enter p0

    .line 1094
    :try_start_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvPosX()I

    move-result v0

    if-lez v0, :cond_aa

    .line 1095
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 1097
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivNameLength()I

    move-result v1

    if-ge v0, v1, :cond_aa

    .line 1098
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivNameCharacter(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 1099
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getSecondSideOfMap_MoveX()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPX()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->centerCharXY:Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v3

    sub-int/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 1100
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v3

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->centerCharXY:Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->drawMatrix4:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/math/Matrix4;

    .line 1098
    invoke-static {p1, v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextRotatedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/math/Matrix4;)V
    :try_end_a6
    .catchall {:try_start_1 .. :try_end_a6} :catchall_ac

    .line 1097
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_17

    .line 1103
    .end local v0  # "i":I
    .end local p0  # "this":Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;
    :cond_aa
    monitor-exit p0

    return-void

    .line 1093
    .end local p1  # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .end local p2  # "fromProvinceID":I
    .end local p3  # "fontScale":F
    :catchall_ac
    move-exception p1

    monitor-exit p0

    goto :goto_b0

    :goto_af
    throw p1

    :goto_b0
    goto :goto_af
.end method

.method public final getAngle()F
    .registers 2

    .line 1163
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fAngle:F

    return v0
.end method

.method public final getCharMaxHeight()I
    .registers 2

    .line 1171
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iCharMaxHeight:I

    return v0
.end method

.method public final getCharMaxWidth()I
    .registers 2

    .line 1167
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iCharMaxWidth:I

    return v0
.end method

.method public final getFontScale()F
    .registers 2

    .line 1147
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    return v0
.end method

.method public final getHaveNotOccupiedProvince()Z
    .registers 2

    .line 1139
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->haveNotOccupiedProvince:Z

    return v0
.end method

.method public final getIsSupplied()Z
    .registers 2

    .line 1175
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->isSupplied:Z

    return v0
.end method

.method protected getLineWidth(II)I
    .registers 8
    .param p1, "fromCenterPosProvinceID"  # I
    .param p2, "toCenterPosProvinceID"  # I

    .line 1062
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    .line 1063
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShX()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    .line 1064
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShY()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    .line 1065
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShX()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    .line 1066
    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShY()I

    move-result v3

    .line 1062
    invoke-static {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(IIII)I

    move-result v0

    return v0
.end method

.method public final getProvince(I)I
    .registers 3
    .param p1, "i"  # I

    .line 1109
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getProvincesSize()I
    .registers 2

    .line 1113
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iProvincesSize:I

    return v0
.end method

.method public final getRegionID()I
    .registers 2

    .line 1151
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iRegionID:I

    return v0
.end method

.method public final getSeaAccess()Z
    .registers 2

    .line 1117
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess:Z

    return v0
.end method

.method public final getSeaAccess_HavePort()Z
    .registers 2

    .line 1121
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess_HavePort:Z

    return v0
.end method

.method public final getSeaAccess_HavePort_Check()Z
    .registers 4

    .line 1125
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 1126
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfPort()I

    move-result v1

    if-lez v1, :cond_19

    .line 1127
    const/4 v1, 0x1

    return v1

    .line 1125
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1131
    .end local v0  # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public final getShortestPath()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1143
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    return-object v0
.end method

.method public final removeProvince(I)V
    .registers 5
    .param p1, "i"  # I

    .line 195
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivRegionID(I)V

    .line 197
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_17
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lCoastlineProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_36

    .line 198
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lCoastlineProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_33

    .line 199
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lCoastlineProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 200
    goto :goto_36

    .line 197
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 204
    .end local v0  # "j":I
    :cond_36
    :goto_36
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 205
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iProvincesSize:I

    .line 206
    return-void
.end method

.method public final removeProvinceID(I)V
    .registers 9
    .param p1, "nProvinceID"  # I

    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iProvincesSize:I

    if-ge v0, v1, :cond_4e

    .line 133
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_4b

    .line 134
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 135
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iProvincesSize:I

    .line 137
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_21
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lCoastlineProvinces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_40

    .line 138
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lCoastlineProvinces:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_3d

    .line 139
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lCoastlineProvinces:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 140
    goto :goto_40

    .line 137
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 144
    .end local v1  # "j":I
    :cond_40
    :goto_40
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivRegionID(I)V

    .line 145
    goto :goto_4e

    .line 132
    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 149
    .end local v0  # "i":I
    :cond_4e
    :goto_4e
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_b9

    .line 150
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess:Z

    .line 152
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_57
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iProvincesSize:I

    if-ge v0, v3, :cond_91

    .line 153
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5c
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_8f

    .line 154
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfPort()I

    move-result v4

    const/4 v5, -0x2

    if-ne v4, v5, :cond_8c

    .line 155
    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess:Z

    .line 156
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iProvincesSize:I

    .line 157
    goto :goto_8f

    .line 153
    :cond_8c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5c

    .line 152
    .end local v3  # "i":I
    :cond_8f
    :goto_8f
    add-int/2addr v0, v2

    goto :goto_57

    .line 162
    .end local v0  # "k":I
    :cond_91
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess:Z

    if-nez v0, :cond_98

    .line 163
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess_HavePort:Z

    goto :goto_b9

    .line 166
    :cond_98
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess_HavePort:Z

    if-eqz v0, :cond_b9

    .line 167
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess_HavePort:Z

    .line 169
    const/4 v0, 0x0

    .restart local v0  # "k":I
    :goto_9f
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iProvincesSize:I

    if-ge v0, v3, :cond_b9

    .line 170
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfPort()I

    move-result v3

    if-lez v3, :cond_b6

    .line 171
    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess_HavePort:Z

    .line 172
    goto :goto_b9

    .line 169
    :cond_b6
    add-int/lit8 v0, v0, 0x1

    goto :goto_9f

    .line 179
    .end local v0  # "k":I
    :cond_b9
    :goto_b9
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->haveNotOccupiedProvince:Z

    if-eqz v0, :cond_e6

    .line 180
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v0

    if-nez v0, :cond_e6

    .line 181
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->haveNotOccupiedProvince:Z

    .line 184
    const/4 v0, 0x0

    .restart local v0  # "k":I
    :goto_cc
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iProvincesSize:I

    if-ge v0, v1, :cond_e6

    .line 185
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v1

    if-nez v1, :cond_e3

    .line 186
    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->haveNotOccupiedProvince:Z

    .line 187
    goto :goto_e6

    .line 184
    :cond_e3
    add-int/lit8 v0, v0, 0x1

    goto :goto_cc

    .line 192
    .end local v0  # "k":I
    :cond_e6
    :goto_e6
    return-void
.end method

.method public final setIsSupplied(Z)Z
    .registers 3
    .param p1, "isSupplied"  # Z

    .line 1179
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->isSupplied:Z

    .line 1181
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getIsSupplied()Z

    move-result v0

    return v0
.end method

.method public final setRegionID(I)V
    .registers 4
    .param p1, "iRegionID"  # I

    .line 1155
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iRegionID:I

    .line 1157
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iProvincesSize:I

    if-ge v0, v1, :cond_13

    .line 1158
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivRegionID(I)V

    .line 1157
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1160
    .end local v0  # "i":I
    :cond_13
    return-void
.end method

.method public final setSeaAccess_HavePort(Z)V
    .registers 2
    .param p1, "seaAccess_HavePort"  # Z

    .line 1135
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess_HavePort:Z

    .line 1136
    return-void
.end method

.method public final updateDrawRegionName()V
    .registers 4

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->drawName:Z

    .line 229
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_32

    .line 230
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_32

    .line 231
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 232
    const/4 v1, 0x0

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->drawName:Z

    .line 233
    goto :goto_32

    .line 230
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 237
    .end local v0  # "i":I
    :cond_32
    :goto_32
    return-void
.end method
