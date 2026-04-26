.class public Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;
.super Ljava/lang/Object;
.source "ProvinceBorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;
    }
.end annotation


# static fields
.field public static joinType:Lspace/earlygrey/shapedrewer/JoinType;

.field public static joinType_Shadow:Lspace/earlygrey/shapedrewer/JoinType;

.field public static lineWidth:F

.field public static mapCordsPosY:I

.field public static pathProvinceBorderExtraWidth:F

.field public static pathProvinceBorderExtraWidth2:F


# instance fields
.field private civBorder:Z

.field public drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;

.field private iLineWidth:I

.field public nPath:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;"
        }
    .end annotation
.end field

.field public pX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field public pY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private pathLastPointX:I

.field private pathLastPointY:I

.field private provBorderLine:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;",
            ">;"
        }
    .end annotation
.end field

.field private provBorderLineSize:I

.field private wastelandBorder:Z

.field private withProvinceID:S


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 657
    sget-object v0, Lspace/earlygrey/shapedrewer/JoinType;->POINTY:Lspace/earlygrey/shapedrewer/JoinType;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->joinType:Lspace/earlygrey/shapedrewer/JoinType;

    .line 658
    sget-object v0, Lspace/earlygrey/shapedrewer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrewer/JoinType;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->joinType_Shadow:Lspace/earlygrey/shapedrewer/JoinType;

    .line 660
    const/high16 v0, 0x3f800000  # 1.0f

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->lineWidth:F

    .line 662
    const/4 v1, 0x0

    sput v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->mapCordsPosY:I

    .line 663
    sput v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->pathProvinceBorderExtraWidth:F

    .line 664
    sput v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->pathProvinceBorderExtraWidth2:F

    return-void
.end method

.method public constructor <init>(ILjava/util/List;Ljava/util/List;)V
    .registers 13
    .param p1, "withProvinceID"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    .line 62
    .local p2, "nPointsX":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Short;>;"
    .local p3, "nPointsY":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Short;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->nPath:Lcom/badlogic/gdx/utils/Array;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->civBorder:Z

    .line 29
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->wastelandBorder:Z

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    .line 37
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->iLineWidth:I

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->pX:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->pY:Ljava/util/List;

    .line 63
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_68

    .line 64
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v1

    mul-int v0, v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->pathLastPointX:I

    .line 65
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v1

    mul-int v0, v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->pathLastPointY:I

    .line 68
    :cond_68
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "iSize":I
    :goto_6f
    if-ge v0, v1, :cond_da

    .line 69
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Short;

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v5

    mul-int v4, v4, v5

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v6

    mul-int v5, v5, v6

    add-int/lit8 v6, v0, 0x1

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v7

    mul-int v6, v6, v7

    add-int/lit8 v7, v0, 0x1

    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Short;

    invoke-virtual {v7}, Ljava/lang/Short;->shortValue()S

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v8

    mul-int v7, v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_6f

    .line 72
    .end local v0  # "i":I
    .end local v1  # "iSize":I
    :cond_da
    const/4 v0, 0x0

    .restart local v0  # "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .restart local v1  # "iSize":I
    :goto_df
    if-ge v0, v1, :cond_fa

    .line 73
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->pX:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->pY:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_df

    .line 77
    .end local v0  # "i":I
    .end local v1  # "iSize":I
    :cond_fa
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLineSize:I

    .line 78
    int-to-short v0, p1

    iput-short v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->withProvinceID:S

    .line 80
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_106
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLineSize:I

    if-ge v0, v1, :cond_11e

    .line 81
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->iLineWidth:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->iLineWidth:I

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_106

    .line 84
    .end local v0  # "i":I
    :cond_11e
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_11f
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLineSize:I

    if-ge v0, v1, :cond_14b

    .line 85
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->nPath:Lcom/badlogic/gdx/utils/Array;

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosX()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosY()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_11f

    .line 87
    .end local v0  # "i":I
    :cond_14b
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->nPath:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->pathLastPointX:I

    int-to-float v2, v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->pathLastPointY:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;)I
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    .line 21
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->iLineWidth:I

    return v0
.end method

.method public static final drawProvBorder_Prepare()V
    .registers 5

    .line 669
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvProvinceBorder:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceBorder;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceBorder;->PROVINCE_BORDER_WIDTH_BASE:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->BORDER_EXTRA_THICKNESS:F

    add-float/2addr v0, v1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->lineWidth:F

    .line 671
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_32

    .line 672
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvProvinceBorder:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceBorder;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceBorder;->PROVINCE_BORDER_WIDTH_ZOOM_IN_EXTRA_LIMIT:F

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->lineWidth:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->lineWidth:F

    .line 675
    :cond_32
    sget v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->lineWidth:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->BORDER_EXTRA_WIDTH:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->lineWidth:F

    .line 677
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v0

    neg-int v0, v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->mapCordsPosY:I

    .line 678
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->provinceBorderValues:Lage/of/civilizations2/jakowski/lukasz/Province_Border_Values;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Values;->MAX_BORDER_WIDTH:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Renderer;->provinceBorderValues:Lage/of/civilizations2/jakowski/lukasz/Province_Border_Values;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Values;->MIN_BORDER_WIDTH:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Renderer;->provinceBorderValues:Lage/of/civilizations2/jakowski/lukasz/Province_Border_Values;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Values;->MAX_BORDER_WIDTH:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->BORDER_EXTRA_WIDTH:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->pathProvinceBorderExtraWidth:F

    .line 679
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Renderer;->provinceBorderValues:Lage/of/civilizations2/jakowski/lukasz/Province_Border_Values;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Values;->BORDER_WIDTH_DIVIDE:F

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->BORDER_EXTRA_WIDTH:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->pathProvinceBorderExtraWidth2:F

    .line 682
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Renderer;->provinceBorderValues:Lage/of/civilizations2/jakowski/lukasz/Province_Border_Values;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Values;->SCALE_NONE_NONE:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9c

    .line 683
    sget-object v0, Lspace/earlygrey/shapedrewer/JoinType;->NONE:Lspace/earlygrey/shapedrewer/JoinType;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->joinType:Lspace/earlygrey/shapedrewer/JoinType;

    .line 684
    sget-object v0, Lspace/earlygrey/shapedrewer/JoinType;->NONE:Lspace/earlygrey/shapedrewer/JoinType;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->joinType_Shadow:Lspace/earlygrey/shapedrewer/JoinType;

    goto :goto_f5

    .line 686
    :cond_9c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Renderer;->provinceBorderValues:Lage/of/civilizations2/jakowski/lukasz/Province_Border_Values;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Values;->SCALE_NONE_POINTY:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b7

    .line 687
    sget-object v0, Lspace/earlygrey/shapedrewer/JoinType;->NONE:Lspace/earlygrey/shapedrewer/JoinType;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->joinType:Lspace/earlygrey/shapedrewer/JoinType;

    .line 688
    sget-object v0, Lspace/earlygrey/shapedrewer/JoinType;->POINTY:Lspace/earlygrey/shapedrewer/JoinType;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->joinType_Shadow:Lspace/earlygrey/shapedrewer/JoinType;

    goto :goto_f5

    .line 690
    :cond_b7
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Renderer;->provinceBorderValues:Lage/of/civilizations2/jakowski/lukasz/Province_Border_Values;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Values;->SCALE_POINTY_POINTY:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_d2

    .line 691
    sget-object v0, Lspace/earlygrey/shapedrewer/JoinType;->POINTY:Lspace/earlygrey/shapedrewer/JoinType;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->joinType:Lspace/earlygrey/shapedrewer/JoinType;

    .line 692
    sget-object v0, Lspace/earlygrey/shapedrewer/JoinType;->POINTY:Lspace/earlygrey/shapedrewer/JoinType;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->joinType_Shadow:Lspace/earlygrey/shapedrewer/JoinType;

    goto :goto_f5

    .line 694
    :cond_d2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Renderer;->provinceBorderValues:Lage/of/civilizations2/jakowski/lukasz/Province_Border_Values;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Values;->SCALE_POINTY_SMOOTH:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_ed

    .line 695
    sget-object v0, Lspace/earlygrey/shapedrewer/JoinType;->POINTY:Lspace/earlygrey/shapedrewer/JoinType;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->joinType:Lspace/earlygrey/shapedrewer/JoinType;

    .line 696
    sget-object v0, Lspace/earlygrey/shapedrewer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrewer/JoinType;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->joinType_Shadow:Lspace/earlygrey/shapedrewer/JoinType;

    goto :goto_f5

    .line 699
    :cond_ed
    sget-object v0, Lspace/earlygrey/shapedrewer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrewer/JoinType;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->joinType:Lspace/earlygrey/shapedrewer/JoinType;

    .line 700
    sget-object v0, Lspace/earlygrey/shapedrewer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrewer/JoinType;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->joinType_Shadow:Lspace/earlygrey/shapedrewer/JoinType;

    .line 702
    :goto_f5
    return-void
.end method


# virtual methods
.method public final drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .registers 14
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iImageID"  # I
    .param p3, "offsetX"  # I
    .param p4, "nTranslateProvincePosX"  # I

    .line 934
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLineSize:I

    if-ge v0, v1, :cond_71

    .line 935
    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    .line 937
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosX()I

    move-result v2

    add-int v3, p4, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 938
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v2

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    .line 940
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v5

    .line 941
    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROVINCE_BORDER_DASHED_THICKNESS:I

    mul-int v6, v6, v2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    .line 942
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getAngle()F

    move-result v7

    .line 935
    move-object v2, p1

    move v8, p3

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFI)V

    .line 944
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v1

    add-int/2addr p3, v1

    .line 934
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 946
    .end local v0  # "i":I
    :cond_71
    return-void
.end method

.method public final drawDashedBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V
    .registers 19
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iImageID"  # I
    .param p3, "offsetX"  # I
    .param p4, "fPercent"  # F
    .param p5, "nTranslateProvincePosX"  # I

    .line 949
    move-object v0, p0

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->iLineWidth:I

    int-to-float v1, v1

    mul-float v1, v1, p4

    float-to-int v1, v1

    .line 951
    .local v1, "lineWidth":I
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    move v12, v3

    move v3, v2

    move/from16 v2, p3

    .end local p3  # "offsetX":I
    .local v2, "offsetX":I
    .local v3, "i":I
    .local v12, "currentWidth":I
    :goto_d
    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLineSize:I

    if-ge v3, v4, :cond_a0

    if-gt v12, v1, :cond_a0

    .line 952
    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    .line 954
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosX()I

    move-result v5

    add-int v6, p5, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 955
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v5

    iget-object v7, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosY()I

    move-result v7

    add-int/2addr v5, v7

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v7

    sub-int v7, v5, v7

    .line 957
    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v5

    add-int/2addr v5, v12

    if-gt v5, v1, :cond_62

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v5

    goto :goto_64

    :cond_62
    sub-int v5, v1, v12

    :goto_64
    move v8, v5

    .line 958
    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROVINCE_BORDER_DASHED_THICKNESS:I

    mul-int v9, v9, v5

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    .line 959
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getAngle()F

    move-result v10

    .line 952
    move-object v5, p1

    move v11, v2

    invoke-virtual/range {v4 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFI)V

    .line 961
    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 962
    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v4

    add-int/2addr v12, v4

    .line 951
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_d

    .line 964
    .end local v3  # "i":I
    .end local v12  # "currentWidth":I
    :cond_a0
    return-void
.end method

.method public final drawDashedBorder_PercentageWidth_Full_SeaBySea(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFILcom/badlogic/gdx/graphics/Color;)V
    .registers 23
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iImageID"  # I
    .param p3, "offsetX"  # I
    .param p4, "fPercent"  # F
    .param p5, "nTranslateProvincePosX"  # I
    .param p6, "activeColor"  # Lcom/badlogic/gdx/graphics/Color;

    .line 967
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->iLineWidth:I

    int-to-float v1, v1

    mul-float v1, v1, p4

    float-to-int v10, v1

    .line 969
    .local v10, "lineWidth":I
    const/4 v1, 0x0

    .line 970
    .local v1, "iBeginDraw_ID":I
    const/4 v2, 0x0

    .line 972
    .local v2, "currentWidth":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLineSize:I

    if-ge v3, v4, :cond_2b

    .line 973
    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 975
    if-lt v2, v10, :cond_28

    .line 976
    if-lez v3, :cond_26

    .line 977
    add-int/lit8 v1, v3, -0x1

    move v8, v2

    goto :goto_2c

    .line 976
    :cond_26
    move v8, v2

    goto :goto_2c

    .line 972
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_2b
    move v8, v2

    .line 983
    .end local v2  # "currentWidth":I
    .end local v3  # "i":I
    .local v8, "currentWidth":I
    :goto_2c
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_SEABYSEA:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move v11, v1

    .line 984
    .end local v1  # "iBeginDraw_ID":I
    .local v11, "iBeginDraw_ID":I
    :goto_32
    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLineSize:I

    if-ge v11, v1, :cond_9b

    .line 985
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    .line 986
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosX()I

    move-result v2

    add-int v3, p5, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 987
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v2

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    .line 989
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    .line 990
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROVINCE_BORDER_THICKNESS:I

    mul-int v6, v6, v2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    .line 991
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getAngle()F

    move-result v7

    .line 985
    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    .line 984
    add-int/lit8 v11, v11, 0x1

    goto :goto_32

    .line 994
    :cond_9b
    move-object/from16 v12, p6

    invoke-virtual {v9, v12}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 995
    const/4 v1, 0x0

    .line 997
    .end local v8  # "currentWidth":I
    .local v1, "currentWidth":I
    const/4 v2, 0x0

    move/from16 v13, p3

    move v14, v1

    move v15, v2

    .end local v1  # "currentWidth":I
    .end local p3  # "offsetX":I
    .local v13, "offsetX":I
    .local v14, "currentWidth":I
    .local v15, "i":I
    :goto_a6
    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLineSize:I

    if-ge v15, v1, :cond_13a

    if-gt v14, v10, :cond_13a

    .line 998
    invoke-static/range {p2 .. p2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    .line 1000
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosX()I

    move-result v2

    add-int v3, p5, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 1001
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v2

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    invoke-static/range {p2 .. p2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    .line 1003
    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v2

    add-int/2addr v2, v14

    if-gt v2, v10, :cond_fb

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v2

    goto :goto_fd

    :cond_fb
    sub-int v2, v10, v14

    :goto_fd
    move v5, v2

    .line 1004
    invoke-static/range {p2 .. p2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROVINCE_BORDER_DASHED_THICKNESS:I

    mul-int v6, v6, v2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    .line 1005
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getAngle()F

    move-result v7

    .line 998
    move-object/from16 v2, p1

    move v8, v13

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFI)V

    .line 1007
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v1

    add-int/2addr v13, v1

    .line 1008
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v1

    add-int/2addr v14, v1

    .line 997
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_a6

    .line 1010
    .end local v15  # "i":I
    :cond_13a
    return-void
.end method

.method public final drawDashedBorder_PercentageWidth_Full_Straight(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;II)V
    .registers 25
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "fPercent"  # F
    .param p3, "nTranslateProvincePosX"  # I
    .param p4, "activeColor"  # Lcom/badlogic/gdx/graphics/Color;
    .param p5, "oldColor"  # Lcom/badlogic/gdx/graphics/Color;
    .param p6, "nImageIDActive"  # I
    .param p7, "nImageIDOld"  # I

    .line 830
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->iLineWidth:I

    int-to-float v1, v1

    mul-float v1, v1, p2

    float-to-int v10, v1

    .line 832
    .local v10, "lineWidth":I
    const/4 v1, 0x0

    .line 833
    .local v1, "iBeginDraw_ID":I
    const/4 v2, 0x0

    .line 835
    .local v2, "currentWidth":I
    const/4 v8, 0x0

    .line 837
    .local v8, "offsetX":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLineSize:I

    if-ge v3, v4, :cond_2c

    .line 838
    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 840
    if-lt v2, v10, :cond_29

    .line 841
    if-lez v3, :cond_27

    .line 842
    add-int/lit8 v1, v3, -0x1

    move v11, v2

    goto :goto_2d

    .line 841
    :cond_27
    move v11, v2

    goto :goto_2d

    .line 837
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_2c
    move v11, v2

    .line 848
    .end local v2  # "currentWidth":I
    .end local v3  # "i":I
    .local v11, "currentWidth":I
    :goto_2d
    move-object/from16 v12, p5

    invoke-virtual {v9, v12}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move v13, v1

    .line 849
    .end local v1  # "iBeginDraw_ID":I
    .local v13, "iBeginDraw_ID":I
    :goto_33
    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLineSize:I

    if-ge v13, v1, :cond_96

    .line 850
    invoke-static/range {p6 .. p6}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    .line 851
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosX()I

    move-result v2

    add-int v3, p3, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 852
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v2

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    invoke-static/range {p6 .. p6}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    .line 854
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v5

    .line 855
    invoke-static/range {p6 .. p6}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROVINCE_BORDER_THICKNESS:I

    mul-int v6, v6, v2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    .line 856
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getAngle()F

    move-result v7

    .line 850
    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    .line 849
    add-int/lit8 v13, v13, 0x1

    goto :goto_33

    .line 859
    :cond_96
    move-object/from16 v14, p4

    invoke-virtual {v9, v14}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 860
    const/4 v1, 0x0

    .line 861
    .end local v11  # "currentWidth":I
    .local v1, "currentWidth":I
    const/4 v2, 0x0

    move v11, v1

    move v15, v2

    move/from16 v16, v8

    .end local v1  # "currentWidth":I
    .end local v8  # "offsetX":I
    .restart local v11  # "currentWidth":I
    .local v15, "i":I
    .local v16, "offsetX":I
    :goto_a1
    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLineSize:I

    if-ge v15, v1, :cond_139

    if-gt v11, v10, :cond_139

    if-ge v15, v13, :cond_139

    .line 862
    invoke-static/range {p7 .. p7}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    .line 863
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosX()I

    move-result v2

    add-int v3, p3, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 864
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v2

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    invoke-static/range {p7 .. p7}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    .line 866
    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v2

    add-int/2addr v2, v11

    if-gt v2, v10, :cond_f8

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v2

    goto :goto_fa

    :cond_f8
    sub-int v2, v10, v11

    :goto_fa
    move v5, v2

    .line 867
    invoke-static/range {p7 .. p7}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROVINCE_BORDER_THICKNESS:I

    mul-int v6, v6, v2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    .line 868
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getAngle()F

    move-result v7

    .line 862
    move-object/from16 v2, p1

    move/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFI)V

    .line 870
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v1

    add-int/2addr v11, v1

    .line 871
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v1

    add-int v16, v16, v1

    .line 861
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_a1

    .line 873
    .end local v15  # "i":I
    :cond_139
    return-void
.end method

.method public final drawDashedBorder_PercentageWidth_Full_Straight(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .registers 24
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iImageID"  # I
    .param p3, "offsetX"  # I
    .param p4, "fPercent"  # F
    .param p5, "nTranslateProvincePosX"  # I
    .param p6, "activeColor"  # Lcom/badlogic/gdx/graphics/Color;
    .param p7, "oldColor"  # Lcom/badlogic/gdx/graphics/Color;

    .line 743
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->iLineWidth:I

    int-to-float v1, v1

    mul-float v1, v1, p4

    float-to-int v10, v1

    .line 745
    .local v10, "lineWidth":I
    const/4 v1, 0x0

    .line 746
    .local v1, "iBeginDraw_ID":I
    const/4 v2, 0x0

    .line 748
    .local v2, "currentWidth":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLineSize:I

    if-ge v3, v4, :cond_2b

    .line 749
    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 751
    if-lt v2, v10, :cond_28

    .line 752
    if-lez v3, :cond_26

    .line 753
    add-int/lit8 v1, v3, -0x1

    move v8, v2

    goto :goto_2c

    .line 752
    :cond_26
    move v8, v2

    goto :goto_2c

    .line 748
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_2b
    move v8, v2

    .line 759
    .end local v2  # "currentWidth":I
    .end local v3  # "i":I
    .local v8, "currentWidth":I
    :goto_2c
    move-object/from16 v11, p7

    invoke-virtual {v9, v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move v12, v1

    .line 760
    .end local v1  # "iBeginDraw_ID":I
    .local v12, "iBeginDraw_ID":I
    :goto_32
    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLineSize:I

    if-ge v12, v1, :cond_9b

    .line 761
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    .line 762
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosX()I

    move-result v2

    add-int v3, p5, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 763
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v2

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    .line 765
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    .line 766
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROVINCE_BORDER_THICKNESS:I

    mul-int v6, v6, v2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    .line 767
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getAngle()F

    move-result v7

    .line 761
    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    .line 760
    add-int/lit8 v12, v12, 0x1

    goto :goto_32

    .line 770
    :cond_9b
    move-object/from16 v13, p6

    invoke-virtual {v9, v13}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 771
    const/4 v1, 0x0

    .line 772
    .end local v8  # "currentWidth":I
    .local v1, "currentWidth":I
    const/4 v2, 0x0

    move/from16 v14, p3

    move v15, v1

    move v8, v2

    .end local v1  # "currentWidth":I
    .end local p3  # "offsetX":I
    .local v8, "i":I
    .local v14, "offsetX":I
    .local v15, "currentWidth":I
    :goto_a6
    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLineSize:I

    if-ge v8, v1, :cond_13d

    if-gt v15, v10, :cond_13d

    .line 773
    invoke-static/range {p2 .. p2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    .line 774
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosX()I

    move-result v2

    add-int v3, p5, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 775
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v2

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    invoke-static/range {p2 .. p2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    .line 777
    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v2

    add-int/2addr v2, v15

    if-gt v2, v10, :cond_fb

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v2

    goto :goto_fd

    :cond_fb
    sub-int v2, v10, v15

    :goto_fd
    move v5, v2

    .line 778
    invoke-static/range {p2 .. p2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROVINCE_BORDER_DASHED_THICKNESS:I

    mul-int v6, v6, v2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    .line 779
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getAngle()F

    move-result v7

    .line 773
    move-object/from16 v2, p1

    move v9, v8

    .end local v8  # "i":I
    .local v9, "i":I
    move v8, v14

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFI)V

    .line 781
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v1

    add-int/2addr v14, v1

    .line 782
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v1

    add-int/2addr v15, v1

    .line 772
    add-int/lit8 v8, v9, 0x1

    move-object/from16 v9, p1

    .end local v9  # "i":I
    .restart local v8  # "i":I
    goto/16 :goto_a6

    :cond_13d
    move v9, v8

    .line 784
    .end local v8  # "i":I
    return-void
.end method

.method public final drawInnerBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .registers 5
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nTranslateProvincePosX"  # I

    .line 930
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getDashedImage()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 931
    return-void
.end method

.method public final drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nTranslateProvincePosX"  # I

    .line 721
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrewer/ShapeDrawer;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lspace/earlygrey/shapedrewer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 722
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrewer/ShapeDrawer;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->nPath:Lcom/badlogic/gdx/utils/Array;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->lineWidth:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->joinType:Lspace/earlygrey/shapedrewer/JoinType;

    int-to-float v7, p2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->mapCordsPosY:I

    int-to-float v8, v0

    const/4 v6, 0x1

    invoke-virtual/range {v2 .. v8}, Lspace/earlygrey/shapedrewer/ShapeDrawer;->path2(Ljava/lang/Iterable;FLspace/earlygrey/shapedrewer/JoinType;ZFF)V

    .line 723
    return-void
.end method

.method public final drawStraightBorder_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nTranslateProvincePosX"  # I

    .line 709
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLineSize:I

    if-ge v0, v1, :cond_69

    .line 710
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    .line 711
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosX()I

    move-result v1

    add-int v4, p2, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 712
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosY()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int v5, v1, v3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    .line 714
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v6

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    .line 715
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROVINCE_BORDER_THICKNESS:I

    mul-int v7, v1, v3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    .line 716
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getAngle()F

    move-result v8

    .line 710
    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    .line 709
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 718
    .end local v0  # "i":I
    :cond_69
    return-void
.end method

.method public final drawStraightBorder_PercWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V
    .registers 15
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "fPercent"  # F
    .param p3, "nTranslateProvincePosX"  # I

    .line 727
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->iLineWidth:I

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int v0, v0

    .line 729
    .local v0, "lineWidth":I
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "currentWidth":I
    :goto_8
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLineSize:I

    if-ge v1, v3, :cond_93

    if-gt v2, v0, :cond_93

    .line 730
    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    .line 731
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosX()I

    move-result v3

    add-int v6, p3, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 732
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v3

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosY()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    sub-int v7, v3, v5

    .line 734
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    if-gt v3, v0, :cond_61

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v3

    goto :goto_63

    :cond_61
    sub-int v3, v0, v2

    :goto_63
    move v8, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    .line 735
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROVINCE_BORDER_THICKNESS:I

    mul-int v9, v3, v5

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    .line 736
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getAngle()F

    move-result v10

    .line 730
    move-object v5, p1

    invoke-virtual/range {v4 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    .line 738
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 729
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8

    .line 740
    .end local v1  # "i":I
    .end local v2  # "currentWidth":I
    :cond_93
    return-void
.end method

.method public final drawStraightBorder_PercentageWidth_Full_Dashed(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .registers 21
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "fPercent"  # F
    .param p3, "nTranslateProvincePosX"  # I
    .param p4, "activeColor"  # Lcom/badlogic/gdx/graphics/Color;
    .param p5, "oldColor"  # Lcom/badlogic/gdx/graphics/Color;

    .line 876
    move-object v0, p0

    move-object/from16 v9, p1

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->iLineWidth:I

    int-to-float v1, v1

    mul-float v1, v1, p2

    float-to-int v10, v1

    .line 878
    .local v10, "lineWidth":I
    const/4 v1, 0x0

    .line 879
    .local v1, "iBeginDraw_ID":I
    const/4 v2, 0x0

    .line 881
    .local v2, "currentWidth":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLineSize:I

    if-ge v3, v4, :cond_45

    .line 882
    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 884
    if-lt v2, v10, :cond_42

    .line 885
    if-lez v3, :cond_40

    .line 886
    add-int/lit8 v1, v3, -0x1

    .line 887
    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v4

    sub-int/2addr v2, v4

    .line 888
    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    add-int/lit8 v5, v3, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v4

    sub-int/2addr v2, v4

    goto :goto_45

    .line 890
    :cond_40
    const/4 v2, 0x0

    .line 892
    goto :goto_45

    .line 881
    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 896
    .end local v3  # "i":I
    :cond_45
    :goto_45
    move-object/from16 v11, p5

    invoke-virtual {v9, v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move v12, v1

    move v13, v2

    .line 897
    .end local v1  # "iBeginDraw_ID":I
    .end local v2  # "currentWidth":I
    .local v12, "iBeginDraw_ID":I
    .local v13, "currentWidth":I
    :goto_4c
    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLineSize:I

    if-ge v12, v1, :cond_c9

    .line 898
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getDashedImage()I

    move-result v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    .line 900
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosX()I

    move-result v2

    add-int v3, p3, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 901
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v2

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getDashedImage()I

    move-result v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    .line 903
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v5

    .line 904
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getDashedImage()I

    move-result v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROVINCE_BORDER_DASHED_THICKNESS:I

    mul-int v6, v6, v2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    .line 905
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getAngle()F

    move-result v7

    .line 898
    move-object/from16 v2, p1

    move v8, v13

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFI)V

    .line 907
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v1

    add-int/2addr v13, v1

    .line 897
    add-int/lit8 v12, v12, 0x1

    goto :goto_4c

    .line 910
    :cond_c9
    move-object/from16 v8, p4

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 911
    const/4 v1, 0x0

    .line 912
    .end local v13  # "currentWidth":I
    .local v1, "currentWidth":I
    const/4 v2, 0x0

    move v13, v1

    move v14, v2

    .end local v1  # "currentWidth":I
    .restart local v13  # "currentWidth":I
    .local v14, "i":I
    :goto_d2
    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLineSize:I

    if-ge v14, v1, :cond_15e

    if-gt v13, v10, :cond_15e

    .line 913
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    .line 914
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosX()I

    move-result v2

    add-int v3, p3, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 915
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v2

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    .line 917
    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v2

    add-int/2addr v2, v13

    if-gt v2, v10, :cond_12b

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v2

    goto :goto_12d

    :cond_12b
    sub-int v2, v10, v13

    :goto_12d
    move v5, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    .line 918
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROVINCE_BORDER_THICKNESS:I

    mul-int v6, v6, v2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    .line 919
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getAngle()F

    move-result v7

    .line 913
    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    .line 921
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v1

    add-int/2addr v13, v1

    .line 912
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_d2

    .line 923
    .end local v14  # "i":I
    :cond_15e
    return-void
.end method

.method public final drawStraightBorder_PercentageWidth_Full_Straight(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .registers 21
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "fPercent"  # F
    .param p3, "nTranslateProvincePosX"  # I
    .param p4, "activeColor"  # Lcom/badlogic/gdx/graphics/Color;
    .param p5, "oldColor"  # Lcom/badlogic/gdx/graphics/Color;

    .line 787
    move-object v0, p0

    move-object/from16 v8, p1

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->iLineWidth:I

    int-to-float v1, v1

    mul-float v1, v1, p2

    float-to-int v9, v1

    .line 789
    .local v9, "lineWidth":I
    const/4 v1, 0x0

    .line 790
    .local v1, "iBeginDraw_ID":I
    const/4 v2, 0x0

    .line 792
    .local v2, "currentWidth":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLineSize:I

    if-ge v3, v4, :cond_2a

    .line 793
    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 795
    if-lt v2, v9, :cond_27

    .line 796
    if-lez v3, :cond_25

    .line 797
    add-int/lit8 v1, v3, -0x1

    move v10, v2

    goto :goto_2b

    .line 796
    :cond_25
    move v10, v2

    goto :goto_2b

    .line 792
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_2a
    move v10, v2

    .line 803
    .end local v2  # "currentWidth":I
    .end local v3  # "i":I
    .local v10, "currentWidth":I
    :goto_2b
    move-object/from16 v11, p5

    invoke-virtual {v8, v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move v12, v1

    .line 804
    .end local v1  # "iBeginDraw_ID":I
    .local v12, "iBeginDraw_ID":I
    :goto_31
    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLineSize:I

    if-ge v12, v1, :cond_9a

    .line 805
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    .line 806
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosX()I

    move-result v2

    add-int v3, p3, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 807
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v2

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    .line 809
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    .line 810
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROVINCE_BORDER_THICKNESS:I

    mul-int v6, v6, v2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    .line 811
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getAngle()F

    move-result v7

    .line 805
    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    .line 804
    add-int/lit8 v12, v12, 0x1

    goto :goto_31

    .line 814
    :cond_9a
    move-object/from16 v13, p4

    invoke-virtual {v8, v13}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 815
    const/4 v1, 0x0

    .line 816
    .end local v10  # "currentWidth":I
    .local v1, "currentWidth":I
    const/4 v2, 0x0

    move v10, v1

    move v14, v2

    .end local v1  # "currentWidth":I
    .restart local v10  # "currentWidth":I
    .local v14, "i":I
    :goto_a3
    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLineSize:I

    if-ge v14, v1, :cond_12f

    if-gt v10, v9, :cond_12f

    .line 817
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    .line 818
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosX()I

    move-result v2

    add-int v3, p3, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 819
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v2

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    .line 821
    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v2

    add-int/2addr v2, v10

    if-gt v2, v9, :cond_fc

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v2

    goto :goto_fe

    :cond_fc
    sub-int v2, v9, v10

    :goto_fe
    move v5, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    .line 822
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROVINCE_BORDER_THICKNESS:I

    mul-int v6, v6, v2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    .line 823
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getAngle()F

    move-result v7

    .line 817
    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    .line 825
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLine:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v1

    add-int/2addr v10, v1

    .line 816
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_a3

    .line 827
    .end local v14  # "i":I
    :cond_12f
    return-void
.end method

.method public final getDashedImage()I
    .registers 2

    .line 926
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line32:I

    return v0
.end method

.method public final getIsCivilizationBorder()Z
    .registers 2

    .line 1024
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->civBorder:Z

    return v0
.end method

.method public final getIsWastelandBorder()Z
    .registers 2

    .line 1020
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->wastelandBorder:Z

    return v0
.end method

.method public final getWithProvinceID()I
    .registers 2

    .line 1016
    iget-short v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->withProvinceID:S

    return v0
.end method

.method public final setIsCivilizationBorder(ZI)V
    .registers 3
    .param p1, "civilizationBorder"  # Z
    .param p2, "iProvinceID"  # I

    .line 1028
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->civBorder:Z

    .line 1030
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->updateDrawProvinceBorder(I)V

    .line 1031
    return-void
.end method

.method public final setIsCivilizationBorder_Just(ZI)V
    .registers 3
    .param p1, "civilizationBorder"  # Z
    .param p2, "iProvinceID"  # I

    .line 1034
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->civBorder:Z

    .line 1036
    return-void
.end method

.method public final setIsCivilizationBorder_OwnerAnimation(ZI)V
    .registers 3
    .param p1, "civilizationBorder"  # Z
    .param p2, "iProvinceID"  # I

    .line 1039
    invoke-virtual {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->updateDrawProvinceBorder_OwnerAnimation(ZI)V

    .line 1041
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->civBorder:Z

    .line 1042
    return-void
.end method

.method public final setIsWastelandBorder(ZI)V
    .registers 3
    .param p1, "wastelandBorder"  # Z
    .param p2, "iProvinceID"  # I

    .line 1045
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->wastelandBorder:Z

    .line 1047
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->updateDrawProvinceBorder(I)V

    .line 1048
    return-void
.end method

.method public final updateDrawProvBorder_ActiveSeaBySea_Percentage()V
    .registers 2

    .line 514
    :try_start_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$24;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$24;-><init>(Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;
    :try_end_7
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_7} :catch_8

    .line 523
    goto :goto_9

    .line 521
    :catch_8
    move-exception v0

    .line 524
    :goto_9
    return-void
.end method

.method public final updateDrawProvBorder_ActiveSea_Dashed()V
    .registers 2

    .line 500
    :try_start_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$23;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$23;-><init>(Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;
    :try_end_7
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_7} :catch_8

    .line 509
    goto :goto_9

    .line 507
    :catch_8
    move-exception v0

    .line 510
    :goto_9
    return-void
.end method

.method public final updateDrawProvBorder_CivilizationRegion2()V
    .registers 3

    .line 399
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapProvBorder(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 400
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$16;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$16;-><init>(Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;

    goto :goto_1d

    .line 409
    :cond_16
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$17;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$17;-><init>(Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;
    :try_end_1d
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 420
    :goto_1d
    goto :goto_1f

    .line 418
    :catch_1e
    move-exception v0

    .line 421
    :goto_1f
    return-void
.end method

.method public final updateDrawProvinceBorder(I)V
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 95
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-short v1, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->withProvinceID:S

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v0

    if-ltz v0, :cond_1a

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v0

    if-ltz v0, :cond_34

    :cond_1a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v0

    if-ltz v0, :cond_4c

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-short v1, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->withProvinceID:S

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v0

    if-gez v0, :cond_4c

    .line 96
    :cond_34
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProv(I)Z

    move-result v0

    if-nez v0, :cond_47

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProv(I)Z

    move-result v0

    if-eqz v0, :cond_41

    goto :goto_47

    .line 101
    :cond_41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->wastelandBorder:Z

    .line 102
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->civBorder:Z

    goto :goto_4c

    .line 97
    :cond_47
    :goto_47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->wastelandBorder:Z

    .line 98
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->civBorder:Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4c} :catch_4f
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_4c} :catch_4d

    .line 108
    :cond_4c
    :goto_4c
    goto :goto_50

    .line 195
    :catch_4d
    move-exception v0

    goto :goto_a9

    .line 106
    :catch_4f
    move-exception v0

    .line 110
    :goto_50
    :try_start_50
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getIsWastelandBorder()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 111
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getIsCivilizationBorder()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 112
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapProvBorder(I)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 113
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$1;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;

    goto :goto_a9

    .line 122
    :cond_72
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$2;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;

    goto :goto_a9

    .line 132
    :cond_7a
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$3;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;

    goto :goto_a9

    .line 140
    :cond_82
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getIsCivilizationBorder()Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 141
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapProvBorder(I)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 142
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$4;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;

    goto :goto_a9

    .line 151
    :cond_9e
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$5;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;

    goto :goto_a9

    .line 193
    :cond_a6
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->updateDrawProvinceBorder_Inner(I)V
    :try_end_a9
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_50 .. :try_end_a9} :catch_4d

    .line 198
    :goto_a9
    return-void
.end method

.method public final updateDrawProvinceBorderSeaBySea()V
    .registers 3

    .line 319
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapProvBorder(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 320
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$10;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$10;-><init>(Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;

    goto :goto_1d

    .line 330
    :cond_16
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$11;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$11;-><init>(Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;
    :try_end_1d
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 342
    :goto_1d
    goto :goto_1f

    .line 340
    :catch_1e
    move-exception v0

    .line 343
    :goto_1f
    return-void
.end method

.method public final updateDrawProvinceBorder_Active()V
    .registers 3

    .line 425
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapProvBorder(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 426
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$18;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$18;-><init>(Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;

    goto :goto_1d

    .line 435
    :cond_16
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$19;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$19;-><init>(Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;
    :try_end_1d
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 446
    :goto_1d
    goto :goto_1f

    .line 444
    :catch_1e
    move-exception v0

    .line 447
    :goto_1f
    return-void
.end method

.method public final updateDrawProvinceBorder_ActiveDashed()V
    .registers 2

    .line 451
    :try_start_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$20;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$20;-><init>(Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;
    :try_end_7
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_7} :catch_8

    .line 460
    goto :goto_9

    .line 458
    :catch_8
    move-exception v0

    .line 461
    :goto_9
    return-void
.end method

.method public final updateDrawProvinceBorder_ActiveLandBySea_Percentage()V
    .registers 2

    .line 528
    :try_start_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$25;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$25;-><init>(Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;
    :try_end_7
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_7} :catch_8

    .line 537
    goto :goto_9

    .line 535
    :catch_8
    move-exception v0

    .line 538
    :goto_9
    return-void
.end method

.method public final updateDrawProvinceBorder_ActiveSea()V
    .registers 2

    .line 485
    :try_start_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$22;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$22;-><init>(Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;
    :try_end_7
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_7} :catch_8

    .line 495
    goto :goto_9

    .line 493
    :catch_8
    move-exception v0

    .line 496
    :goto_9
    return-void
.end method

.method public final updateDrawProvinceBorder_Active_Percentage()V
    .registers 2

    .line 465
    :try_start_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$21;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$21;-><init>(Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;
    :try_end_7
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_7} :catch_8

    .line 480
    goto :goto_9

    .line 478
    :catch_8
    move-exception v0

    .line 481
    :goto_9
    return-void
.end method

.method public final updateDrawProvinceBorder_CivRegion()V
    .registers 3

    .line 373
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapProvBorder(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 374
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$14;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$14;-><init>(Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;

    goto :goto_1d

    .line 383
    :cond_16
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$15;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;
    :try_end_1d
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 394
    :goto_1d
    goto :goto_1f

    .line 392
    :catch_1e
    move-exception v0

    .line 395
    :goto_1f
    return-void
.end method

.method public final updateDrawProvinceBorder_Inner(I)V
    .registers 3
    .param p1, "nProvinceID"  # I

    .line 266
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->ENABLE_INNERBORDERS:Z

    if-eqz v0, :cond_e

    .line 296
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$8;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$8;-><init>(Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;

    goto :goto_15

    .line 305
    :cond_e
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$9;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$9;-><init>(Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;
    :try_end_15
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_15} :catch_16

    .line 314
    :goto_15
    goto :goto_17

    .line 312
    :catch_16
    move-exception v0

    .line 315
    :goto_17
    return-void
.end method

.method public final updateDrawProvinceBorder_MoveUnits()V
    .registers 3

    .line 542
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapProvBorder(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 543
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$26;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$26;-><init>(Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;

    goto :goto_1d

    .line 556
    :cond_16
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$27;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$27;-><init>(Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;
    :try_end_1d
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 571
    :goto_1d
    goto :goto_1f

    .line 569
    :catch_1e
    move-exception v0

    .line 572
    :goto_1f
    return-void
.end method

.method public final updateDrawProvinceBorder_MoveUnits_Percentage()V
    .registers 2

    .line 576
    :try_start_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$28;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$28;-><init>(Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;
    :try_end_7
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_7} :catch_8

    .line 599
    goto :goto_9

    .line 597
    :catch_8
    move-exception v0

    .line 600
    :goto_9
    return-void
.end method

.method public final updateDrawProvinceBorder_MoveUnits_Percentage_LandBySea()V
    .registers 2

    .line 622
    :try_start_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$30;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$30;-><init>(Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;
    :try_end_7
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_7} :catch_8

    .line 635
    goto :goto_9

    .line 633
    :catch_8
    move-exception v0

    .line 636
    :goto_9
    return-void
.end method

.method public final updateDrawProvinceBorder_MoveUnits_Percentage_Sea()V
    .registers 2

    .line 640
    :try_start_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$31;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$31;-><init>(Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;
    :try_end_7
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_7} :catch_8

    .line 652
    goto :goto_9

    .line 650
    :catch_8
    move-exception v0

    .line 653
    :goto_9
    return-void
.end method

.method public final updateDrawProvinceBorder_MoveUnits_Sea()V
    .registers 2

    .line 604
    :try_start_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$29;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$29;-><init>(Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;
    :try_end_7
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_7} :catch_8

    .line 617
    goto :goto_9

    .line 615
    :catch_8
    move-exception v0

    .line 618
    :goto_9
    return-void
.end method

.method public final updateDrawProvinceBorder_OwnerAnimation(ZI)V
    .registers 7
    .param p1, "newState_IsCivBorder"  # Z
    .param p2, "nProvinceID"  # I

    .line 202
    :try_start_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getIsWastelandBorder()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 203
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->updateDrawProvinceBorder(I)V

    goto/16 :goto_af

    .line 205
    :cond_b
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->civBorder:Z
    :try_end_d
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_d} :catch_b0

    const-string v1, "_"

    const-string v2, ""

    if-ne p1, v0, :cond_3b

    .line 206
    :try_start_13
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->updateDrawProvinceBorder(I)V

    .line 208
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROVINCE_BORDER_ANIMATION_TIME:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->iLineWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_af

    .line 210
    :cond_3b
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->provBorderLineSize:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_46

    .line 211
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->civBorder:Z

    .line 212
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->updateDrawProvinceBorder(I)V

    goto :goto_af

    .line 214
    :cond_46
    if-eqz p1, :cond_7c

    .line 215
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROVINCE_BORDER_ANIMATION_TIME:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->iLineWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$6;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;

    goto :goto_af

    .line 238
    :cond_7c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROVINCE_BORDER_ANIMATION_TIME:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->iLineWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$7;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$7;-><init>(Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;
    :try_end_af
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_13 .. :try_end_af} :catch_b0

    .line 261
    :goto_af
    goto :goto_b1

    .line 259
    :catch_b0
    move-exception v0

    .line 262
    :goto_b1
    return-void
.end method

.method public final updateDrawProvinceBorder_SelectedProvinces()V
    .registers 3

    .line 347
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapProvBorder(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 348
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$12;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$12;-><init>(Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;

    goto :goto_1d

    .line 357
    :cond_16
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$13;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$13;-><init>(Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;
    :try_end_1d
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 368
    :goto_1d
    goto :goto_1f

    .line 366
    :catch_1e
    move-exception v0

    .line 369
    :goto_1f
    return-void
.end method
