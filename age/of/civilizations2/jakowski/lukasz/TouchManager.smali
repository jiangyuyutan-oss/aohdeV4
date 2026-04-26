.class public Lage/of/civilizations2/jakowski/lukasz/TouchManager;
.super Ljava/lang/Object;
.source "TouchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/TouchManager$ReverseDirection;,
        Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;,
        Lage/of/civilizations2/jakowski/lukasz/TouchManager$ReverseDirection2;
    }
.end annotation


# static fields
.field public static bSMD:Z

.field public static lMABX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static rODS:I


# instance fields
.field private actDPoX:I

.field private actDPoY:I

.field private actDTm:J

.field private actionBrush:Z

.field private actionBrushMove:Z

.field private actionMap:Z

.field public enSMD:Z

.field private enableScaling:Z

.field public iSBXH:I

.field public iSBXW:I

.field public iSBXX:I

.field public iSBXY:I

.field private mAcUEA:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

.field private mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

.field private mAxDEA:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

.field private mpAMEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

.field private revDirectionX:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ReverseDirection;

.field private revDirectionX2:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ReverseDirection2;

.field private revDirectionY:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ReverseDirection;

.field private revDirectionY2:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ReverseDirection2;

.field private stMvPX:I

.field private stMvPY:I

.field private updateStartMovePosX:Z

.field private updateStartMovePosY:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->bSMD:Z

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->lMABX:Ljava/util/List;

    .line 298
    const/4 v0, -0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->rODS:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->actionMap:Z

    .line 48
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->actDTm:J

    .line 50
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->enableScaling:Z

    .line 52
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->actionBrushMove:Z

    .line 53
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->actionBrush:Z

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->enSMD:Z

    .line 105
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->buildReversePosX()V

    .line 106
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->buildReversePosY()V

    .line 107
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->buildReversePosX2()V

    .line 108
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->buildReversePosY2()V

    .line 110
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->ueExA()V

    .line 111
    return-void
.end method

.method public static final aUSMIIBXC(IIIII)Z
    .registers 10
    .param p0, "nProvinceID"  # I
    .param p1, "nMinX"  # I
    .param p2, "nMinY"  # I
    .param p3, "nMaxX"  # I
    .param p4, "nMaxY"  # I

    .line 1215
    :try_start_0
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->getDetailsPosX2N(I)I

    move-result v0

    .line 1216
    .local v0, "nX":I
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->getDetailsPosY2N(I)I

    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_25

    .line 1217
    .local v1, "nY":I
    const/4 v2, 0x1

    .line 1218
    .local v2, "nWidth":I
    const/4 v3, 0x1

    .line 1221
    .local v3, "nHeight":I
    if-ge v0, p3, :cond_e

    if-gt v0, p1, :cond_16

    :cond_e
    add-int v4, v0, v2

    if-ge v4, p3, :cond_24

    add-int v4, v0, v2

    if-le v4, p1, :cond_24

    .line 1222
    :cond_16
    if-le v1, p2, :cond_1a

    if-lt v1, p4, :cond_22

    :cond_1a
    add-int v4, v1, v3

    if-le v4, p2, :cond_24

    add-int v4, v1, v3

    if-ge v4, p4, :cond_24

    .line 1223
    :cond_22
    const/4 v4, 0x1

    return v4

    .line 1228
    .end local v0  # "nX":I
    .end local v1  # "nY":I
    .end local v2  # "nWidth":I
    .end local v3  # "nHeight":I
    :cond_24
    goto :goto_29

    .line 1226
    :catch_25
    move-exception v0

    .line 1227
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1230
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_29
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)Z
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    .line 34
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->actionBrush:Z

    return v0
.end method

.method static synthetic access$002(Lage/of/civilizations2/jakowski/lukasz/TouchManager;Z)Z
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/TouchManager;
    .param p1, "x1"  # Z

    .line 34
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->actionBrush:Z

    return p1
.end method

.method static synthetic access$100(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)Z
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    .line 34
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->actionBrushMove:Z

    return v0
.end method

.method static synthetic access$102(Lage/of/civilizations2/jakowski/lukasz/TouchManager;Z)Z
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/TouchManager;
    .param p1, "x1"  # Z

    .line 34
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->actionBrushMove:Z

    return p1
.end method

.method public static final adMABX(I)V
    .registers 5
    .param p0, "provinceID"  # I

    .line 303
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->lMABX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 304
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->rODS:I

    .line 307
    :cond_10
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->civsSize:I

    if-ge v0, v1, :cond_4e

    .line 308
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId(I)I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    if-ne v1, v2, :cond_4b

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyID(I)I

    move-result v1

    if-lez v1, :cond_4b

    .line 309
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->lMABX:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4a} :catch_4f

    .line 311
    return-void

    .line 307
    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 316
    .end local v0  # "i":I
    :cond_4e
    goto :goto_53

    .line 314
    :catch_4f
    move-exception v0

    .line 315
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 317
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_53
    return-void
.end method

.method public static final cMABX()V
    .registers 4

    .line 329
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->lMABX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v0, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->lMABX:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 332
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->lMABX:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 334
    .end local v1  # "i":I
    :cond_24
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->lMABX:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 336
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_2a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_46

    .line 337
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateDrawArmyInProv()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_47

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 342
    .end local v0  # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1  # "i":I
    :cond_46
    goto :goto_4b

    .line 340
    :catch_47
    move-exception v0

    .line 341
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 343
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_4b
    return-void
.end method

.method public static final getDetailsPosX(I)I
    .registers 3
    .param p0, "nProvinceID"  # I

    .line 3291
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShX()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvPosX()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static final getDetailsPosX2N(I)I
    .registers 3
    .param p0, "nProvinceID"  # I

    .line 3295
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShX()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvPosX()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static final getDetailsPosY(I)I
    .registers 3
    .param p0, "nProvinceID"  # I

    .line 3299
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShY()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static final getDetailsPosY2N(I)I
    .registers 3
    .param p0, "nProvinceID"  # I

    .line 3303
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShY()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static final mABXUP()V
    .registers 3

    .line 321
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->lMABX:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 322
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->lMABX:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateDrawArmyInProv()V

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 324
    .end local v0  # "i":I
    :cond_21
    return-void
.end method


# virtual methods
.method public final aUSM(II)V
    .registers 20
    .param p1, "nMaxX"  # I
    .param p2, "nMaxY"  # I

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    .line 413
    :try_start_6
    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXX:I

    if-eq v4, v2, :cond_16b5

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXY:I

    if-ne v5, v3, :cond_10

    goto/16 :goto_16b5

    .line 417
    :cond_10
    if-le v4, v2, :cond_16

    .line 418
    nop

    .line 419
    .local v4, "tX":I
    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXX:I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_15} :catch_16b6

    .line 420
    move v2, v4

    .line 423
    .end local v4  # "tX":I
    .end local p1  # "nMaxX":I
    .local v2, "nMaxX":I
    :cond_16
    if-le v5, v3, :cond_21

    .line 424
    move v4, v5

    .line 425
    .local v4, "tY":I
    :try_start_19
    iput v3, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXY:I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1b} :catch_1d

    .line 426
    move v3, v4

    .end local p2  # "nMaxY":I
    .local v3, "nMaxY":I
    goto :goto_21

    .line 1207
    .end local v3  # "nMaxY":I
    .end local v4  # "tY":I
    .restart local p2  # "nMaxY":I
    :catch_1d
    move-exception v0

    move-object v4, v0

    goto/16 :goto_16b8

    .line 429
    .end local p2  # "nMaxY":I
    .restart local v3  # "nMaxY":I
    :cond_21
    :goto_21
    :try_start_21
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCrScAs()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_138

    .line 430
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2b
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v4, v6, :cond_136

    .line 431
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXX:I

    iget v8, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXY:I

    invoke-static {v6, v7, v8, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->aUSMIIBXC(IIIII)Z

    move-result v6

    if-eqz v6, :cond_132

    .line 432
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->createScenarioAssignProvsCiv:I

    if-ltz v6, :cond_132

    .line 433
    const/4 v6, 0x0

    .line 435
    .local v6, "cont":Z
    const/4 v7, 0x1

    .local v7, "a":I
    :goto_45
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v8

    if-ge v7, v8, :cond_64

    .line 436
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v9, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v9

    if-ne v8, v9, :cond_61

    .line 440
    const/4 v6, 0x1

    .line 441
    goto :goto_64

    .line 435
    :cond_61
    add-int/lit8 v7, v7, 0x1

    goto :goto_45

    .line 445
    .end local v7  # "a":I
    :cond_64
    :goto_64
    if-eqz v6, :cond_68

    .line 446
    goto/16 :goto_132

    .line 449
    :cond_68
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->createScenarioAssignProvsCiv:I

    if-eq v7, v8, :cond_132

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v7

    if-gez v7, :cond_132

    .line 450
    sget-boolean v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->SCENARIO_EDITOR_OCCUPATION:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_ce

    .line 451
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v9, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v9

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->createScenarioAssignProvsCiv:I

    invoke-virtual {v7, v9, v8, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivId(IZZ)V

    .line 452
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->resetArmiesAll(I)V

    .line 453
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->buildProvinceCore()V

    .line 454
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setActiveProvID(I)V

    goto :goto_132

    .line 457
    :cond_ce
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v7

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v10, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v9

    invoke-static {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/CFG;->addUndoAssignProvinces(II)V

    .line 458
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v9, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v9

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->createScenarioAssignProvsCiv:I

    invoke-virtual {v7, v9, v8, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivId(IZZ)V

    .line 459
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->createScenarioAssignProvsCiv:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->setTrueOwnerOfProv(I)V

    .line 460
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->resetArmiesAll(I)V

    .line 461
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->buildProvinceCore()V

    .line 462
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setActiveProvID(I)V

    .line 430
    .end local v6  # "cont":Z
    :cond_132
    :goto_132
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2b

    .end local v4  # "i":I
    :cond_136
    goto/16 :goto_16b1

    .line 469
    :cond_138
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_FormableCivs_Edit()Z

    move-result v4

    if-eqz v4, :cond_1a9

    .line 470
    const/4 v4, 0x0

    .restart local v4  # "i":I
    :goto_141
    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v4, v5, :cond_1a7

    .line 471
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v5

    if-nez v5, :cond_1a4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v5

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXX:I

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXY:I

    invoke-static {v5, v6, v7, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->aUSMIIBXC(IIIII)Z

    move-result v5

    if-eqz v5, :cond_1a4

    .line 472
    sget-boolean v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->selectMode:Z

    if-eqz v5, :cond_195

    .line 473
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v5

    if-ltz v5, :cond_1a4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v5

    if-nez v5, :cond_1a4

    .line 474
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvSelected()Lage/of/civilizations2/jakowski/lukasz/ProvincesDrag;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/ProvincesDrag;->addProv(I)Z

    goto :goto_1a4

    .line 478
    :cond_195
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvSelected()Lage/of/civilizations2/jakowski/lukasz/ProvincesDrag;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/ProvincesDrag;->removeProv(I)Z

    .line 470
    :cond_1a4
    :goto_1a4
    add-int/lit8 v4, v4, 0x1

    goto :goto_141

    .end local v4  # "i":I
    :cond_1a7
    goto/16 :goto_16b1

    .line 483
    :cond_1a9
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateNewGame()Z

    move-result v4

    if-eqz v4, :cond_234

    .line 484
    const/4 v4, 0x0

    .line 486
    .local v4, "added":I
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_CreateNewGame_AddCiv()Z

    move-result v5

    if-eqz v5, :cond_22b

    .line 487
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1bb
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v5, v6, :cond_22b

    .line 488
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXX:I

    iget v8, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXY:I

    invoke-static {v6, v7, v8, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->aUSMIIBXC(IIIII)Z

    move-result v6

    if-eqz v6, :cond_228

    .line 489
    sget-boolean v6, Lage/of/civilizations2/jakowski/lukasz/Menus/CivN/Menu_CreateNewGame_AddCiv;->addProvinceMode:Z

    if-eqz v6, :cond_21d

    .line 490
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    if-ltz v6, :cond_228

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v6

    if-gez v6, :cond_228

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v6

    if-nez v6, :cond_228

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsCapital2()Z

    move-result v6

    if-nez v6, :cond_228

    .line 491
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/CivN/Menu_CreateNewGame_AddCiv;->addProvince(I)V

    .line 492
    add-int/lit8 v4, v4, 0x1

    goto :goto_228

    .line 496
    :cond_21d
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/CivN/Menu_CreateNewGame_AddCiv;->removeProvince(I)V

    .line 497
    add-int/lit8 v4, v4, 0x1

    .line 487
    :cond_228
    :goto_228
    add-int/lit8 v5, v5, 0x1

    goto :goto_1bb

    .line 503
    .end local v5  # "i":I
    :cond_22b
    if-lez v4, :cond_232

    .line 504
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildCreateNewGame_AddCiv()V

    .line 506
    .end local v4  # "added":I
    :cond_232
    goto/16 :goto_16b1

    .line 507
    :cond_234
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameAC()Z

    move-result v4

    if-eqz v4, :cond_2b7

    .line 508
    const/4 v4, 0x0

    .line 510
    .restart local v4  # "added":I
    const/4 v5, 0x0

    .restart local v5  # "i":I
    :goto_23e
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v5, v6, :cond_2ae

    .line 511
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXX:I

    iget v8, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXY:I

    invoke-static {v6, v7, v8, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->aUSMIIBXC(IIIII)Z

    move-result v6

    if-eqz v6, :cond_2ab

    .line 512
    sget-boolean v6, Lage/of/civilizations2/jakowski/lukasz/Menus/Formable/AddCiv/Menu_InGame_AddCiv;->addProvinceMode:Z

    if-eqz v6, :cond_2a0

    .line 513
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    if-ltz v6, :cond_2ab

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v6

    if-gez v6, :cond_2ab

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v6

    if-nez v6, :cond_2ab

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsCapital2()Z

    move-result v6

    if-nez v6, :cond_2ab

    .line 514
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/Formable/AddCiv/Menu_InGame_AddCiv;->addProvince(I)V

    .line 515
    add-int/lit8 v4, v4, 0x1

    goto :goto_2ab

    .line 519
    :cond_2a0
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/Formable/AddCiv/Menu_InGame_AddCiv;->removeProvince(I)V

    .line 520
    add-int/lit8 v4, v4, 0x1

    .line 510
    :cond_2ab
    :goto_2ab
    add-int/lit8 v5, v5, 0x1

    goto :goto_23e

    .line 525
    .end local v5  # "i":I
    :cond_2ae
    if-lez v4, :cond_2b5

    .line 526
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_AddCiv()V

    .line 528
    .end local v4  # "added":I
    :cond_2b5
    goto/16 :goto_16b1

    .line 529
    :cond_2b7
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_PeaceTreaty()Z

    move-result v4

    if-eqz v4, :cond_335

    .line 530
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2c0
    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v4, v5, :cond_333

    .line 531
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v5

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXX:I

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXY:I

    invoke-static {v5, v6, v7, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->aUSMIIBXC(IIIII)Z

    move-result v5

    if-eqz v5, :cond_330

    .line 532
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    if-lez v5, :cond_330

    .line 533
    sget-boolean v5, Lage/of/civilizations2/jakowski/lukasz/Menus/PeaceTreaty/Response/Menu_PeaceTreaty_Response;->DRAW_TREATY_PROVINCES:Z

    if-eqz v5, :cond_330

    .line 534
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->drawProvOwners:Ljava/util/List;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;->isTaken:I

    if-gtz v5, :cond_330

    .line 535
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->brushCivID:I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->brushCivID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v8

    if-eqz v8, :cond_31f

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->brushCivID:I

    goto :goto_32d

    :cond_31f
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->playerTurnID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v8

    :goto_32d
    invoke-virtual {v5, v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->takeProvince(III)Z

    .line 530
    :cond_330
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c0

    .end local v4  # "i":I
    :cond_333
    goto/16 :goto_16b1

    .line 542
    :cond_335
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView()Z

    move-result v4

    if-eqz v4, :cond_16b1

    .line 543
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruit_Visible()Z

    move-result v4

    if-eqz v4, :cond_3c0

    .line 544
    const/4 v4, 0x0

    .line 546
    .local v4, "actionDone":I
    const/4 v5, 0x0

    .restart local v5  # "i":I
    :goto_347
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v5, v6, :cond_3a5

    .line 547
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXX:I

    iget v8, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXY:I

    invoke-static {v6, v7, v8, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->aUSMIIBXC(IIIII)Z

    move-result v6

    if-eqz v6, :cond_3a2

    .line 548
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v7

    if-ne v6, v7, :cond_3a2

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v6

    if-nez v6, :cond_3a2

    .line 549
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->ISIP(I)Z

    move-result v6

    if-nez v6, :cond_3a2

    .line 550
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->MRPRV(I)V

    .line 551
    add-int/lit8 v4, v4, 0x1

    .line 546
    :cond_3a2
    add-int/lit8 v5, v5, 0x1

    goto :goto_347

    .line 557
    .end local v5  # "i":I
    :cond_3a5
    if-lez v4, :cond_3be

    .line 558
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->IEU()V

    .line 560
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvRecruitSlider()Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getCurr()I

    move-result v5

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->dARA(I)V

    .line 562
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateInGame_ActionInfo_Recruit()V

    .line 564
    .end local v4  # "actionDone":I
    :cond_3be
    goto/16 :goto_16b1

    .line 565
    :cond_3c0
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v4

    if-eq v4, v5, :cond_15f1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_ARMY_MODE:I

    if-ne v4, v5, :cond_3d4

    goto/16 :goto_15f1

    .line 586
    :cond_3d4
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_DEVELOPMENT_MODE:I
    :try_end_3dc
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3dc} :catch_16b2

    const-string v6, "Invest"

    const-string v7, "Provinces"

    const/16 v8, 0xdac

    const-string v9, "Done"

    const-string v10, ": "

    const/4 v11, 0x1

    if-ne v4, v5, :cond_52a

    .line 587
    const/4 v4, 0x0

    .line 589
    .restart local v4  # "actionDone":I
    const/4 v5, 0x0

    .restart local v5  # "i":I
    :goto_3eb
    :try_start_3eb
    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v5, v12, :cond_480

    .line 590
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v12

    iget v13, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXX:I

    iget v14, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXY:I

    invoke-static {v12, v13, v14, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->aUSMIIBXC(IIIII)Z

    move-result v12

    if-eqz v12, :cond_47c

    .line 591
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v13, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v13

    if-ne v12, v13, :cond_47c

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v13, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v12

    if-nez v12, :cond_47c

    .line 592
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v13

    invoke-static {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/GameManager;->investMaxDevGold(II)I

    move-result v12

    .line 594
    .local v12, "maxValue":I
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v13, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v13

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v14

    invoke-static {v13, v14, v12}, Lage/of/civilizations2/jakowski/lukasz/GameManager;->investDevelopment(III)Z

    move-result v13

    if-eqz v13, :cond_47c

    .line 595
    add-int/lit8 v4, v4, 0x1

    .line 597
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->updateInGame_ProvinceInfo()V

    .line 599
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v13

    sget v14, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_DEVELOPMENT_MODE:I

    if-ne v13, v14, :cond_47c

    .line 600
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v14, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    iput-boolean v11, v13, Lage/of/civilizations2/jakowski/lukasz/Province;->viewBool:Z

    .line 589
    .end local v12  # "maxValue":I
    :cond_47c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3eb

    .line 607
    .end local v5  # "i":I
    :cond_480
    if-lez v4, :cond_501

    .line 608
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v12

    invoke-virtual {v5, v12}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateInGameTopAll(I)V

    .line 610
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v9, v12}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 611
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {v5, v8}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    .line 613
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v9, v7}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/Images;->infoDev:I

    invoke-virtual {v5, v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildMenu_InGame_Infobox_AllAction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 615
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->SFXManager:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_WORKSHOP:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->playSound(I)V

    .line 617
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_DEVELOPMENT_MODE:I

    if-ne v5, v6, :cond_528

    .line 618
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_View_Stats()Z

    move-result v5

    if-eqz v5, :cond_528

    .line 619
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5, v11}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ViewDevelopment(Z)V

    goto :goto_528

    .line 624
    :cond_501
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 625
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {v5, v8}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    .line 627
    .end local v4  # "actionDone":I
    :cond_528
    :goto_528
    goto/16 :goto_16b1

    .line 628
    :cond_52a
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_ECONOMY_MODE:I

    if-ne v4, v5, :cond_675

    .line 629
    const/4 v4, 0x0

    .line 631
    .restart local v4  # "actionDone":I
    const/4 v5, 0x0

    .restart local v5  # "i":I
    :goto_536
    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v5, v12, :cond_5cb

    .line 632
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v12

    iget v13, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXX:I

    iget v14, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXY:I

    invoke-static {v12, v13, v14, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->aUSMIIBXC(IIIII)Z

    move-result v12

    if-eqz v12, :cond_5c7

    .line 633
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v13, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v13

    if-ne v12, v13, :cond_5c7

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v13, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v12

    if-nez v12, :cond_5c7

    .line 636
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v13

    invoke-static {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/GameManager;->invest_MaxEconomy_Gold(II)I

    move-result v12

    .line 638
    .restart local v12  # "maxValue":I
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v13, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v13

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v14

    invoke-static {v13, v14, v12}, Lage/of/civilizations2/jakowski/lukasz/GameManager;->invest(III)Z

    move-result v13

    if-eqz v13, :cond_5c7

    .line 639
    add-int/lit8 v4, v4, 0x1

    .line 641
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->updateInGame_ProvinceInfo()V

    .line 643
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v13

    sget v14, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_ECONOMY_MODE:I

    if-ne v13, v14, :cond_5c7

    .line 644
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v14, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    iput-boolean v11, v13, Lage/of/civilizations2/jakowski/lukasz/Province;->viewBool:Z

    .line 631
    .end local v12  # "maxValue":I
    :cond_5c7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_536

    .line 651
    .end local v5  # "i":I
    :cond_5cb
    if-lez v4, :cond_64c

    .line 652
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v12

    invoke-virtual {v5, v12}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateInGameTopAll(I)V

    .line 654
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v9, v12}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 655
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {v5, v8}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    .line 657
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v9, v7}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/Images;->infoEconomy:I

    invoke-virtual {v5, v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildMenu_InGame_Infobox_AllAction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 659
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->SFXManager:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_WORKSHOP:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->playSound(I)V

    .line 661
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_ECONOMY_MODE:I

    if-ne v5, v6, :cond_673

    .line 662
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_View_Stats()Z

    move-result v5

    if-eqz v5, :cond_673

    .line 663
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5, v11}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ViewEconomy(Z)V

    goto :goto_673

    .line 668
    :cond_64c
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 669
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {v5, v8}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    .line 671
    .end local v4  # "actionDone":I
    :cond_673
    :goto_673
    goto/16 :goto_16b1

    .line 672
    :cond_675
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_HAPPINESS_MODE:I

    if-ne v4, v5, :cond_910

    .line 673
    const/4 v4, 0x0

    .line 675
    .restart local v4  # "actionDone":I
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v5

    if-ltz v5, :cond_7e5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v6, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v6

    if-eq v5, v6, :cond_7e5

    .line 676
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    .line 678
    .local v5, "inCivID":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6b7
    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v6, v7, :cond_735

    .line 679
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v7

    iget v12, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXX:I

    iget v13, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXY:I

    invoke-static {v7, v12, v13, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->aUSMIIBXC(IIIII)Z

    move-result v7

    if-eqz v7, :cond_732

    .line 680
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v12

    invoke-virtual {v7, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v7

    if-ne v7, v5, :cond_732

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v12

    invoke-virtual {v7, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v7

    if-nez v7, :cond_732

    .line 681
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 682
    .local v7, "provinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v12

    invoke-static {v12, v5, v7}, Lage/of/civilizations2/jakowski/lukasz/GameManager;->spreadPropaganda(IILjava/util/List;)Z

    move-result v12

    if-eqz v12, :cond_732

    .line 685
    add-int/lit8 v4, v4, 0x1

    .line 687
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->updateInGame_ProvinceInfo()V

    .line 689
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v12

    sget v13, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_HAPPINESS_MODE:I

    if-ne v12, v13, :cond_732

    .line 690
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v13, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    iput-boolean v11, v12, Lage/of/civilizations2/jakowski/lukasz/Province;->viewBool:Z

    .line 678
    .end local v7  # "provinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_732
    add-int/lit8 v6, v6, 0x1

    goto :goto_6b7

    .line 697
    .end local v6  # "i":I
    :cond_735
    if-lez v4, :cond_7bc

    .line 698
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v7, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateInGameTopAll(I)V

    .line 700
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v13, "SpreadPropaganda"

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v12

    sget v13, Lage/of/civilizations2/jakowski/lukasz/Images;->infoDiplomacy:I

    invoke-virtual {v6, v7, v12, v13}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildMenu_InGame_Infobox(Ljava/lang/String;Ljava/lang/String;I)V

    .line 702
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v12, v9}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v7, v9}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 703
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    .line 705
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_HAPPINESS_MODE:I

    if-ne v6, v7, :cond_7b4

    .line 706
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_View_Stats()Z

    move-result v6

    if-eqz v6, :cond_7b4

    .line 707
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v6, v11}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ViewHappiness(Z)V

    .line 711
    :cond_7b4
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->SFXManager:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_CLICK:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->playSound(I)V

    goto :goto_7e3

    .line 714
    :cond_7bc
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v11, v9}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v7, v9}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 715
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    .line 717
    .end local v5  # "inCivID":I
    :goto_7e3
    goto/16 :goto_90e

    .line 719
    :cond_7e5
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7e6
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v5, v6, :cond_864

    .line 720
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    iget v12, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXX:I

    iget v13, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXY:I

    invoke-static {v6, v12, v13, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->aUSMIIBXC(IIIII)Z

    move-result v6

    if-eqz v6, :cond_861

    .line 721
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v12

    invoke-virtual {v6, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v12

    if-ne v6, v12, :cond_861

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v12

    invoke-virtual {v6, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v6

    if-nez v6, :cond_861

    .line 723
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v6, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v6

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v12

    invoke-static {v6, v12}, Lage/of/civilizations2/jakowski/lukasz/Diplomacy/Festivals/Festival;->addFestival(II)Z

    move-result v6

    if-eqz v6, :cond_861

    .line 724
    add-int/lit8 v4, v4, 0x1

    .line 726
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->updateInGame_ProvinceInfo()V

    .line 728
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v6

    sget v12, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_HAPPINESS_MODE:I

    if-ne v6, v12, :cond_861

    .line 729
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v12

    invoke-virtual {v6, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    iput-boolean v11, v6, Lage/of/civilizations2/jakowski/lukasz/Province;->viewBool:Z

    .line 719
    :cond_861
    add-int/lit8 v5, v5, 0x1

    goto :goto_7e6

    .line 736
    .end local v5  # "i":I
    :cond_864
    if-lez v4, :cond_8e7

    .line 737
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v6, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateInGameTopAll(I)V

    .line 739
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v12, v9}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6, v9}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 740
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {v5, v8}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    .line 742
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v8, "Festival"

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v9, v7}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/Images;->infoFestival:I

    invoke-virtual {v5, v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildMenu_InGame_Infobox_AllAction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 744
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->SFXManager:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_CLICK:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->playSound(I)V

    .line 746
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_HAPPINESS_MODE:I

    if-ne v5, v6, :cond_90e

    .line 747
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_View_Stats()Z

    move-result v5

    if-eqz v5, :cond_90e

    .line 748
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5, v11}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ViewHappiness(Z)V

    goto :goto_90e

    .line 753
    :cond_8e7
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 754
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {v5, v8}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    .line 757
    .end local v4  # "actionDone":I
    :cond_90e
    :goto_90e
    goto/16 :goto_16b1

    .line 759
    :cond_910
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_PROVINCE_STABILITY_MODE:I

    if-ne v4, v5, :cond_ad4

    .line 760
    const/4 v4, 0x0

    .line 762
    .restart local v4  # "actionDone":I
    const/4 v5, 0x0

    .restart local v5  # "i":I
    :goto_91c
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v5, v6, :cond_a1e

    .line 763
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    iget v12, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXX:I

    iget v13, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXY:I

    invoke-static {v6, v12, v13, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->aUSMIIBXC(IIIII)Z

    move-result v6

    if-eqz v6, :cond_a14

    .line 764
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v12

    invoke-virtual {v6, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v12

    if-ne v6, v12, :cond_a11

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v12

    invoke-virtual {v6, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v6

    if-nez v6, :cond_a11

    .line 767
    const/4 v6, 0x0

    .line 769
    .local v6, "nMax":I
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v12

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v14, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAssimilate:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;

    iget v15, v15, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;->ASSIMILATE_NUM_OF_TURNS_MAX:I

    invoke-static {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/GameManager;->assimilateCost(II)I

    move-result v14

    int-to-long v14, v14

    cmp-long v16, v12, v14

    if-ltz v16, :cond_992

    .line 770
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAssimilate:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;->ASSIMILATE_NUM_OF_TURNS_MAX:I

    move v6, v12

    move-object/from16 p2, v9

    goto :goto_9cc

    .line 773
    :cond_992
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAssimilate:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;->ASSIMILATE_NUM_OF_TURNS_MAX:I

    sub-int/2addr v12, v11

    .local v12, "a":I
    :goto_997
    const/4 v13, 0x5

    if-lt v12, v13, :cond_9ca

    .line 774
    move v6, v12

    .line 776
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v13

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v15, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v15

    invoke-static {v15, v6}, Lage/of/civilizations2/jakowski/lukasz/GameManager;->assimilateCost(II)I

    move-result v15

    move-object/from16 p2, v9

    int-to-long v8, v15

    cmp-long v15, v13, v8

    if-ltz v15, :cond_9c3

    .line 777
    goto :goto_9cc

    .line 773
    :cond_9c3
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v9, p2

    const/16 v8, 0xdac

    goto :goto_997

    :cond_9ca
    move-object/from16 p2, v9

    .line 782
    .end local v12  # "a":I
    :goto_9cc
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v9, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v9

    invoke-static {v8, v9, v6}, Lage/of/civilizations2/jakowski/lukasz/GameManager;->addAssi(III)Z

    move-result v8

    if-eqz v8, :cond_a16

    .line 783
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->updateInGame_ProvinceInfo()V

    .line 785
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvincemMore_Visible()Z

    move-result v8

    if-eqz v8, :cond_9f6

    .line 786
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v8, v11, v11}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceMore(ZZ)V

    .line 789
    :cond_9f6
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v8

    sget v9, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_PROVINCE_STABILITY_MODE:I

    if-ne v8, v9, :cond_a0e

    .line 790
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v9, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    iput-boolean v11, v8, Lage/of/civilizations2/jakowski/lukasz/Province;->viewBool:Z

    .line 793
    :cond_a0e
    add-int/lit8 v4, v4, 0x1

    goto :goto_a16

    .line 764
    .end local v6  # "nMax":I
    :cond_a11
    move-object/from16 p2, v9

    goto :goto_a16

    .line 763
    :cond_a14
    move-object/from16 p2, v9

    .line 762
    :cond_a16
    :goto_a16
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v9, p2

    const/16 v8, 0xdac

    goto/16 :goto_91c

    :cond_a1e
    move-object/from16 p2, v9

    .line 799
    .end local v5  # "i":I
    if-lez v4, :cond_aa7

    .line 800
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateInGameTopAll(I)V

    .line 802
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    move-object/from16 v9, p2

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 803
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    const/16 v6, 0xdac

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    .line 805
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v8, "Assimilate"

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v9, v7}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/Images;->infoStability:I

    invoke-virtual {v5, v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildMenu_InGame_Infobox_AllAction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 807
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->SFXManager:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_ASSIMILATE:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->playSound(I)V

    .line 809
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_PROVINCE_STABILITY_MODE:I

    if-ne v5, v6, :cond_ad2

    .line 810
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_View_Stats()Z

    move-result v5

    if-eqz v5, :cond_ad2

    .line 811
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5, v11}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ViewProvinceStability(Z)V

    goto :goto_ad2

    .line 816
    :cond_aa7
    move-object/from16 v9, p2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 817
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    const/16 v6, 0xdac

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    .line 819
    .end local v4  # "actionDone":I
    :cond_ad2
    :goto_ad2
    goto/16 :goto_16b1

    .line 820
    :cond_ad4
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_FORTIFICATIONS_MODE:I

    if-ne v4, v5, :cond_c10

    .line 821
    const/4 v4, 0x0

    .line 823
    .restart local v4  # "actionDone":I
    const/4 v5, 0x0

    .restart local v5  # "i":I
    :goto_ae0
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v5, v6, :cond_b5e

    .line 824
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    iget v8, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXX:I

    iget v12, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXY:I

    invoke-static {v6, v8, v12, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->aUSMIIBXC(IIIII)Z

    move-result v6

    if-eqz v6, :cond_b5b

    .line 825
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v8, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v8

    if-ne v6, v8, :cond_b5b

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v6

    if-nez v6, :cond_b5b

    .line 828
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v8, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v8

    invoke-static {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->constructFort(II)Z

    move-result v6

    if-eqz v6, :cond_b5b

    .line 829
    add-int/lit8 v4, v4, 0x1

    .line 831
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->updateInGame_ProvinceInfo()V

    .line 833
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v6

    sget v8, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_FORTIFICATIONS_MODE:I

    if-ne v6, v8, :cond_b5b

    .line 834
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    iput-boolean v11, v6, Lage/of/civilizations2/jakowski/lukasz/Province;->viewBool:Z

    .line 823
    :cond_b5b
    add-int/lit8 v5, v5, 0x1

    goto :goto_ae0

    .line 841
    .end local v5  # "i":I
    :cond_b5e
    if-lez v4, :cond_be5

    .line 842
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateInGameTopAll(I)V

    .line 844
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 845
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    const/16 v6, 0xdac

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    .line 847
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-static {v11}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getFort_Name(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v9, v7}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/Images;->infoBuild:I

    invoke-virtual {v5, v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildMenu_InGame_Infobox_AllAction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 849
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->SFXManager:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_WORKSHOP:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->playSound(I)V

    .line 851
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_FORTIFICATIONS_MODE:I

    if-ne v5, v6, :cond_c0e

    .line 852
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_View_Stats()Z

    move-result v5

    if-eqz v5, :cond_c0e

    .line 853
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5, v11}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ViewBForts(Z)V

    goto :goto_c0e

    .line 858
    :cond_be5
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 859
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    const/16 v6, 0xdac

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    .line 861
    .end local v4  # "actionDone":I
    :cond_c0e
    :goto_c0e
    goto/16 :goto_16b1

    .line 862
    :cond_c10
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_WATCH_TOWER_MODE:I

    if-ne v4, v5, :cond_d4c

    .line 863
    const/4 v4, 0x0

    .line 865
    .restart local v4  # "actionDone":I
    const/4 v5, 0x0

    .restart local v5  # "i":I
    :goto_c1c
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v5, v6, :cond_c9a

    .line 866
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    iget v8, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXX:I

    iget v12, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXY:I

    invoke-static {v6, v8, v12, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->aUSMIIBXC(IIIII)Z

    move-result v6

    if-eqz v6, :cond_c97

    .line 867
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v8, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v8

    if-ne v6, v8, :cond_c97

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v6

    if-nez v6, :cond_c97

    .line 870
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v8, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v8

    invoke-static {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->constructTower(II)Z

    move-result v6

    if-eqz v6, :cond_c97

    .line 871
    add-int/lit8 v4, v4, 0x1

    .line 873
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->updateInGame_ProvinceInfo()V

    .line 875
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v6

    sget v8, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_WATCH_TOWER_MODE:I

    if-ne v6, v8, :cond_c97

    .line 876
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    iput-boolean v11, v6, Lage/of/civilizations2/jakowski/lukasz/Province;->viewBool:Z

    .line 865
    :cond_c97
    add-int/lit8 v5, v5, 0x1

    goto :goto_c1c

    .line 883
    .end local v5  # "i":I
    :cond_c9a
    if-lez v4, :cond_d21

    .line 884
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateInGameTopAll(I)V

    .line 886
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 887
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    const/16 v6, 0xdac

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    .line 889
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-static {v11}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getTower_Name(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v9, v7}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/Images;->infoBuild:I

    invoke-virtual {v5, v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildMenu_InGame_Infobox_AllAction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 891
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->SFXManager:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_WORKSHOP:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->playSound(I)V

    .line 893
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_WATCH_TOWER_MODE:I

    if-ne v5, v6, :cond_d4a

    .line 894
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_View_Stats()Z

    move-result v5

    if-eqz v5, :cond_d4a

    .line 895
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5, v11}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ViewBTowers(Z)V

    goto :goto_d4a

    .line 900
    :cond_d21
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 901
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    const/16 v6, 0xdac

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    .line 903
    .end local v4  # "actionDone":I
    :cond_d4a
    :goto_d4a
    goto/16 :goto_16b1

    .line 904
    :cond_d4c
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_PORT_MODE:I

    if-ne v4, v5, :cond_e88

    .line 905
    const/4 v4, 0x0

    .line 907
    .restart local v4  # "actionDone":I
    const/4 v5, 0x0

    .restart local v5  # "i":I
    :goto_d58
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v5, v6, :cond_dd6

    .line 908
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    iget v8, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXX:I

    iget v12, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXY:I

    invoke-static {v6, v8, v12, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->aUSMIIBXC(IIIII)Z

    move-result v6

    if-eqz v6, :cond_dd3

    .line 909
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v8, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v8

    if-ne v6, v8, :cond_dd3

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v6

    if-nez v6, :cond_dd3

    .line 912
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v8, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v8

    invoke-static {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->constructPort(II)Z

    move-result v6

    if-eqz v6, :cond_dd3

    .line 913
    add-int/lit8 v4, v4, 0x1

    .line 915
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->updateInGame_ProvinceInfo()V

    .line 917
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v6

    sget v8, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_PORT_MODE:I

    if-ne v6, v8, :cond_dd3

    .line 918
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    iput-boolean v11, v6, Lage/of/civilizations2/jakowski/lukasz/Province;->viewBool:Z

    .line 907
    :cond_dd3
    add-int/lit8 v5, v5, 0x1

    goto :goto_d58

    .line 925
    .end local v5  # "i":I
    :cond_dd6
    if-lez v4, :cond_e5d

    .line 926
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateInGameTopAll(I)V

    .line 928
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 929
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    const/16 v6, 0xdac

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    .line 931
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-static {v11}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getPort_Name(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v9, v7}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/Images;->infoBuild:I

    invoke-virtual {v5, v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildMenu_InGame_Infobox_AllAction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 933
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->SFXManager:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_WORKSHOP:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->playSound(I)V

    .line 935
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_PORT_MODE:I

    if-ne v5, v6, :cond_e86

    .line 936
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_View_Stats()Z

    move-result v5

    if-eqz v5, :cond_e86

    .line 937
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5, v11}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ViewBPorts(Z)V

    goto :goto_e86

    .line 942
    :cond_e5d
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 943
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    const/16 v6, 0xdac

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    .line 945
    .end local v4  # "actionDone":I
    :cond_e86
    :goto_e86
    goto/16 :goto_16b1

    .line 946
    :cond_e88
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_FARM_MODE:I

    if-ne v4, v5, :cond_fc4

    .line 947
    const/4 v4, 0x0

    .line 949
    .restart local v4  # "actionDone":I
    const/4 v5, 0x0

    .restart local v5  # "i":I
    :goto_e94
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v5, v6, :cond_f12

    .line 950
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    iget v8, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXX:I

    iget v12, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXY:I

    invoke-static {v6, v8, v12, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->aUSMIIBXC(IIIII)Z

    move-result v6

    if-eqz v6, :cond_f0f

    .line 951
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v8, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v8

    if-ne v6, v8, :cond_f0f

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v6

    if-nez v6, :cond_f0f

    .line 954
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v8, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v8

    invoke-static {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->constructFarm(II)Z

    move-result v6

    if-eqz v6, :cond_f0f

    .line 955
    add-int/lit8 v4, v4, 0x1

    .line 957
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->updateInGame_ProvinceInfo()V

    .line 959
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v6

    sget v8, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_FARM_MODE:I

    if-ne v6, v8, :cond_f0f

    .line 960
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    iput-boolean v11, v6, Lage/of/civilizations2/jakowski/lukasz/Province;->viewBool:Z

    .line 949
    :cond_f0f
    add-int/lit8 v5, v5, 0x1

    goto :goto_e94

    .line 967
    .end local v5  # "i":I
    :cond_f12
    if-lez v4, :cond_f99

    .line 968
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateInGameTopAll(I)V

    .line 970
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 971
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    const/16 v6, 0xdac

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    .line 973
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-static {v11}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getFarm_Name(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v9, v7}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/Images;->infoBuild:I

    invoke-virtual {v5, v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildMenu_InGame_Infobox_AllAction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 975
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->SFXManager:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_WORKSHOP:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->playSound(I)V

    .line 977
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_FARM_MODE:I

    if-ne v5, v6, :cond_fc2

    .line 978
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_View_Stats()Z

    move-result v5

    if-eqz v5, :cond_fc2

    .line 979
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5, v11}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ViewBFarms(Z)V

    goto :goto_fc2

    .line 984
    :cond_f99
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 985
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    const/16 v6, 0xdac

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    .line 987
    .end local v4  # "actionDone":I
    :cond_fc2
    :goto_fc2
    goto/16 :goto_16b1

    .line 988
    :cond_fc4
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_WORKSHOP_MODE:I

    if-ne v4, v5, :cond_1100

    .line 989
    const/4 v4, 0x0

    .line 991
    .restart local v4  # "actionDone":I
    const/4 v5, 0x0

    .restart local v5  # "i":I
    :goto_fd0
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v5, v6, :cond_104e

    .line 992
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    iget v8, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXX:I

    iget v12, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXY:I

    invoke-static {v6, v8, v12, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->aUSMIIBXC(IIIII)Z

    move-result v6

    if-eqz v6, :cond_104b

    .line 993
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v8, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v8

    if-ne v6, v8, :cond_104b

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v6

    if-nez v6, :cond_104b

    .line 996
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v8, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v8

    invoke-static {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->constructWorkshop(II)Z

    move-result v6

    if-eqz v6, :cond_104b

    .line 997
    add-int/lit8 v4, v4, 0x1

    .line 999
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->updateInGame_ProvinceInfo()V

    .line 1001
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v6

    sget v8, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_WORKSHOP_MODE:I

    if-ne v6, v8, :cond_104b

    .line 1002
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    iput-boolean v11, v6, Lage/of/civilizations2/jakowski/lukasz/Province;->viewBool:Z

    .line 991
    :cond_104b
    add-int/lit8 v5, v5, 0x1

    goto :goto_fd0

    .line 1009
    .end local v5  # "i":I
    :cond_104e
    if-lez v4, :cond_10d5

    .line 1010
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateInGameTopAll(I)V

    .line 1012
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 1013
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    const/16 v6, 0xdac

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    .line 1015
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-static {v11}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getWorkshop_Name(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v9, v7}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/Images;->infoBuild:I

    invoke-virtual {v5, v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildMenu_InGame_Infobox_AllAction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1017
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->SFXManager:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_WORKSHOP:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->playSound(I)V

    .line 1019
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_WORKSHOP_MODE:I

    if-ne v5, v6, :cond_10fe

    .line 1020
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_View_Stats()Z

    move-result v5

    if-eqz v5, :cond_10fe

    .line 1021
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5, v11}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ViewBWorkshop(Z)V

    goto :goto_10fe

    .line 1026
    :cond_10d5
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 1027
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    const/16 v6, 0xdac

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    .line 1029
    .end local v4  # "actionDone":I
    :cond_10fe
    :goto_10fe
    goto/16 :goto_16b1

    .line 1030
    :cond_1100
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_MARKET_MODE:I

    if-ne v4, v5, :cond_123c

    .line 1031
    const/4 v4, 0x0

    .line 1033
    .restart local v4  # "actionDone":I
    const/4 v5, 0x0

    .restart local v5  # "i":I
    :goto_110c
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v5, v6, :cond_118a

    .line 1034
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    iget v8, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXX:I

    iget v12, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXY:I

    invoke-static {v6, v8, v12, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->aUSMIIBXC(IIIII)Z

    move-result v6

    if-eqz v6, :cond_1187

    .line 1035
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v8, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v8

    if-ne v6, v8, :cond_1187

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v6

    if-nez v6, :cond_1187

    .line 1038
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v8, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v8

    invoke-static {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->constructMarket(II)Z

    move-result v6

    if-eqz v6, :cond_1187

    .line 1039
    add-int/lit8 v4, v4, 0x1

    .line 1041
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->updateInGame_ProvinceInfo()V

    .line 1043
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v6

    sget v8, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_MARKET_MODE:I

    if-ne v6, v8, :cond_1187

    .line 1044
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    iput-boolean v11, v6, Lage/of/civilizations2/jakowski/lukasz/Province;->viewBool:Z

    .line 1033
    :cond_1187
    add-int/lit8 v5, v5, 0x1

    goto :goto_110c

    .line 1051
    .end local v5  # "i":I
    :cond_118a
    if-lez v4, :cond_1211

    .line 1052
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateInGameTopAll(I)V

    .line 1054
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 1055
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    const/16 v6, 0xdac

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    .line 1057
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-static {v11}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getMarket_Name(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v9, v7}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/Images;->infoBuild:I

    invoke-virtual {v5, v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildMenu_InGame_Infobox_AllAction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1059
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->SFXManager:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_WORKSHOP:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->playSound(I)V

    .line 1061
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_MARKET_MODE:I

    if-ne v5, v6, :cond_123a

    .line 1062
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_View_Stats()Z

    move-result v5

    if-eqz v5, :cond_123a

    .line 1063
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5, v11}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ViewBMarket(Z)V

    goto :goto_123a

    .line 1068
    :cond_1211
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 1069
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    const/16 v6, 0xdac

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    .line 1071
    .end local v4  # "actionDone":I
    :cond_123a
    :goto_123a
    goto/16 :goto_16b1

    .line 1072
    :cond_123c
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_LIBRARY_MODE:I

    if-ne v4, v5, :cond_1378

    .line 1073
    const/4 v4, 0x0

    .line 1075
    .restart local v4  # "actionDone":I
    const/4 v5, 0x0

    .restart local v5  # "i":I
    :goto_1248
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v5, v6, :cond_12c6

    .line 1076
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    iget v8, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXX:I

    iget v12, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXY:I

    invoke-static {v6, v8, v12, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->aUSMIIBXC(IIIII)Z

    move-result v6

    if-eqz v6, :cond_12c3

    .line 1077
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v8, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v8

    if-ne v6, v8, :cond_12c3

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v6

    if-nez v6, :cond_12c3

    .line 1080
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v8, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v8

    invoke-static {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->constructLibrary(II)Z

    move-result v6

    if-eqz v6, :cond_12c3

    .line 1081
    add-int/lit8 v4, v4, 0x1

    .line 1083
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->updateInGame_ProvinceInfo()V

    .line 1085
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v6

    sget v8, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_LIBRARY_MODE:I

    if-ne v6, v8, :cond_12c3

    .line 1086
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    iput-boolean v11, v6, Lage/of/civilizations2/jakowski/lukasz/Province;->viewBool:Z

    .line 1075
    :cond_12c3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1248

    .line 1093
    .end local v5  # "i":I
    :cond_12c6
    if-lez v4, :cond_134d

    .line 1094
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateInGameTopAll(I)V

    .line 1096
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 1097
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    const/16 v6, 0xdac

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    .line 1099
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-static {v11}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getLibrary_Name(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v9, v7}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/Images;->infoBuild:I

    invoke-virtual {v5, v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildMenu_InGame_Infobox_AllAction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1101
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->SFXManager:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_WORKSHOP:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->playSound(I)V

    .line 1103
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_LIBRARY_MODE:I

    if-ne v5, v6, :cond_1376

    .line 1104
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_View_Stats()Z

    move-result v5

    if-eqz v5, :cond_1376

    .line 1105
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5, v11}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ViewBLibrary(Z)V

    goto :goto_1376

    .line 1110
    :cond_134d
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 1111
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    const/16 v6, 0xdac

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    .line 1113
    .end local v4  # "actionDone":I
    :cond_1376
    :goto_1376
    goto/16 :goto_16b1

    .line 1114
    :cond_1378
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_ARMOURY_MODE:I

    if-ne v4, v5, :cond_14b4

    .line 1115
    const/4 v4, 0x0

    .line 1117
    .restart local v4  # "actionDone":I
    const/4 v5, 0x0

    .restart local v5  # "i":I
    :goto_1384
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v5, v6, :cond_1402

    .line 1118
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    iget v8, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXX:I

    iget v12, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXY:I

    invoke-static {v6, v8, v12, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->aUSMIIBXC(IIIII)Z

    move-result v6

    if-eqz v6, :cond_13ff

    .line 1119
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v8, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v8

    if-ne v6, v8, :cond_13ff

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v6

    if-nez v6, :cond_13ff

    .line 1122
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v8, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v8

    invoke-static {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->constructArmoury(II)Z

    move-result v6

    if-eqz v6, :cond_13ff

    .line 1123
    add-int/lit8 v4, v4, 0x1

    .line 1125
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->updateInGame_ProvinceInfo()V

    .line 1127
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v6

    sget v8, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_ARMOURY_MODE:I

    if-ne v6, v8, :cond_13ff

    .line 1128
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    iput-boolean v11, v6, Lage/of/civilizations2/jakowski/lukasz/Province;->viewBool:Z

    .line 1117
    :cond_13ff
    add-int/lit8 v5, v5, 0x1

    goto :goto_1384

    .line 1135
    .end local v5  # "i":I
    :cond_1402
    if-lez v4, :cond_1489

    .line 1136
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateInGameTopAll(I)V

    .line 1138
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 1139
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    const/16 v6, 0xdac

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    .line 1141
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-static {v11}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getArmoury_Name(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v9, v7}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/Images;->infoBuild:I

    invoke-virtual {v5, v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildMenu_InGame_Infobox_AllAction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1143
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->SFXManager:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_WORKSHOP:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->playSound(I)V

    .line 1145
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_ARMOURY_MODE:I

    if-ne v5, v6, :cond_14b2

    .line 1146
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_View_Stats()Z

    move-result v5

    if-eqz v5, :cond_14b2

    .line 1147
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5, v11}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ViewBArmoury(Z)V

    goto :goto_14b2

    .line 1152
    :cond_1489
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 1153
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    const/16 v6, 0xdac

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    .line 1155
    .end local v4  # "actionDone":I
    :cond_14b2
    :goto_14b2
    goto/16 :goto_16b1

    .line 1156
    :cond_14b4
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_SUPPLY_MODE:I

    if-ne v4, v5, :cond_16b1

    .line 1157
    const/4 v4, 0x0

    .line 1159
    .restart local v4  # "actionDone":I
    const/4 v5, 0x0

    .restart local v5  # "i":I
    :goto_14c0
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v5, v6, :cond_153e

    .line 1160
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    iget v8, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXX:I

    iget v12, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXY:I

    invoke-static {v6, v8, v12, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->aUSMIIBXC(IIIII)Z

    move-result v6

    if-eqz v6, :cond_153b

    .line 1161
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v8, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v8

    if-ne v6, v8, :cond_153b

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v6

    if-nez v6, :cond_153b

    .line 1164
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v8, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v8

    invoke-static {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->constructSupply(II)Z

    move-result v6

    if-eqz v6, :cond_153b

    .line 1165
    add-int/lit8 v4, v4, 0x1

    .line 1167
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->updateInGame_ProvinceInfo()V

    .line 1169
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v6

    sget v8, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_SUPPLY_MODE:I

    if-ne v6, v8, :cond_153b

    .line 1170
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    iput-boolean v11, v6, Lage/of/civilizations2/jakowski/lukasz/Province;->viewBool:Z

    .line 1159
    :cond_153b
    add-int/lit8 v5, v5, 0x1

    goto :goto_14c0

    .line 1177
    .end local v5  # "i":I
    :cond_153e
    if-lez v4, :cond_15c6

    .line 1178
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateInGameTopAll(I)V

    .line 1180
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 1181
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    const/16 v6, 0xdac

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    .line 1183
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-static {v11}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getSupply_Name(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v9, v7}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/Images;->infoBuild:I

    invoke-virtual {v5, v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildMenu_InGame_Infobox_AllAction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1185
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->SFXManager:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_WORKSHOP:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->playSound(I)V

    .line 1187
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_SUPPLY_MODE:I

    if-ne v5, v6, :cond_16b1

    .line 1188
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_View_Stats()Z

    move-result v5

    if-eqz v5, :cond_16b1

    .line 1189
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5, v11}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ViewBSupply(Z)V

    goto/16 :goto_16b1

    .line 1194
    :cond_15c6
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 1195
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    const/16 v6, 0xdac

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    goto/16 :goto_16b1

    .line 566
    .end local v4  # "actionDone":I
    :cond_15f1
    :goto_15f1
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->cMABX()V

    .line 568
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_15f5
    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v4, v5, :cond_1651

    .line 569
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v5

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXX:I

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXY:I

    invoke-static {v5, v6, v7, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->aUSMIIBXC(IIIII)Z

    move-result v5

    if-eqz v5, :cond_164e

    .line 570
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v6

    if-eq v5, v6, :cond_1645

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID1(I)I

    move-result v5

    if-lez v5, :cond_164e

    .line 571
    :cond_1645
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v5

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->adMABX(I)V

    .line 568
    :cond_164e
    add-int/lit8 v4, v4, 0x1

    goto :goto_15f5

    .line 576
    .end local v4  # "i":I
    :cond_1651
    const/4 v4, 0x0

    .restart local v4  # "i":I
    :goto_1652
    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUM_OF_SEA_PROVINCES_IN_VIEW:I

    if-ge v4, v5, :cond_16ae

    .line 577
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPSVI(I)I

    move-result v5

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXX:I

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXY:I

    invoke-static {v5, v6, v7, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->aUSMIIBXC(IIIII)Z

    move-result v5

    if-eqz v5, :cond_16ab

    .line 578
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPSVI(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v6

    if-eq v5, v6, :cond_16a2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPSVI(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID1(I)I

    move-result v5

    if-lez v5, :cond_16ab

    .line 579
    :cond_16a2
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPSVI(I)I

    move-result v5

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->adMABX(I)V

    .line 576
    :cond_16ab
    add-int/lit8 v4, v4, 0x1

    goto :goto_1652

    .line 584
    .end local v4  # "i":I
    :cond_16ae
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mABXUP()V
    :try_end_16b1
    .catch Ljava/lang/Exception; {:try_start_3eb .. :try_end_16b1} :catch_16b2

    .line 1209
    :cond_16b1
    :goto_16b1
    goto :goto_16bb

    .line 1207
    :catch_16b2
    move-exception v0

    move-object v4, v0

    goto :goto_16b8

    .line 414
    .end local v2  # "nMaxX":I
    .end local v3  # "nMaxY":I
    .restart local p1  # "nMaxX":I
    .restart local p2  # "nMaxY":I
    :cond_16b5
    :goto_16b5
    return-void

    .line 1207
    :catch_16b6
    move-exception v0

    move-object v4, v0

    .line 1208
    .end local p1  # "nMaxX":I
    .end local p2  # "nMaxY":I
    .restart local v2  # "nMaxX":I
    .restart local v3  # "nMaxY":I
    .local v4, "ex":Ljava/lang/Exception;
    :goto_16b8
    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1210
    .end local v4  # "ex":Ljava/lang/Exception;
    :goto_16bb
    return-void
.end method

.method public final actionDown(IIII)V
    .registers 10
    .param p1, "nPosX"  # I
    .param p2, "nPosY"  # I
    .param p3, "nPointer"  # I
    .param p4, "button"  # I

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->actionMap:Z

    .line 183
    const/4 v1, 0x0

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->actionBrush:Z

    .line 184
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->actionBrushMove:Z

    .line 186
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpSl()Lage/of/civilizations2/jakowski/lukasz/MapScroll;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->getScrollingTheMap()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 187
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpSl()Lage/of/civilizations2/jakowski/lukasz/MapScroll;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->stopScrollingTheMap()V

    .line 190
    :cond_1d
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->revDirectionX:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ReverseDirection;

    int-to-float v3, p1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-interface {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$ReverseDirection;->getStartMovePos(I)I

    move-result v2

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->stMvPX:I

    .line 191
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->revDirectionY:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ReverseDirection;

    int-to-float v3, p2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-interface {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$ReverseDirection;->getStartMovePos(I)I

    move-result v2

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->stMvPY:I

    .line 193
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->actDPoX:I

    .line 194
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->actDPoY:I

    .line 196
    iget-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->enSMD:Z

    if-eqz v2, :cond_5f

    const/4 v2, 0x2

    if-ne p4, v2, :cond_5f

    .line 197
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXX:I

    .line 198
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXY:I

    .line 200
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXW:I

    .line 201
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXH:I

    .line 203
    sput-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->brushMode:Z

    .line 205
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->bSMD:Z

    .line 208
    return-void

    .line 211
    :cond_5f
    sput-boolean v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->bSMD:Z

    .line 214
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAxDEA:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    invoke-interface {v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;->extraAction(II)V

    .line 215
    return-void
.end method

.method public final actionMove(II)V
    .registers 4
    .param p1, "nPosX"  # I
    .param p2, "nPosY"  # I

    .line 218
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->brushMode:Z

    if-eqz v0, :cond_c

    .line 219
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->actDPoX:I

    .line 220
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->actDPoY:I

    .line 221
    invoke-virtual {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->actionUp_setActiveProvinceID(II)V

    .line 222
    return-void

    .line 225
    :cond_c
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->bSMD:Z

    if-eqz v0, :cond_1d

    .line 226
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXX:I

    sub-int v0, p1, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXW:I

    .line 227
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXY:I

    sub-int v0, p2, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXH:I

    .line 229
    return-void

    .line 232
    :cond_1d
    invoke-virtual {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->actionMoveMap(II)V

    .line 235
    return-void
.end method

.method public final actionMove(IIII)V
    .registers 6
    .param p1, "nPosX"  # I
    .param p2, "nPosY"  # I
    .param p3, "nPosX2"  # I
    .param p4, "nPosY2"  # I

    .line 259
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getDisableMovingMap()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->enableScaling:Z

    if-eqz v0, :cond_2f

    .line 260
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getStartScalePosY()I

    move-result v0

    if-gtz v0, :cond_26

    .line 261
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2, p4}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->startScaleTheMap(IIII)V

    goto :goto_2f

    .line 263
    :cond_26
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2, p4}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->scaleTheMap(IIII)V

    .line 266
    :cond_2f
    :goto_2f
    return-void
.end method

.method public final actionMoveMap(II)V
    .registers 8
    .param p1, "nPosX"  # I
    .param p2, "nPosY"  # I

    .line 238
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getDisableMovingMap()Z

    move-result v0

    if-nez v0, :cond_aa

    .line 239
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->updateStartMovePosX:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    .line 240
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->revDirectionX:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ReverseDirection;

    int-to-float v2, p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-interface {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$ReverseDirection;->getStartMovePos(I)I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->stMvPX:I

    .line 241
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->revDirectionY:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ReverseDirection;

    int-to-float v2, p2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-interface {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$ReverseDirection;->getStartMovePos(I)I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->stMvPY:I

    .line 242
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->updateStartMovePosX:Z

    .line 245
    :cond_3d
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->updateStartMovePosY:Z

    if-eqz v0, :cond_6d

    .line 246
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->revDirectionX:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ReverseDirection;

    int-to-float v2, p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-interface {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$ReverseDirection;->getStartMovePos(I)I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->stMvPX:I

    .line 247
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->revDirectionY:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ReverseDirection;

    int-to-float v2, p2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-interface {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$ReverseDirection;->getStartMovePos(I)I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->stMvPY:I

    .line 248
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->updateStartMovePosY:Z

    .line 251
    :cond_6d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->revDirectionX2:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ReverseDirection2;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->stMvPX:I

    int-to-float v3, p1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-interface {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$ReverseDirection2;->getNewPos(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->setNewPosX(I)V

    .line 252
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->revDirectionY2:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ReverseDirection2;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->stMvPY:I

    int-to-float v3, p2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-interface {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$ReverseDirection2;->getNewPos(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->setNewPosY(I)V

    goto :goto_af

    .line 254
    :cond_aa
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mpAMEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    invoke-interface {v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;->extraAction(II)V

    .line 256
    :goto_af
    return-void
.end method

.method public final actionUp(IIII)V
    .registers 8
    .param p1, "nPosX"  # I
    .param p2, "nPosY"  # I
    .param p3, "nPointer"  # I
    .param p4, "button"  # I

    .line 269
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->bSMD:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    if-eq p4, v0, :cond_d

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getIsDesktop()Z

    move-result v0

    if-nez v0, :cond_14

    .line 270
    :cond_d
    const/4 v0, 0x0

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->bSMD:Z

    .line 273
    invoke-virtual {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->aUSM(II)V

    .line 275
    return-void

    .line 278
    :cond_14
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->regroupArmyMode:Z

    if-nez v0, :cond_25

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->rODS:I

    if-eq v0, v1, :cond_25

    .line 279
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->cMABX()V

    .line 282
    :cond_25
    invoke-virtual {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->actionUp_setActiveProvinceID(II)V

    .line 284
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getActiveMenuElemeID()I

    move-result v0

    if-gez v0, :cond_41

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->enableScaling:Z

    if-eqz v0, :cond_41

    .line 285
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->resetScaleOfMap(J)V

    .line 288
    :cond_41
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getScaleMode()Z

    move-result v0

    if-nez v0, :cond_6a

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getDisableMovingMap()Z

    move-result v0

    if-nez v0, :cond_6a

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getActiveMenuElemeID()I

    move-result v0

    if-gez v0, :cond_6a

    .line 289
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpSl()Lage/of/civilizations2/jakowski/lukasz/MapScroll;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->startScrollingTheMap()V

    .line 292
    :cond_6a
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUEA:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    invoke-interface {v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;->extraAction(II)V

    .line 293
    return-void
.end method

.method public final actionUp_setActiveProvinceID(II)V
    .registers 7
    .param p1, "nPosX"  # I
    .param p2, "nPosY"  # I

    .line 1237
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getScaleMode()Z

    move-result v0

    if-nez v0, :cond_7d

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->actDPoX:I

    int-to-float v0, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->DENSITY:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7d

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->actDPoX:I

    int-to-float v0, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->DENSITY:F

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    int-to-float v1, p1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7d

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->actDPoY:I

    int-to-float v0, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->DENSITY:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    int-to-float v1, p2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7d

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->actDPoY:I

    int-to-float v0, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->DENSITY:F

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    int-to-float v1, p2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7d

    .line 1238
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    int-to-float v1, p1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, p2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setProvinceID(II)V

    .line 1240
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->brushMode:Z

    if-nez v0, :cond_78

    .line 1241
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SFXManager:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_PROVINCE:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->PERC_VOLUME_SELECT_PROVINCE:F

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->playSound(IF)V

    .line 1244
    :cond_78
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    invoke-interface {v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;->extraAction(II)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7d} :catch_7e

    .line 1248
    :cond_7d
    goto :goto_7f

    .line 1246
    :catch_7e
    move-exception v0

    .line 1249
    :goto_7f
    return-void
.end method

.method public final buildReversePosX()V
    .registers 2

    .line 1254
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->reverseDirectionX:Z

    if-eqz v0, :cond_c

    .line 1255
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TouchManager$1;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->revDirectionX:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ReverseDirection;

    goto :goto_13

    .line 1262
    :cond_c
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TouchManager$2;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->revDirectionX:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ReverseDirection;

    .line 1269
    :goto_13
    return-void
.end method

.method public final buildReversePosX2()V
    .registers 2

    .line 1290
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->reverseDirectionX:Z

    if-eqz v0, :cond_c

    .line 1291
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TouchManager$5;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->revDirectionX2:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ReverseDirection2;

    goto :goto_13

    .line 1298
    :cond_c
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TouchManager$6;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->revDirectionX2:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ReverseDirection2;

    .line 1305
    :goto_13
    return-void
.end method

.method public final buildReversePosY()V
    .registers 2

    .line 1272
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->reverseDirectionY:Z

    if-eqz v0, :cond_c

    .line 1273
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TouchManager$3;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->revDirectionY:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ReverseDirection;

    goto :goto_13

    .line 1280
    :cond_c
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TouchManager$4;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->revDirectionY:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ReverseDirection;

    .line 1287
    :goto_13
    return-void
.end method

.method public final buildReversePosY2()V
    .registers 2

    .line 1308
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->reverseDirectionY:Z

    if-eqz v0, :cond_c

    .line 1309
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TouchManager$7;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$7;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->revDirectionY2:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ReverseDirection2;

    goto :goto_13

    .line 1316
    :cond_c
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TouchManager$8;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$8;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->revDirectionY2:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ReverseDirection2;

    .line 1323
    :goto_13
    return-void
.end method

.method public final dSMD(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 149
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->bSMD:Z

    if-eqz v0, :cond_67

    .line 151
    :try_start_4
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXX:I

    .line 153
    .local v0, "nX":I
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXW:I

    const/4 v2, 0x1

    if-nez v1, :cond_e

    .line 154
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXW:I

    goto :goto_11

    .line 155
    :cond_e
    if-gez v1, :cond_11

    .line 156
    add-int/2addr v0, v1

    .line 159
    :cond_11
    :goto_11
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXY:I

    .line 161
    .local v1, "nY":I
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXH:I

    if-nez v3, :cond_1a

    .line 162
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXH:I

    goto :goto_1d

    .line 163
    :cond_1a
    if-gez v3, :cond_1d

    .line 164
    add-int/2addr v1, v3

    .line 167
    :cond_1d
    :goto_1d
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3d99999a  # 0.075f

    const/high16 v9, 0x3f800000  # 1.0f

    invoke-direct {v2, v9, v9, v9, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 168
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix:Lage/of/civilizations2/jakowski/lukasz/Image;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXW:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXH:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    move-object v4, p1

    move v5, v0

    move v6, v1

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 170
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3e8ccccd  # 0.275f

    invoke-direct {v2, v9, v9, v9, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 171
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXW:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXH:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/high16 v8, 0x3f800000  # 1.0f

    move-object v3, p1

    move v4, v0

    move v5, v1

    invoke-static/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    .line 172
    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_62} :catch_63

    .line 175
    .end local v0  # "nX":I
    .end local v1  # "nY":I
    goto :goto_67

    .line 173
    :catch_63
    move-exception v0

    .line 174
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 177
    .end local v0  # "ex":Ljava/lang/Exception;
    :cond_67
    :goto_67
    return-void
.end method

.method public final getActionDownTime()J
    .registers 3

    .line 3326
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->actDTm:J

    return-wide v0
.end method

.method public final getActionMap()Z
    .registers 2

    .line 3318
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->actionMap:Z

    return v0
.end method

.method public final mABX()V
    .registers 21

    .line 348
    const/4 v1, 0x0

    :try_start_1
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenProvinceID:I

    .line 349
    .local v0, "toProvinceID":I
    const/4 v2, 0x0

    .line 351
    .local v2, "armyMoved":Z
    const/4 v3, 0x0

    move v9, v2

    move v10, v3

    .end local v2  # "armyMoved":Z
    .local v9, "armyMoved":Z
    .local v10, "i":I
    :goto_7
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->lMABX:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v10, v2, :cond_156

    .line 354
    const/4 v2, 0x0

    move v11, v2

    .local v11, "j":I
    :goto_11
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->lMABX:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->civsSize:I

    if-ge v11, v2, :cond_152

    .line 355
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->lMABX:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId(I)I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v3

    if-ne v2, v3, :cond_14e

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->lMABX:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyID(I)I

    move-result v2

    if-lez v2, :cond_14e

    .line 358
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->lMABX:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4, v0}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;-><init>(III)V

    move-object v12, v2

    .line 359
    .local v12, "currentRegroupArmy":Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->lMABX:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyID(I)I

    move-result v2

    move v15, v2

    .line 361
    .local v15, "numOfUnitsToMove":I
    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->getRouteSize()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c6

    .line 362
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->lMABX:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    move v4, v0

    move v5, v15

    invoke-virtual/range {v2 .. v8}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->moveArmyAction(IIIIZZ)Z

    .line 363
    const/4 v2, 0x1

    move v9, v2

    .end local v9  # "armyMoved":Z
    .restart local v2  # "armyMoved":Z
    goto/16 :goto_152

    .line 366
    .end local v2  # "armyMoved":Z
    .restart local v9  # "armyMoved":Z
    :cond_c6
    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->getRouteSize()I

    move-result v2

    if-lez v2, :cond_14c

    .line 367
    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->getRouteSize()I

    move-result v2

    if-ne v2, v3, :cond_fc

    .line 368
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->lMABX:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v12, v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->getRoute(I)I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v17

    const/16 v18, 0x1

    const/16 v19, 0x1

    move v3, v15

    .end local v15  # "numOfUnitsToMove":I
    .local v3, "numOfUnitsToMove":I
    move v15, v2

    move/from16 v16, v3

    invoke-virtual/range {v13 .. v19}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->moveArmyAction(IIIIZZ)Z

    goto :goto_152

    .line 371
    .end local v3  # "numOfUnitsToMove":I
    .restart local v15  # "numOfUnitsToMove":I
    :cond_fc
    move v3, v15

    .end local v15  # "numOfUnitsToMove":I
    .restart local v3  # "numOfUnitsToMove":I
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->lMABX:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v12, v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->getRoute(I)I

    move-result v15

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v17

    const/16 v18, 0x1

    const/16 v19, 0x1

    move/from16 v16, v3

    invoke-virtual/range {v13 .. v19}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->moveArmyAction(IIIIZZ)Z

    move-result v2

    if-eqz v2, :cond_152

    .line 372
    invoke-virtual {v12, v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->getRoute(I)I

    move-result v2

    invoke-virtual {v12, v2}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->setFromProvinceID(I)V

    .line 373
    invoke-virtual {v12, v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->removeRoute(I)V

    .line 374
    invoke-virtual {v12, v3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->setNumOfUnits(I)V

    .line 376
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addRegroupArmy(Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;)V

    .line 377
    const/4 v2, 0x1

    move v9, v2

    .end local v9  # "armyMoved":Z
    .restart local v2  # "armyMoved":Z
    goto :goto_152

    .line 366
    .end local v2  # "armyMoved":Z
    .end local v3  # "numOfUnitsToMove":I
    .restart local v9  # "armyMoved":Z
    .restart local v15  # "numOfUnitsToMove":I
    :cond_14c
    move v3, v15

    .end local v15  # "numOfUnitsToMove":I
    .restart local v3  # "numOfUnitsToMove":I
    goto :goto_152

    .line 354
    .end local v3  # "numOfUnitsToMove":I
    .end local v12  # "currentRegroupArmy":Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;
    :cond_14e
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_11

    .line 351
    .end local v11  # "j":I
    :cond_152
    :goto_152
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_7

    .line 388
    .end local v10  # "i":I
    :cond_156
    if-eqz v9, :cond_163

    .line 389
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->SFXManager:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->SFXManager:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->playMoveArmy()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->playSound(I)V
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_163} :catch_164

    .line 393
    .end local v0  # "toProvinceID":I
    .end local v9  # "armyMoved":Z
    :cond_163
    goto :goto_168

    .line 391
    :catch_164
    move-exception v0

    .line 392
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 395
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_168
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ActionInfo(Z)V

    .line 396
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->resetRegroupArmy_Data()V

    .line 397
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->checkProvinceActionMenu()V

    .line 399
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateInGameTopAll(I)V

    .line 401
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->setNoOrders(Z)V

    .line 403
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/RTS;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a2

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->PAUSE:Z

    if-nez v0, :cond_1a2

    .line 404
    const/high16 v0, 0x3f400000  # 0.75f

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/RTS;->updateTimePast_AfterAction(F)V

    .line 407
    :cond_1a2
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->cMABX()V

    .line 408
    return-void
.end method

.method public final setActionDownTime(J)V
    .registers 3
    .param p1, "lActionDownTime"  # J

    .line 3330
    iput-wide p1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->actDTm:J

    .line 3331
    return-void
.end method

.method public final setActionMap(Z)V
    .registers 2
    .param p1, "actionMap"  # Z

    .line 3322
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->actionMap:Z

    .line 3323
    return-void
.end method

.method public final setUpdateStartMovePosX(Z)V
    .registers 2
    .param p1, "updateStartMovePosX"  # Z

    .line 3310
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->updateStartMovePosX:Z

    .line 3311
    return-void
.end method

.method public final setUpdateStartMovePosY(Z)V
    .registers 2
    .param p1, "updateStartMovePosY"  # Z

    .line 3314
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->updateStartMovePosY:Z

    .line 3315
    return-void
.end method

.method public final ueExA()V
    .registers 4

    .line 1327
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    .line 1329
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInSelectCiv()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1330
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$9;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$9;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto/16 :goto_2dc

    .line 1346
    :cond_14
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1347
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getActiveTurnStateID()Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->LOAD_AI_RTO:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    if-eq v1, v2, :cond_3a

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getActiveTurnStateID()Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->LOADING_NEXT_TURN:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    if-ne v1, v2, :cond_31

    goto :goto_3a

    .line 1360
    :cond_31
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$11;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$11;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto/16 :goto_2dc

    .line 1348
    :cond_3a
    :goto_3a
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$10;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$10;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto/16 :goto_2dc

    .line 1510
    :cond_43
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Timeline()Z

    move-result v1

    if-nez v1, :cond_2d5

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInVictory()Z

    move-result v1

    if-eqz v1, :cond_55

    goto/16 :goto_2d5

    .line 1527
    :cond_55
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Formable_Civ_Provinces()Z

    move-result v1

    if-nez v1, :cond_2cd

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_FormAnimation()Z

    move-result v1

    if-eqz v1, :cond_67

    goto/16 :goto_2cd

    .line 1537
    :cond_67
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateNewGame()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 1538
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$14;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$14;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto/16 :goto_2dc

    .line 1597
    :cond_78
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameAC()Z

    move-result v1

    if-eqz v1, :cond_89

    .line 1598
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$15;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto/16 :goto_2dc

    .line 1654
    :cond_89
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInSelectAvailableCivilizations()Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 1655
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$16;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$16;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto/16 :goto_2dc

    .line 1687
    :cond_9a
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_PeaceTreaty()Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 1688
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$17;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$17;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto/16 :goto_2dc

    .line 1698
    :cond_ab
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_PeaceTreaty_Response()Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 1699
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$18;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$18;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto/16 :goto_2dc

    .line 1710
    :cond_bc
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Civilizations()Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 1711
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$19;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$19;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto/16 :goto_2dc

    .line 1720
    :cond_cd
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Civilizations_Select()Z

    move-result v1

    if-eqz v1, :cond_de

    .line 1721
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$20;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$20;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto/16 :goto_2dc

    .line 1729
    :cond_de
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_TechnologyLevels()Z

    move-result v1

    if-eqz v1, :cond_ef

    .line 1730
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$21;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$21;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto/16 :goto_2dc

    .line 1754
    :cond_ef
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Happiness()Z

    move-result v1

    if-eqz v1, :cond_100

    .line 1755
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$22;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$22;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto/16 :goto_2dc

    .line 1776
    :cond_100
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_StartingMoney()Z

    move-result v1

    if-eqz v1, :cond_111

    .line 1777
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$23;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$23;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto/16 :goto_2dc

    .line 1799
    :cond_111
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Available_Provinces()Z

    move-result v1

    if-eqz v1, :cond_122

    .line 1800
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$24;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$24;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto/16 :goto_2dc

    .line 1827
    :cond_122
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_WastelandMaps_Edit()Z

    move-result v1

    if-eqz v1, :cond_133

    .line 1828
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$25;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$25;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto/16 :goto_2dc

    .line 1859
    :cond_133
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_ArmySeaBoxes_Add()Z

    move-result v1

    if-eqz v1, :cond_144

    .line 1860
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$26;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$26;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto/16 :goto_2dc

    .line 1907
    :cond_144
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCrScAs()Z

    move-result v1

    if-eqz v1, :cond_155

    .line 1908
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$27;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$27;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto/16 :goto_2dc

    .line 1976
    :cond_155
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_SetUpArmy()Z

    move-result v1

    if-eqz v1, :cond_166

    .line 1977
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$28;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$28;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto/16 :goto_2dc

    .line 2030
    :cond_166
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Events_SelectProvinces()Z

    move-result v1

    if-eqz v1, :cond_177

    .line 2031
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$29;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$29;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto/16 :goto_2dc

    .line 2075
    :cond_177
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Cores()Z

    move-result v1

    if-eqz v1, :cond_188

    .line 2076
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$30;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$30;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto/16 :goto_2dc

    .line 2123
    :cond_188
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_FormableCivs_Edit()Z

    move-result v1

    if-eqz v1, :cond_199

    .line 2124
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$31;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$31;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto/16 :goto_2dc

    .line 2164
    :cond_199
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_HolyRomanEmpire()Z

    move-result v1

    if-eqz v1, :cond_1aa

    .line 2165
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$32;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$32;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto/16 :goto_2dc

    .line 2208
    :cond_1aa
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_CreateAVassal()Z

    move-result v1

    if-eqz v1, :cond_1bb

    .line 2209
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$33;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$33;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto/16 :goto_2dc

    .line 2265
    :cond_1bb
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_SelectProvinces()Z

    move-result v1

    if-eqz v1, :cond_1cc

    .line 2266
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$34;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$34;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto/16 :goto_2dc

    .line 2309
    :cond_1cc
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_TradeSelectCiv()Z

    move-result v1

    if-eqz v1, :cond_1dd

    .line 2310
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$35;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$35;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto/16 :goto_2dc

    .line 2328
    :cond_1dd
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInManageDiplomacy()Z

    move-result v1

    if-eqz v1, :cond_265

    .line 2329
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInManageDiplomacy_Relations_Interactive()Z

    move-result v1

    if-eqz v1, :cond_1f6

    .line 2330
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$36;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$36;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto/16 :goto_2dc

    .line 2370
    :cond_1f6
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInManageDiplomacy_Pacts3()Z

    move-result v1

    if-eqz v1, :cond_207

    .line 2371
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$37;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$37;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto/16 :goto_2dc

    .line 2383
    :cond_207
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInManageDiplomacy_Truces()Z

    move-result v1

    if-eqz v1, :cond_218

    .line 2384
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$38;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$38;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto/16 :goto_2dc

    .line 2396
    :cond_218
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInManageDiplomacy_Guarantee()Z

    move-result v1

    if-eqz v1, :cond_229

    .line 2397
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$39;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$39;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto/16 :goto_2dc

    .line 2409
    :cond_229
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInManageDiplomacy_DefensivePact()Z

    move-result v1

    if-eqz v1, :cond_23a

    .line 2410
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$40;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$40;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto/16 :goto_2dc

    .line 2422
    :cond_23a
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInManageDiplomacy_MilitaryAccess()Z

    move-result v1

    if-eqz v1, :cond_24b

    .line 2423
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$41;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$41;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto/16 :goto_2dc

    .line 2435
    :cond_24b
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInManageDiplomacy_Vassals()Z

    move-result v1

    if-eqz v1, :cond_25c

    .line 2436
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$42;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$42;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto/16 :goto_2dc

    .line 2449
    :cond_25c
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$43;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$43;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto/16 :goto_2dc

    .line 2459
    :cond_265
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateCity()Z

    move-result v1

    if-eqz v1, :cond_275

    .line 2460
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$44;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$44;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto :goto_2dc

    .line 2481
    :cond_275
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_Terrain()Z

    move-result v1

    if-eqz v1, :cond_285

    .line 2482
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$45;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$45;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto :goto_2dc

    .line 2532
    :cond_285
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_GrowthRate()Z

    move-result v1

    if-eqz v1, :cond_295

    .line 2533
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$46;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$46;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto :goto_2dc

    .line 2556
    :cond_295
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_Continents()Z

    move-result v1

    if-eqz v1, :cond_2a5

    .line 2557
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$47;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$47;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto :goto_2dc

    .line 2572
    :cond_2a5
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_Regions()Z

    move-result v1

    if-eqz v1, :cond_2b5

    .line 2573
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$48;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$48;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto :goto_2dc

    .line 2596
    :cond_2b5
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameEditor_Regions()Z

    move-result v1

    if-eqz v1, :cond_2c5

    .line 2597
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$49;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$49;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto :goto_2dc

    .line 2614
    :cond_2c5
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$50;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$50;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto :goto_2dc

    .line 1528
    :cond_2cd
    :goto_2cd
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$13;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$13;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto :goto_2dc

    .line 1511
    :cond_2d5
    :goto_2d5
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$12;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$12;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUSAPEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    .line 2626
    :goto_2dc
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAxDEA:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    .line 2628
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInManageDiplomacy()Z

    move-result v1

    if-eqz v1, :cond_2ee

    .line 2629
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$51;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$51;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAxDEA:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto :goto_2f5

    .line 2652
    :cond_2ee
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$52;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$52;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAxDEA:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    .line 2663
    :goto_2f5
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mpAMEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    .line 2665
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInManageDiplomacy()Z

    move-result v1

    if-eqz v1, :cond_307

    .line 2666
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$53;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$53;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mpAMEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto :goto_30e

    .line 2675
    :cond_307
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager$54;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$54;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mpAMEAc:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    .line 2686
    :goto_30e
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUEA:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    .line 2688
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInManageDiplomacy_Vassals()Z

    move-result v0

    if-eqz v0, :cond_320

    .line 2689
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TouchManager$55;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$55;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUEA:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto :goto_347

    .line 2752
    :cond_320
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInManageDiplomacy()Z

    move-result v0

    if-eqz v0, :cond_330

    .line 2753
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TouchManager$56;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$56;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUEA:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto :goto_347

    .line 3259
    :cond_330
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCrScAs()Z

    move-result v0

    if-eqz v0, :cond_340

    .line 3260
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TouchManager$57;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$57;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUEA:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    goto :goto_347

    .line 3281
    :cond_340
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TouchManager$58;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager$58;-><init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->mAcUEA:Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;

    .line 3288
    :goto_347
    return-void
.end method

.method public final updateEnableScaling()V
    .registers 2

    .line 116
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getIn_MainMenu()Z

    move-result v0

    if-nez v0, :cond_4a

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getIn_AboutMenu()Z

    move-result v0

    if-nez v0, :cond_4a

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getIn_SKMenu()Z

    move-result v0

    if-nez v0, :cond_4a

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getIn_MMMenu()Z

    move-result v0

    if-nez v0, :cond_4a

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getIn_FBMenu()Z

    move-result v0

    if-nez v0, :cond_4a

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getIn_NVMenu()Z

    move-result v0

    if-nez v0, :cond_4a

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getIn_InitMenu()Z

    move-result v0

    if-nez v0, :cond_4a

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInLoadMap()Z

    move-result v0

    if-nez v0, :cond_4a

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInLoadSave()Z

    move-result v0

    if-nez v0, :cond_4a

    const/4 v0, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v0, 0x0

    :goto_4b
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->enableScaling:Z

    .line 143
    return-void
.end method
