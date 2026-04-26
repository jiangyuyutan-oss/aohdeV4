.class public Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;
.super Ljava/lang/Object;
.source "MoveUnits_DiplomacyLines.java"


# static fields
.field public static final PRECISION:I = 0xf


# instance fields
.field public ColorLine:Lcom/badlogic/gdx/graphics/Color;

.field public ColorLine2:Lcom/badlogic/gdx/graphics/Color;

.field public fMovingPercentage:F

.field public iPrecision:I

.field public iRouteSize:I

.field public lMovingTime:J

.field public lRoute:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field littleAnimationMainLine:Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits$LittleAnimation;

.field public mainColor:Lcom/badlogic/gdx/graphics/Color;

.field public mainColor2:Lcom/badlogic/gdx/graphics/Color;

.field public vPoints:[Lcom/badlogic/gdx/math/Vector2;

.field public widthPercentage:F


# direct methods
.method public constructor <init>(III)V
    .registers 10
    .param p1, "nCivID"  # I
    .param p2, "iFromProvinceID"  # I
    .param p3, "iToProvinceID"  # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lRoute:Ljava/util/List;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->iRouteSize:I

    .line 23
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lMovingTime:J

    .line 24
    const/4 v1, 0x0

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->fMovingPercentage:F

    .line 26
    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->widthPercentage:F

    .line 29
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->mainColor2:Lcom/badlogic/gdx/graphics/Color;

    .line 71
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3f129293

    const v4, 0x3f028283

    const v5, 0x3ee6e6e7

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->ColorLine:Lcom/badlogic/gdx/graphics/Color;

    .line 72
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3d23d70a  # 0.04f

    invoke-direct {v2, v3, v3, v3, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->buildRoute(III)Z

    .line 35
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->mainColor:Lcom/badlogic/gdx/graphics/Color;

    .line 37
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->iRouteSize:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_67

    .line 38
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lRoute:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v0

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->mainColor2:Lcom/badlogic/gdx/graphics/Color;

    .line 39
    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->buildMoveUnitsLine(Z)V

    .line 41
    :cond_67
    return-void
.end method

.method public constructor <init>(IIILcom/badlogic/gdx/graphics/Color;)V
    .registers 11
    .param p1, "nCivID"  # I
    .param p2, "iFromProvinceID"  # I
    .param p3, "iToProvinceID"  # I
    .param p4, "nColor"  # Lcom/badlogic/gdx/graphics/Color;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lRoute:Ljava/util/List;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->iRouteSize:I

    .line 23
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lMovingTime:J

    .line 24
    const/4 v1, 0x0

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->fMovingPercentage:F

    .line 26
    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->widthPercentage:F

    .line 29
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->mainColor2:Lcom/badlogic/gdx/graphics/Color;

    .line 71
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3f129293

    const v4, 0x3f028283

    const v5, 0x3ee6e6e7

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->ColorLine:Lcom/badlogic/gdx/graphics/Color;

    .line 72
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3d23d70a  # 0.04f

    invoke-direct {v2, v3, v3, v3, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    .line 44
    invoke-virtual {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->buildRoute(III)Z

    .line 45
    iput-object p4, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->mainColor:Lcom/badlogic/gdx/graphics/Color;

    .line 47
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->iRouteSize:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_65

    .line 48
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lRoute:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v0

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->mainColor2:Lcom/badlogic/gdx/graphics/Color;

    .line 49
    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->buildMoveUnitsLine(Z)V

    .line 51
    :cond_65
    return-void
.end method

.method public constructor <init>(IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .registers 11
    .param p1, "nCivID"  # I
    .param p2, "iFromProvinceID"  # I
    .param p3, "iToProvinceID"  # I
    .param p4, "nColor"  # Lcom/badlogic/gdx/graphics/Color;
    .param p5, "nColor2"  # Lcom/badlogic/gdx/graphics/Color;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lRoute:Ljava/util/List;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->iRouteSize:I

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lMovingTime:J

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->fMovingPercentage:F

    .line 26
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->widthPercentage:F

    .line 29
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->mainColor2:Lcom/badlogic/gdx/graphics/Color;

    .line 71
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f129293

    const v3, 0x3f028283

    const v4, 0x3ee6e6e7

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->ColorLine:Lcom/badlogic/gdx/graphics/Color;

    .line 72
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3d23d70a  # 0.04f

    invoke-direct {v1, v2, v2, v2, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->buildRoute(III)Z

    .line 55
    iput-object p4, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->mainColor:Lcom/badlogic/gdx/graphics/Color;

    .line 56
    iput-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->mainColor2:Lcom/badlogic/gdx/graphics/Color;

    .line 58
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->iRouteSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_45

    .line 59
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->buildMoveUnitsLine(Z)V

    .line 61
    :cond_45
    return-void
.end method


# virtual methods
.method public buildAnimation(Z)V
    .registers 4
    .param p1, "updateAnimation"  # Z

    .line 345
    if-eqz p1, :cond_12

    .line 346
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lMovingTime:J

    .line 347
    const v0, 0x3c23d70a  # 0.01f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->fMovingPercentage:F

    .line 349
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines$1;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->littleAnimationMainLine:Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits$LittleAnimation;

    .line 370
    :cond_12
    return-void
.end method

.method public buildMoveUnitsLine(Z)V
    .registers 10
    .param p1, "updateAnimation"  # Z

    .line 377
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->buildAnimation(Z)V

    .line 379
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->iRouteSize:I

    mul-int/lit8 v1, v0, 0xf

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->iPrecision:I

    .line 380
    new-array v1, v1, [Lcom/badlogic/gdx/math/Vector2;

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    .line 381
    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/badlogic/gdx/math/Vector2;

    .line 383
    .local v0, "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->iRouteSize:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_c4

    .line 384
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lRoute:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCitSize()I

    move-result v2

    if-lez v2, :cond_88

    .line 385
    add-int/lit8 v2, v1, 0x1

    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lRoute:Ljava/util/List;

    .line 386
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCit(I)Lage/of/civilizations2/jakowski/lukasz/City;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/City;->getPoX()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v6

    mul-int v5, v5, v6

    int-to-float v5, v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lRoute:Ljava/util/List;

    .line 387
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCit(I)Lage/of/civilizations2/jakowski/lukasz/City;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/City;->getPosY()I

    move-result v3

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v6

    mul-int v3, v3, v6

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v4, v5, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v4, v0, v2

    goto :goto_c0

    .line 390
    :cond_88
    add-int/lit8 v2, v1, 0x1

    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lRoute:Ljava/util/List;

    .line 391
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShX()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lRoute:Ljava/util/List;

    .line 392
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShY()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v3, v0, v2

    .line 383
    :goto_c0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_12

    .line 396
    .end local v1  # "i":I
    :cond_c4
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lRoute:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCitSize()I

    move-result v1

    if-lez v1, :cond_13d

    .line 397
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lRoute:Ljava/util/List;

    .line 398
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCit(I)Lage/of/civilizations2/jakowski/lukasz/City;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/City;->getPoX()I

    move-result v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v4

    mul-int v2, v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->getShiftPosXY()I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lRoute:Ljava/util/List;

    .line 399
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCit(I)Lage/of/civilizations2/jakowski/lukasz/City;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/City;->getPosY()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v5

    mul-int v4, v4, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->getShiftPosXY()I

    move-result v5

    add-int/2addr v4, v5

    neg-int v4, v4

    int-to-float v4, v4

    invoke-direct {v1, v2, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v1, v0, v3

    goto :goto_17d

    .line 402
    :cond_13d
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lRoute:Ljava/util/List;

    .line 403
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->getShiftPosXY()I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lRoute:Ljava/util/List;

    .line 404
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShY()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->getShiftPosXY()I

    move-result v5

    add-int/2addr v4, v5

    neg-int v4, v4

    int-to-float v4, v4

    invoke-direct {v1, v2, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v1, v0, v3

    .line 407
    :goto_17d
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lRoute:Ljava/util/List;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->iRouteSize:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCitSize()I

    move-result v1

    if-lez v1, :cond_1fc

    .line 408
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->iRouteSize:I

    add-int/lit8 v1, v1, 0x1

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lRoute:Ljava/util/List;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->iRouteSize:I

    add-int/lit8 v6, v6, -0x1

    .line 409
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCit(I)Lage/of/civilizations2/jakowski/lukasz/City;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/City;->getPoX()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v5

    mul-int v4, v4, v5

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lRoute:Ljava/util/List;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->iRouteSize:I

    add-int/lit8 v7, v7, -0x1

    .line 410
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCit(I)Lage/of/civilizations2/jakowski/lukasz/City;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/City;->getPosY()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v6

    mul-int v5, v5, v6

    neg-int v5, v5

    int-to-float v5, v5

    invoke-direct {v2, v4, v5}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v2, v0, v1

    goto :goto_23e

    .line 413
    :cond_1fc
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->iRouteSize:I

    add-int/lit8 v1, v1, 0x1

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lRoute:Ljava/util/List;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->iRouteSize:I

    add-int/lit8 v6, v6, -0x1

    .line 414
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShX()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lRoute:Ljava/util/List;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->iRouteSize:I

    add-int/lit8 v7, v7, -0x1

    .line 415
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShY()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-direct {v2, v4, v5}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v2, v0, v1

    .line 418
    :goto_23e
    new-instance v1, Lcom/badlogic/gdx/math/CatmullRomSpline;

    invoke-direct {v1, v0, v3}, Lcom/badlogic/gdx/math/CatmullRomSpline;-><init>([Lcom/badlogic/gdx/math/Vector;Z)V

    .line 420
    .local v1, "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_244
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->iPrecision:I

    if-ge v2, v3, :cond_263

    .line 421
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v4}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    aput-object v4, v3, v2

    .line 422
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v3, v3, v2

    int-to-float v4, v2

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->iPrecision:I

    int-to-float v5, v5

    const/high16 v6, 0x3f800000  # 1.0f

    sub-float/2addr v5, v6

    div-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/math/CatmullRomSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    .line 420
    add-int/lit8 v2, v2, 0x1

    goto :goto_244

    .line 424
    .end local v2  # "j":I
    :cond_263
    return-void
.end method

.method protected buildPath(ILjava/util/List;Ljava/util/List;Ljava/util/List;IIZ)Z
    .registers 28
    .param p1, "nCivID"  # I
    .param p5, "from"  # I
    .param p6, "lookingFor"  # I
    .param p7, "forDirection"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;IIZ)Z"
        }
    .end annotation

    .line 190
    .local p2, "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "in":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, "inPath":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 191
    .local v15, "nIN":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 193
    .local v8, "nINPath":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    if-ge v0, v1, :cond_51

    .line 194
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v1

    if-ne v1, v14, :cond_4e

    .line 195
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/List;

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v5, p6

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->setPath(IILjava/util/List;II)V

    .line 196
    invoke-virtual {v9, v11}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->clearWas(Ljava/util/List;)V

    .line 197
    return v7

    .line 193
    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 201
    .end local v0  # "i":I
    :cond_51
    if-eqz p7, :cond_320

    .line 202
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_54
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_31e

    .line 203
    const/4 v1, 0x0

    move v6, v1

    .local v6, "j":I
    :goto_5c
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v1

    if-ge v6, v1, :cond_1c2

    .line 204
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v1

    invoke-virtual {v9, v10, v14}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->isFriendlyProvince(II)Z

    move-result v2

    invoke-virtual {v9, v10, v1, v2, v14}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->canBeUsedInPath(IIZI)Z

    move-result v1

    if-eqz v1, :cond_1bd

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    iget-boolean v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->wasCities:Z

    if-nez v1, :cond_1bd

    .line 205
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v1

    if-ne v1, v14, :cond_fc

    .line 206
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/List;

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v5, p6

    move/from16 v16, v6

    .end local v6  # "j":I
    .local v16, "j":I
    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->setPath(IILjava/util/List;II)V

    .line 207
    invoke-virtual {v9, v11}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->clearWas(Ljava/util/List;)V

    .line 208
    return v7

    .line 211
    .end local v16  # "j":I
    .restart local v6  # "j":I
    :cond_fc
    move/from16 v16, v6

    .end local v6  # "j":I
    .restart local v16  # "j":I
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    move/from16 v3, v16

    .end local v16  # "j":I
    .local v3, "j":I
    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v1, "tPL":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "u":I
    :goto_12b
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_149

    .line 214
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    add-int/lit8 v2, v2, 0x1

    goto :goto_12b

    .line 216
    .end local v2  # "u":I
    :cond_149
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    iput-boolean v7, v2, Lage/of/civilizations2/jakowski/lukasz/Province;->wasCities:Z

    .line 221
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1be

    .line 204
    .end local v1  # "tPL":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3  # "j":I
    .restart local v6  # "j":I
    :cond_1bd
    move v3, v6

    .line 203
    .end local v6  # "j":I
    .restart local v3  # "j":I
    :goto_1be
    add-int/lit8 v6, v3, 0x1

    .end local v3  # "j":I
    .restart local v6  # "j":I
    goto/16 :goto_5c

    :cond_1c2
    move v3, v6

    .line 227
    .end local v6  # "j":I
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v1

    if-nez v1, :cond_31a

    .line 228
    const/4 v1, 0x0

    move v6, v1

    .restart local v6  # "j":I
    :goto_1db
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvincesSize()I

    move-result v1

    if-ge v6, v1, :cond_319

    .line 229
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    iget-boolean v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->wasCities:Z

    if-nez v1, :cond_314

    .line 230
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v1

    if-ne v1, v14, :cond_253

    .line 231
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/List;

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v5, p6

    move/from16 v17, v6

    .end local v6  # "j":I
    .local v17, "j":I
    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->setPath(IILjava/util/List;II)V

    .line 232
    invoke-virtual {v9, v11}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->clearWas(Ljava/util/List;)V

    .line 233
    return v7

    .line 236
    .end local v17  # "j":I
    .restart local v6  # "j":I
    :cond_253
    move/from16 v17, v6

    .end local v6  # "j":I
    .restart local v17  # "j":I
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    move/from16 v3, v17

    .end local v17  # "j":I
    .restart local v3  # "j":I
    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .restart local v1  # "tPL":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .restart local v2  # "u":I
    :goto_282
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2a0

    .line 239
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    add-int/lit8 v2, v2, 0x1

    goto :goto_282

    .line 241
    .end local v2  # "u":I
    :cond_2a0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    iput-boolean v7, v2, Lage/of/civilizations2/jakowski/lukasz/Province;->wasCities:Z

    .line 246
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_315

    .line 229
    .end local v1  # "tPL":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3  # "j":I
    .restart local v6  # "j":I
    :cond_314
    move v3, v6

    .line 228
    .end local v6  # "j":I
    .restart local v3  # "j":I
    :goto_315
    add-int/lit8 v6, v3, 0x1

    .end local v3  # "j":I
    .restart local v6  # "j":I
    goto/16 :goto_1db

    :cond_319
    move v3, v6

    .line 202
    .end local v6  # "j":I
    :cond_31a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_54

    .end local v0  # "i":I
    :cond_31e
    goto/16 :goto_5eb

    .line 254
    :cond_320
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_321
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5eb

    .line 255
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v1

    sub-int/2addr v1, v7

    move v6, v1

    .restart local v6  # "j":I
    :goto_33d
    if-ltz v6, :cond_48f

    .line 256
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v1

    invoke-virtual {v9, v10, v14}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->isFriendlyProvince(II)Z

    move-result v2

    invoke-virtual {v9, v10, v1, v2, v14}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->canBeUsedInPath(IIZI)Z

    move-result v1

    if-eqz v1, :cond_48a

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    iget-boolean v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->wasCities:Z

    if-nez v1, :cond_48a

    .line 257
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v1

    if-ne v1, v14, :cond_3c9

    .line 258
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/List;

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v5, p6

    move/from16 v18, v6

    .end local v6  # "j":I
    .local v18, "j":I
    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->setPath(IILjava/util/List;II)V

    .line 259
    invoke-virtual {v9, v11}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->clearWas(Ljava/util/List;)V

    .line 260
    return v7

    .line 263
    .end local v18  # "j":I
    .restart local v6  # "j":I
    :cond_3c9
    move/from16 v18, v6

    .end local v6  # "j":I
    .restart local v18  # "j":I
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    move/from16 v3, v18

    .end local v18  # "j":I
    .restart local v3  # "j":I
    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .restart local v1  # "tPL":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .restart local v2  # "u":I
    :goto_3f8
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_416

    .line 266
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f8

    .line 268
    .end local v2  # "u":I
    :cond_416
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    iput-boolean v7, v2, Lage/of/civilizations2/jakowski/lukasz/Province;->wasCities:Z

    .line 273
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_48b

    .line 256
    .end local v1  # "tPL":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3  # "j":I
    .restart local v6  # "j":I
    :cond_48a
    move v3, v6

    .line 255
    .end local v6  # "j":I
    .restart local v3  # "j":I
    :goto_48b
    add-int/lit8 v6, v3, -0x1

    .end local v3  # "j":I
    .restart local v6  # "j":I
    goto/16 :goto_33d

    :cond_48f
    move v3, v6

    .line 279
    .end local v6  # "j":I
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v1

    if-nez v1, :cond_5e7

    .line 280
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvincesSize()I

    move-result v1

    sub-int/2addr v1, v7

    move v6, v1

    .restart local v6  # "j":I
    :goto_4bc
    if-ltz v6, :cond_5e6

    .line 281
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    iget-boolean v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->wasCities:Z

    if-nez v1, :cond_5e1

    .line 282
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v1

    if-ne v1, v14, :cond_520

    .line 283
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/List;

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v5, p6

    move/from16 v19, v6

    .end local v6  # "j":I
    .local v19, "j":I
    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->setPath(IILjava/util/List;II)V

    .line 284
    invoke-virtual {v9, v11}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->clearWas(Ljava/util/List;)V

    .line 285
    return v7

    .line 288
    .end local v19  # "j":I
    .restart local v6  # "j":I
    :cond_520
    move/from16 v19, v6

    .end local v6  # "j":I
    .restart local v19  # "j":I
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    move/from16 v3, v19

    .end local v19  # "j":I
    .restart local v3  # "j":I
    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .restart local v1  # "tPL":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .restart local v2  # "u":I
    :goto_54f
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_56d

    .line 291
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_54f

    .line 293
    .end local v2  # "u":I
    :cond_56d
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    iput-boolean v7, v2, Lage/of/civilizations2/jakowski/lukasz/Province;->wasCities:Z

    .line 298
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e2

    .line 281
    .end local v1  # "tPL":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3  # "j":I
    .restart local v6  # "j":I
    :cond_5e1
    move v3, v6

    .line 280
    .end local v6  # "j":I
    .restart local v3  # "j":I
    :goto_5e2
    add-int/lit8 v6, v3, -0x1

    .end local v3  # "j":I
    .restart local v6  # "j":I
    goto/16 :goto_4bc

    :cond_5e6
    move v3, v6

    .line 254
    .end local v6  # "j":I
    :cond_5e7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_321

    .line 306
    .end local v0  # "i":I
    :cond_5eb
    :goto_5eb
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v16, 0x0

    if-eqz v0, :cond_5f4

    .line 307
    return v16

    .line 311
    :cond_5f4
    if-nez p7, :cond_5f8

    const/4 v0, 0x1

    goto :goto_5f9

    :cond_5f8
    const/4 v0, 0x0

    :goto_5f9
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v15

    move-object v5, v8

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v17, v8

    .end local v8  # "nINPath":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .local v17, "nINPath":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    move v8, v0

    :try_start_608
    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->buildPath(ILjava/util/List;Ljava/util/List;Ljava/util/List;IIZ)Z

    move-result v0
    :try_end_60c
    .catch Ljava/lang/StackOverflowError; {:try_start_608 .. :try_end_60c} :catch_60d

    return v0

    .line 312
    :catch_60d
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 313
    .local v0, "ex":Ljava/lang/StackOverflowError;
    invoke-virtual {v9, v11}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->clearWas(Ljava/util/List;)V

    .line 314
    return v16
.end method

.method protected buildRoute(III)Z
    .registers 16
    .param p1, "nCivID"  # I
    .param p2, "fromProvinceID"  # I
    .param p3, "toProvinceID"  # I

    .line 128
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lRoute:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 130
    const/4 v0, 0x0

    if-ltz p2, :cond_184

    if-ltz p3, :cond_184

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v1

    if-ltz v1, :cond_18

    goto/16 :goto_184

    .line 135
    :cond_18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v1, "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_25
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v3

    if-ge v2, v3, :cond_38

    .line 138
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    iput-boolean v0, v3, Lage/of/civilizations2/jakowski/lukasz/Province;->wasCities:Z

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 140
    .end local v2  # "i":I
    :cond_38
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    const/4 v10, 0x1

    iput-boolean v10, v0, Lage/of/civilizations2/jakowski/lukasz/Province;->wasCities:Z

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v0, "in":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v2

    .line 145
    .local v11, "inPath":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_4d
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v3

    if-ge v2, v3, :cond_e6

    .line 146
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v3

    invoke-virtual {p0, p1, p3}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->isFriendlyProvince(II)Z

    move-result v4

    invoke-virtual {p0, p1, v3, v4, p3}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->canBeUsedInPath(IIZI)Z

    move-result v3

    if-eqz v3, :cond_e2

    .line 147
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v3, "tP":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    iput-boolean v10, v4, Lage/of/civilizations2/jakowski/lukasz/Province;->wasCities:Z

    .line 145
    .end local v3  # "tP":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_e2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4d

    .line 159
    .end local v2  # "i":I
    :cond_e6
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v2

    if-nez v2, :cond_178

    .line 160
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_f3
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvincesSize()I

    move-result v3

    if-ge v2, v3, :cond_178

    .line 161
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .restart local v3  # "tP":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    iput-boolean v10, v4, Lage/of/civilizations2/jakowski/lukasz/Province;->wasCities:Z

    .line 160
    .end local v3  # "tP":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_f3

    .line 172
    .end local v2  # "i":I
    :cond_178
    const/4 v9, 0x1

    move-object v2, p0

    move v3, p1

    move-object v4, v1

    move-object v5, v0

    move-object v6, v11

    move v7, p2

    move v8, p3

    invoke-virtual/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->buildPath(ILjava/util/List;Ljava/util/List;Ljava/util/List;IIZ)Z

    .line 174
    return v10

    .line 131
    .end local v0  # "in":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1  # "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v11  # "inPath":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    :cond_184
    :goto_184
    return v0
.end method

.method public canBeUsedInPath(IIZI)Z
    .registers 7
    .param p1, "nCivID"  # I
    .param p2, "nProvinceID"  # I
    .param p3, "moveToFriendlyProvince"  # Z
    .param p4, "toProvinceID"  # I

    .line 182
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_e

    .line 183
    return v1

    .line 186
    :cond_e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v0

    if-ne v0, p1, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method protected final clearWas(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 319
    .local p1, "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1e

    .line 320
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->wasCities:Z

    .line 319
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 322
    .end local v0  # "i":I
    :cond_1e
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)Z
    .registers 13
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"  # F

    .line 76
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->iRouteSize:I

    if-lez v2, :cond_1f2

    .line 77
    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 79
    .local v2, "nPath":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/math/Vector2;>;"
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lRoute:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProv()Z

    move-result v3

    if-eqz v3, :cond_70

    .line 80
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_24
    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->iPrecision:I

    add-int/lit8 v4, v4, -0x2

    int-to-float v4, v4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->fMovingPercentage:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    if-ge v3, v4, :cond_6f

    .line 81
    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lRoute:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvPosX()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    mul-float v5, v5, p2

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v6, v6, v3

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 82
    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    mul-float v6, v6, p2

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 81
    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 80
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .end local v3  # "j":I
    :cond_6f
    goto :goto_ae

    .line 86
    :cond_70
    const/4 v3, 0x0

    .restart local v3  # "j":I
    :goto_71
    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->iPrecision:I

    int-to-float v4, v4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->fMovingPercentage:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    if-ge v3, v4, :cond_ae

    .line 87
    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPX()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    mul-float v5, v5, p2

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v6, v6, v3

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 88
    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    mul-float v6, v6, p2

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 87
    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 86
    add-int/lit8 v3, v3, 0x1

    goto :goto_71

    .line 92
    .end local v3  # "j":I
    :cond_ae
    :goto_ae
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->mainColor:Lcom/badlogic/gdx/graphics/Color;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->mainColor2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->fMovingPercentage:F

    const/high16 v6, 0x42c80000  # 100.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    const/16 v6, 0x64

    const v7, 0x3ecccccd  # 0.4f

    invoke-static {v3, v4, v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;IIF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    .line 94
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrewer/ShapeDrawer;

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v4, v5, v6, v8, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Lspace/earlygrey/shapedrewer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 96
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrewer/ShapeDrawer;

    const/high16 v4, 0x40300000  # 2.75f

    const/high16 v5, 0x3e800000  # 0.25f

    const/high16 v6, 0x3f400000  # 0.75f

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->fMovingPercentage:F

    mul-float v7, v7, v6

    add-float/2addr v7, v5

    mul-float v7, v7, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->widthPercentage:F

    mul-float v7, v7, v4

    sget-object v4, Lspace/earlygrey/shapedrewer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrewer/JoinType;

    invoke-virtual {v3, v2, v7, v4, v1}, Lspace/earlygrey/shapedrewer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrewer/JoinType;Z)V

    .line 98
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->fMovingPercentage:F

    const v4, 0x3f7d70a4  # 0.99f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1f2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lRoute:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProv()Z

    move-result v3

    if-eqz v3, :cond_1f2

    .line 99
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrewer/ShapeDrawer;

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v8, 0x3ee66666  # 0.45f

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->widthPercentage:F

    mul-float v9, v9, v8

    invoke-direct {v4, v5, v6, v7, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Lspace/earlygrey/shapedrewer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 101
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrewer/ShapeDrawer;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    array-length v5, v4

    sub-int/2addr v5, v1

    aget-object v4, v4, v5

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lRoute:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvPosX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    mul-float v4, v4, p2

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    array-length v6, v5

    sub-int/2addr v6, v1

    aget-object v5, v5, v6

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 102
    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    mul-float v5, v5, p2

    const/high16 v6, 0x41400000  # 12.0f

    mul-float v6, v6, p2

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->fMovingPercentage:F

    mul-float v6, v6, v7

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->widthPercentage:F

    mul-float v6, v6, v7

    .line 101
    invoke-virtual {v3, v4, v5, v6}, Lspace/earlygrey/shapedrewer/ShapeDrawer;->filledCircle(FFF)V

    .line 104
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrewer/ShapeDrawer;

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v8, 0x3f19999a  # 0.6f

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->widthPercentage:F

    mul-float v9, v9, v8

    invoke-direct {v4, v5, v6, v7, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Lspace/earlygrey/shapedrewer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 106
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrewer/ShapeDrawer;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    array-length v5, v4

    sub-int/2addr v5, v1

    aget-object v4, v4, v5

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lRoute:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvPosX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    mul-float v4, v4, p2

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    array-length v6, v5

    sub-int/2addr v6, v1

    aget-object v5, v5, v6

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 107
    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    mul-float v5, v5, p2

    const/high16 v6, 0x41800000  # 16.0f

    mul-float v6, v6, p2

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->fMovingPercentage:F

    mul-float v6, v6, v7

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->widthPercentage:F

    mul-float v6, v6, v7

    const/high16 v7, 0x40000000  # 2.0f

    mul-float v7, v7, p2

    .line 106
    invoke-virtual {v3, v4, v5, v6, v7}, Lspace/earlygrey/shapedrewer/ShapeDrawer;->circle(FFFF)V
    :try_end_1f2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1f2} :catch_1f3

    .line 112
    .end local v2  # "nPath":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/math/Vector2;>;"
    :cond_1f2
    goto :goto_1f7

    .line 110
    :catch_1f3
    move-exception v2

    .line 111
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 114
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_1f7
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->widthPercentage:F

    const v3, 0x3d4ccccd  # 0.05f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_201

    .line 115
    return v1

    .line 118
    :cond_201
    return v0
.end method

.method public draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)Z
    .registers 4
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"  # F

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public getFromProvinceID()I
    .registers 3

    .line 429
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lRoute:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getShiftPosXY()I
    .registers 3

    .line 373
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, -0xf

    return v0
.end method

.method public getToProvinceID()I
    .registers 3

    .line 433
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lRoute:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getToProvinceLastID()I
    .registers 3

    .line 437
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lRoute:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->iRouteSize:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isFriendlyProvince(II)Z
    .registers 4
    .param p1, "nCivID"  # I
    .param p2, "toProvinceID"  # I

    .line 178
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v0

    if-ne v0, p1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method protected final setPath(IILjava/util/List;II)V
    .registers 9
    .param p1, "p1"  # I
    .param p2, "p2"  # I
    .param p4, "toProvinceID"  # I
    .param p5, "fromProvinceID"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .line 325
    .local p3, "lPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lRoute:Ljava/util/List;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 328
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lRoute:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 330
    .end local v0  # "i":I
    :cond_1e
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lRoute:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p4, v0, :cond_3b

    .line 331
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lRoute:Ljava/util/List;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_3b
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->lRoute:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->iRouteSize:I

    .line 335
    return-void
.end method

.method public update()V
    .registers 2

    .line 68
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;->littleAnimationMainLine:Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits$LittleAnimation;

    invoke-interface {v0}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits$LittleAnimation;->update()V

    .line 69
    return-void
.end method
