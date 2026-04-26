.class public Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;
.super Ljava/lang/Object;
.source "PlagueManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$ConfigDiseasesData;,
        Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$Data_Diseases;
    }
.end annotation


# static fields
.field public static final OUTBREAK_MODIFY:I = 0xf4240

.field public static final OUTBREAK_RANDOM:I = 0x30d4

.field public static final PLAGUE_PAUSE_FOR_X_TURNS:I = 0x26


# instance fields
.field private iPlaguesSize:I

.field private lPlagues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;",
            ">;"
        }
    .end annotation
.end field

.field public plaguesActive:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;",
            ">;"
        }
    .end annotation
.end field

.field public radiationID:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->iPlaguesSize:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->plaguesActive:Ljava/util/List;

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->radiationID:I

    .line 328
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->loadPlagues()V

    .line 329
    return-void
.end method


# virtual methods
.method public final addPlague_Radiation(I)V
    .registers 18
    .param p1, "provinceID"  # I

    .line 261
    move-object/from16 v1, p0

    iget v0, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->radiationID:I

    if-ltz v0, :cond_111

    .line 263
    :try_start_6
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->plaguesActive:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 265
    .local v0, "nPlagueID_InGame":I
    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->plaguesActive:Ljava/util/List;

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;

    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->radiationID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->radiationID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v5, v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->fR:F

    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->radiationID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v6, v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->fG:F

    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->radiationID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v7, v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->fB:F

    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->radiationID:I

    .line 267
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->DEATH_RATE_MIN:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    iget v9, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->radiationID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->DEATH_RATE_EXTRA:F

    const v9, 0x47c35000  # 100000.0f

    mul-float v8, v8, v9

    const/high16 v10, 0x3f800000  # 1.0f

    add-float/2addr v8, v10

    float-to-int v8, v8

    invoke-virtual {v3, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    add-float v11, v2, v3

    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->radiationID:I

    .line 268
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->DURATION_TURNS_MIN:I

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    iget v8, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->radiationID:I

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->DURATION_TURNS_EXTRA:I

    if-lez v3, :cond_9a

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    iget v14, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->radiationID:I

    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->DURATION_TURNS_EXTRA:I

    invoke-virtual {v3, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    goto :goto_9b

    :cond_9a
    const/4 v3, 0x0

    :goto_9b
    add-int v14, v2, v3

    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->radiationID:I

    .line 269
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->EXPANSION_MODIFIER:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    iget v15, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->radiationID:I

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->EXPANSION_MODIFIER_EXTRA:F

    mul-float v8, v8, v9

    add-float/2addr v8, v10

    float-to-int v8, v8

    invoke-virtual {v3, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    add-float v15, v2, v3

    move-object v2, v13

    move/from16 v3, p1

    move v8, v0

    move v9, v11

    move v10, v14

    move v11, v15

    invoke-direct/range {v2 .. v11}, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;-><init>(ILjava/lang/String;FFFIFIF)V

    .line 265
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->radiationID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->OUTBREAK_PROVINCES:I

    .line 272
    .local v2, "nOutbreakProvinces":I
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->radiationID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->OUTBREAK_PROVINCES_EXTRA:I

    if-lez v3, :cond_fd

    .line 273
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->radiationID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->OUTBREAK_PROVINCES_EXTRA:I

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 276
    :cond_fd
    add-int/lit8 v2, v2, -0x1

    .line 277
    if-lez v2, :cond_10c

    .line 278
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->plaguesActive:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;->spreadDisease(I)V
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10c} :catch_10d

    .line 282
    .end local v0  # "nPlagueID_InGame":I
    .end local v2  # "nOutbreakProvinces":I
    :cond_10c
    goto :goto_111

    .line 280
    :catch_10d
    move-exception v0

    .line 281
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 284
    .end local v0  # "ex":Ljava/lang/Exception;
    :cond_111
    :goto_111
    return-void
.end method

.method public final getPlague(I)Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;
    .registers 3
    .param p1, "nID"  # I

    .line 388
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    return-object v0
.end method

.method public final getPlagueColor(IF)Lcom/badlogic/gdx/graphics/Color;
    .registers 7
    .param p1, "nID"  # I
    .param p2, "nAlpha"  # F

    .line 392
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->fR:F

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->fG:F

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->fB:F

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public final getPlagueColor_InGame(IF)Lcom/badlogic/gdx/graphics/Color;
    .registers 7
    .param p1, "nID"  # I
    .param p2, "nAlpha"  # F

    .line 404
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->plaguesActive:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;->fR:F

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->plaguesActive:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;->fG:F

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->plaguesActive:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;->fB:F

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public final getPlagueColor_InGame(IIF)Lcom/badlogic/gdx/graphics/Color;
    .registers 10
    .param p1, "nProvinceID"  # I
    .param p2, "nID"  # I
    .param p3, "nAlpha"  # F

    .line 400
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->plaguesActive:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;->fR:F

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->plaguesActive:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;->fG:F

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->plaguesActive:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;->fB:F

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->plaguesActive:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->provincePlague:Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueProvince_GameData;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueProvince_GameData;->iDurationTurnsLeft:F

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;->getDurationPercLEFT(I)F

    move-result v4

    const/high16 v5, 0x3ec00000  # 0.375f

    mul-float v4, v4, v5

    const/high16 v5, 0x3f200000  # 0.625f

    add-float/2addr v4, v5

    mul-float v4, v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public final getPlague_InGame(I)Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;
    .registers 3
    .param p1, "nID"  # I

    .line 396
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->plaguesActive:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;

    return-object v0
.end method

.method public final getPlaguesSize()I
    .registers 2

    .line 408
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->iPlaguesSize:I

    return v0
.end method

.method public final loadPlagues()V
    .registers 41

    .line 332
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    .line 335
    :try_start_9
    const-string v0, "game/Diseases.json"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 337
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, "fileContent":Ljava/lang/String;
    new-instance v3, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 340
    .local v3, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v4, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$ConfigDiseasesData;

    const-string v5, "Disease"

    const-class v6, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$Data_Diseases;

    invoke-virtual {v3, v4, v5, v6}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 341
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$ConfigDiseasesData;

    invoke-direct {v4}, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$ConfigDiseasesData;-><init>()V

    .line 342
    .local v4, "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$ConfigDiseasesData;
    const-class v5, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$ConfigDiseasesData;

    invoke-virtual {v3, v5, v2}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$ConfigDiseasesData;

    move-object v4, v5

    .line 344
    iget-object v5, v4, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$ConfigDiseasesData;->Disease:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_35
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_be

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 345
    .local v6, "e":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$Data_Diseases;

    .line 347
    .local v7, "tempData":Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$Data_Diseases;
    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    new-instance v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget-object v10, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$Data_Diseases;->Name:Ljava/lang/String;

    iget v11, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$Data_Diseases;->BeginningYear:I

    iget v12, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$Data_Diseases;->EndYear:I

    iget v13, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$Data_Diseases;->DURATION_TURNS_MIN:I

    iget v14, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$Data_Diseases;->DURATION_TURNS_EXTRA:I

    iget v9, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$Data_Diseases;->DEATH_RATE_MIN:F

    move-object/from16 v32, v0

    .end local v0  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .local v32, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    iget v0, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$Data_Diseases;->DEATH_RATE_EXTRA:F

    move-object/from16 v33, v2

    .end local v2  # "fileContent":Ljava/lang/String;
    .local v33, "fileContent":Ljava/lang/String;
    iget v2, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$Data_Diseases;->EXPANSION_MODIFIER:F

    move-object/from16 v34, v3

    .end local v3  # "json":Lcom/badlogic/gdx/utils/Json;
    .local v34, "json":Lcom/badlogic/gdx/utils/Json;
    iget v3, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$Data_Diseases;->EXPANSION_MODIFIER_EXTRA:F

    move-object/from16 v35, v4

    .end local v4  # "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$ConfigDiseasesData;
    .local v35, "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$ConfigDiseasesData;
    iget v4, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$Data_Diseases;->R:I

    move-object/from16 v36, v5

    iget v5, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$Data_Diseases;->G:I

    move-object/from16 v37, v6

    .end local v6  # "e":Ljava/lang/Object;
    .local v37, "e":Ljava/lang/Object;
    iget v6, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$Data_Diseases;->B:I

    iget v1, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$Data_Diseases;->OUTBREAK_CHANCE:F

    move-object/from16 v38, v8

    iget v8, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$Data_Diseases;->OUTBREAK_PROVINCES:I

    move/from16 v23, v8

    iget v8, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$Data_Diseases;->OUTBREAK_PROVINCES_EXTRA:I

    move/from16 v24, v8

    iget v8, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$Data_Diseases;->OUTBREAK_SCORE_POPULATION:F

    move/from16 v25, v8

    iget v8, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$Data_Diseases;->OUTBREAK_SCORE_ECONOMY:F

    move/from16 v26, v8

    iget v8, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$Data_Diseases;->OUTBREAK_SCORE_DEVELOPMENT:F

    move/from16 v27, v8

    iget v8, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$Data_Diseases;->OUTBREAK_SCORE_HAPPINESS:F

    move/from16 v28, v8

    iget v8, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$Data_Diseases;->OUTBREAK_SCORE_DEVELOPMENT_LOW:F

    move/from16 v29, v8

    iget v8, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$Data_Diseases;->OUTBREAK_SCORE_HAPPINESS_LOW:F

    move/from16 v30, v8

    iget-boolean v8, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$Data_Diseases;->Radiation:Z

    move/from16 v16, v9

    move-object v9, v15

    move-object/from16 v39, v7

    move-object v7, v15

    .end local v7  # "tempData":Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$Data_Diseases;
    .local v39, "tempData":Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$Data_Diseases;
    move/from16 v15, v16

    move/from16 v16, v0

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v1

    move/from16 v31, v8

    invoke-direct/range {v9 .. v31}, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;-><init>(Ljava/lang/String;IIIIFFFFIIIFIIFFFFFFZ)V

    move-object/from16 v0, v38

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_9 .. :try_end_b0} :catch_c7

    .line 370
    move-object/from16 v1, p0

    move-object/from16 v0, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    move-object/from16 v5, v36

    .end local v37  # "e":Ljava/lang/Object;
    .end local v39  # "tempData":Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$Data_Diseases;
    goto/16 :goto_35

    .line 344
    .end local v32  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v33  # "fileContent":Ljava/lang/String;
    .end local v34  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v35  # "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$ConfigDiseasesData;
    .restart local v0  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v2  # "fileContent":Ljava/lang/String;
    .restart local v3  # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v4  # "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$ConfigDiseasesData;
    :cond_be
    move-object/from16 v32, v0

    move-object/from16 v33, v2

    move-object/from16 v34, v3

    move-object/from16 v35, v4

    .line 373
    .end local v0  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2  # "fileContent":Ljava/lang/String;
    .end local v3  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v4  # "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$ConfigDiseasesData;
    goto :goto_cb

    .line 371
    :catch_c7
    move-exception v0

    .line 372
    .local v0, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 375
    .end local v0  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_cb
    move-object/from16 v1, p0

    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->iPlaguesSize:I

    .line 377
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d6
    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->iPlaguesSize:I

    if-ge v0, v2, :cond_ec

    .line 378
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget-boolean v2, v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->Radiation:Z

    if-eqz v2, :cond_e9

    .line 379
    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->radiationID:I

    .line 380
    goto :goto_ec

    .line 377
    :cond_e9
    add-int/lit8 v0, v0, 0x1

    goto :goto_d6

    .line 383
    .end local v0  # "i":I
    :cond_ec
    :goto_ec
    return-void
.end method

.method public final runPlagues()V
    .registers 7

    .line 70
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->plaguesActive:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 71
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->plaguesActive:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;->runDisease()V
    :try_end_15
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_15} :catch_120
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_15} :catch_11b

    .line 70
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 76
    .end local v0  # "i":I
    :cond_18
    :try_start_18
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->plaguesActive:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .restart local v0  # "i":I
    :goto_1f
    if-ltz v0, :cond_f5

    .line 77
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->plaguesActive:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;

    iget v3, v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;->iDurationTurnsLeft:I

    sub-int/2addr v3, v1

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;->iDurationTurnsLeft:I

    if-ge v3, v1, :cond_f1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->plaguesActive:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_f1

    .line 80
    add-int/lit8 v2, v0, 0x1

    .local v2, "k":I
    :goto_42
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->plaguesActive:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_ec

    .line 81
    const/4 v3, 0x0

    .local v3, "o":I
    :goto_4b
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->plaguesActive:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_d0

    .line 82
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->plaguesActive:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->provincePlague:Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueProvince_GameData;

    if-eqz v4, :cond_cc

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->plaguesActive:Ljava/util/List;

    .line 83
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->provincePlague:Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueProvince_GameData;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueProvince_GameData;->iPlagueID_InGame:I

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->plaguesActive:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;->getPlagueID_InGame()I

    move-result v5

    if-ne v4, v5, :cond_cc

    .line 85
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->plaguesActive:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->provincePlague:Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueProvince_GameData;

    iget v5, v4, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueProvince_GameData;->iPlagueID_InGame:I

    sub-int/2addr v5, v1

    iput v5, v4, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueProvince_GameData;->iPlagueID_InGame:I

    .line 81
    :cond_cc
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4b

    .line 89
    .end local v3  # "o":I
    :cond_d0
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->plaguesActive:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->plaguesActive:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;->getPlagueID_InGame()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;->setPlagueID_InGame(I)V

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_42

    .line 92
    .end local v2  # "k":I
    :cond_ec
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->plaguesActive:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_f1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_18 .. :try_end_f1} :catch_fb
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_f1} :catch_f6

    .line 76
    :cond_f1
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_1f

    .end local v0  # "i":I
    :cond_f5
    goto :goto_ff

    .line 97
    :catch_f6
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_f7
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_100

    .line 95
    .end local v0  # "e":Ljava/lang/NullPointerException;
    :catch_fb
    move-exception v0

    .line 96
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 99
    .end local v0  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_ff
    nop

    .line 102
    :goto_100
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->plaguesActive:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_107
    if-ltz v0, :cond_117

    .line 103
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->plaguesActive:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;->spreadDisease()V

    .line 102
    add-int/lit8 v0, v0, -0x1

    goto :goto_107

    .line 106
    .end local v0  # "i":I
    :cond_117
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->startDisease()V
    :try_end_11a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f7 .. :try_end_11a} :catch_120
    .catch Ljava/lang/NullPointerException; {:try_start_f7 .. :try_end_11a} :catch_11b

    goto :goto_124

    .line 109
    :catch_11b
    move-exception v0

    .line 110
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_125

    .line 107
    .end local v0  # "ex":Ljava/lang/NullPointerException;
    :catch_120
    move-exception v0

    .line 108
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 111
    .end local v0  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_124
    nop

    .line 112
    :goto_125
    return-void
.end method

.method public final startDisease()V
    .registers 10

    .line 118
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v1, 0x30d4

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 120
    .local v0, "tRandScore":I
    int-to-float v1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/GameAges;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->CURRENT_AGEID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/GameAges;->getAge_DiseaseChance(I)F

    move-result v2

    const v3, 0x46435000  # 12500.0f

    mul-float v2, v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_ac

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v1, "tempIDsToSpawn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 125
    .local v2, "tScoreTotal":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->iPlaguesSize:I

    const v5, 0x49742400  # 1000000.0f

    if-ge v3, v4, :cond_5d

    .line 126
    sget v4, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->currYear:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->BeginningYear:I

    if-lt v4, v6, :cond_5a

    sget v4, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->currYear:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->EndYear:I

    if-gt v4, v6, :cond_5a

    .line 127
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    int-to-float v4, v2

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->OUTBREAK_CHANCE:F

    mul-float v6, v6, v5

    add-float/2addr v4, v6

    float-to-int v2, v4

    .line 125
    :cond_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 133
    .end local v3  # "i":I
    :cond_5d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_ac

    .line 134
    const/4 v3, 0x0

    .line 136
    .local v3, "spawnID":I
    if-lez v2, :cond_95

    .line 137
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    const/4 v6, 0x0

    .local v6, "tCurrentScore":I
    :goto_6d
    if-ltz v4, :cond_94

    .line 138
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->OUTBREAK_CHANCE:F

    mul-float v7, v7, v5

    float-to-int v7, v7

    add-int/2addr v6, v7

    .line 140
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v7, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 142
    if-le v6, v0, :cond_91

    .line 143
    move v3, v4

    .line 144
    goto :goto_94

    .line 137
    :cond_91
    add-int/lit8 v4, v4, -0x1

    goto :goto_6d

    .end local v4  # "i":I
    .end local v6  # "tCurrentScore":I
    :cond_94
    :goto_94
    goto :goto_9f

    .line 149
    :cond_95
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 152
    :goto_9f
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->startDisease(I)V

    .line 155
    .end local v1  # "tempIDsToSpawn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2  # "tScoreTotal":I
    .end local v3  # "spawnID":I
    :cond_ac
    return-void
.end method

.method public final startDisease(I)V
    .registers 35
    .param p1, "nID"  # I

    .line 158
    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->OUTBREAK_PROVINCES:I

    .line 159
    .local v0, "nOutbreakProvinces":I
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->OUTBREAK_PROVINCES_EXTRA:I

    if-lez v3, :cond_2d

    .line 160
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->OUTBREAK_PROVINCES_EXTRA:I

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v0, v3

    move v3, v0

    goto :goto_2e

    .line 159
    :cond_2d
    move v3, v0

    .line 164
    .end local v0  # "nOutbreakProvinces":I
    .local v3, "nOutbreakProvinces":I
    :goto_2e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 166
    .local v4, "lPossibleProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_35
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v5

    if-ge v0, v5, :cond_88

    .line 167
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v5

    if-gez v5, :cond_85

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v5

    if-nez v5, :cond_85

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    if-lez v5, :cond_85

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->provincePlague:Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueProvince_GameData;

    if-nez v5, :cond_85

    sget v5, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iLastPlagueTurnID:I

    sub-int/2addr v5, v6

    const/16 v6, 0x26

    if-le v5, v6, :cond_85

    .line 168
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_85
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 172
    .end local v0  # "i":I
    :cond_88
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3d7

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 175
    .local v5, "lSpreadPropositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/high16 v0, 0x41200000  # 10.0f

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->DEATH_RATE_MIN:F

    const/high16 v7, 0x3f800000  # 1.0f

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    mul-float v6, v6, v0

    float-to-int v0, v6

    add-int/lit8 v0, v0, 0x8

    .line 177
    .local v0, "nToCheck":I
    :goto_ab
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_cd

    add-int/lit8 v6, v0, -0x1

    .end local v0  # "nToCheck":I
    .local v6, "nToCheck":I
    if-lez v0, :cond_ce

    .line 178
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 180
    .local v0, "tRandID":I
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 182
    .end local v0  # "tRandID":I
    move v0, v6

    goto :goto_ab

    .line 177
    .end local v6  # "nToCheck":I
    .local v0, "nToCheck":I
    :cond_cd
    move v6, v0

    .line 184
    .end local v0  # "nToCheck":I
    .restart local v6  # "nToCheck":I
    :cond_ce
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 186
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3d2

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 189
    .local v8, "lSpreadPropositions_Score":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v0, 0x0

    .line 190
    .local v0, "tMaxPopulation":I
    const/4 v9, 0x0

    .line 191
    .local v9, "tMaxEconomy":I
    const/4 v10, 0x0

    .line 192
    .local v10, "tMaxDevelopemnt":F
    const/4 v11, 0x0

    .line 194
    .local v11, "tMaxHappiness":F
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    move/from16 v32, v9

    move v9, v0

    move v0, v12

    move v12, v11

    move v11, v10

    move/from16 v10, v32

    .local v0, "i":I
    .local v9, "tMaxPopulation":I
    .local v10, "tMaxEconomy":I
    .local v11, "tMaxDevelopemnt":F
    .local v12, "tMaxHappiness":F
    :goto_ef
    if-ltz v0, :cond_1a9

    .line 195
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v13

    if-le v13, v9, :cond_123

    .line 196
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v9

    .line 199
    :cond_123
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v13

    if-le v13, v10, :cond_14d

    .line 200
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v10

    .line 203
    :cond_14d
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v13

    cmpl-float v13, v13, v11

    if-lez v13, :cond_179

    .line 204
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v11

    .line 207
    :cond_179
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappi()F

    move-result v13

    cmpl-float v13, v13, v12

    if-lez v13, :cond_1a5

    .line 208
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappi()F

    move-result v12

    .line 194
    :cond_1a5
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_ef

    .line 212
    .end local v0  # "i":I
    :cond_1a9
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0  # "i":I
    :goto_1af
    if-ltz v0, :cond_2ab

    .line 213
    iget-object v13, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    .line 214
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v13, v13, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->OUTBREAK_SCORE_POPULATION:F

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v14

    int-to-float v14, v14

    mul-float v13, v13, v14

    int-to-float v14, v9

    div-float/2addr v13, v14

    iget-object v14, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    .line 215
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v14, v14, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->OUTBREAK_SCORE_ECONOMY:F

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v15, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v7

    int-to-float v7, v7

    mul-float v14, v14, v7

    int-to-float v7, v10

    div-float/2addr v14, v7

    add-float/2addr v13, v14

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    .line 217
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->OUTBREAK_SCORE_DEVELOPMENT_LOW:F

    iget-object v14, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v14, v14, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->OUTBREAK_SCORE_DEVELOPMENT_LOW:F

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    move-object/from16 v18, v4

    .end local v4  # "lPossibleProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v18, "lPossibleProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v15, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v4

    mul-float v14, v14, v4

    div-float/2addr v14, v11

    sub-float/2addr v7, v14

    add-float/2addr v13, v7

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    .line 218
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->OUTBREAK_SCORE_DEVELOPMENT:F

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v7, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v7

    mul-float v4, v4, v7

    div-float/2addr v4, v11

    add-float/2addr v13, v4

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    .line 220
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->OUTBREAK_SCORE_HAPPINESS_LOW:F

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->OUTBREAK_SCORE_HAPPINESS_LOW:F

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappi()F

    move-result v14

    mul-float v7, v7, v14

    div-float/2addr v7, v12

    sub-float/2addr v4, v7

    add-float/2addr v13, v4

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    .line 221
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->OUTBREAK_SCORE_HAPPINESS:F

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v7, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappi()F

    move-result v7

    mul-float v4, v4, v7

    div-float/2addr v4, v12

    add-float/2addr v13, v4

    .line 214
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 213
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v0, v0, -0x1

    move-object/from16 v4, v18

    const/high16 v7, 0x3f800000  # 1.0f

    goto/16 :goto_1af

    .end local v18  # "lPossibleProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v4  # "lPossibleProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2ab
    move-object/from16 v18, v4

    .line 224
    .end local v0  # "i":I
    .end local v4  # "lPossibleProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v18  # "lPossibleProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 226
    .local v0, "tBestID":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v32, v4

    move v4, v0

    move/from16 v0, v32

    .local v0, "i":I
    .local v4, "tBestID":I
    :goto_2b9
    if-lez v0, :cond_2d7

    .line 227
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    cmpg-float v7, v7, v13

    if-gez v7, :cond_2d4

    .line 228
    move v4, v0

    .line 226
    :cond_2d4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2b9

    .line 232
    .end local v0  # "i":I
    :cond_2d7
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->plaguesActive:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .line 234
    .local v7, "nPlagueID_InGame":I
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->plaguesActive:Ljava/util/List;

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v20

    iget-object v14, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->getName()Ljava/lang/String;

    move-result-object v21

    iget-object v14, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v14, v14, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->fR:F

    iget-object v15, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v15, v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->fG:F

    move/from16 v16, v6

    .end local v6  # "nToCheck":I
    .local v16, "nToCheck":I
    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->fB:F

    move/from16 v29, v9

    .end local v9  # "tMaxPopulation":I
    .local v29, "tMaxPopulation":I
    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    .line 236
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->DEATH_RATE_MIN:F

    move/from16 v30, v10

    .end local v10  # "tMaxEconomy":I
    .local v30, "tMaxEconomy":I
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    move/from16 v31, v11

    .end local v11  # "tMaxDevelopemnt":F
    .local v31, "tMaxDevelopemnt":F
    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->DEATH_RATE_EXTRA:F

    const v19, 0x47c35000  # 100000.0f

    mul-float v11, v11, v19

    const/high16 v17, 0x3f800000  # 1.0f

    add-float v11, v11, v17

    float-to-int v11, v11

    invoke-virtual {v10, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    int-to-float v10, v10

    div-float v10, v10, v19

    add-float v26, v9, v10

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    .line 237
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->DURATION_TURNS_MIN:I

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->DURATION_TURNS_EXTRA:I

    if-lez v10, :cond_36d

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->DURATION_TURNS_EXTRA:I

    invoke-virtual {v10, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    goto :goto_36e

    :cond_36d
    const/4 v10, 0x0

    :goto_36e
    add-int v27, v9, v10

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    .line 238
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->EXPANSION_MODIFIER:F

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->EXPANSION_MODIFIER_EXTRA:F

    mul-float v11, v11, v19

    const/high16 v17, 0x3f800000  # 1.0f

    add-float v11, v11, v17

    float-to-int v11, v11

    invoke-virtual {v10, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    int-to-float v10, v10

    div-float v10, v10, v19

    add-float v28, v9, v10

    move-object/from16 v19, v13

    move/from16 v22, v14

    move/from16 v23, v15

    move/from16 v24, v6

    move/from16 v25, v7

    invoke-direct/range {v19 .. v28}, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;-><init>(ILjava/lang/String;FFFIFIF)V

    .line 234
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :try_start_3a6
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Disease;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v6, v9}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Disease;-><init>(I)V

    invoke-virtual {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->addHistoryLog(Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;)V
    :try_end_3ba
    .catch Ljava/lang/Exception; {:try_start_3a6 .. :try_end_3ba} :catch_3bb

    .line 244
    goto :goto_3bc

    .line 242
    :catch_3bb
    move-exception v0

    .line 246
    :goto_3bc
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 247
    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 249
    add-int/lit8 v3, v3, -0x1

    .line 251
    if-lez v3, :cond_3d9

    .line 252
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->plaguesActive:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plague_GD;->spreadDisease(I)V

    goto :goto_3d9

    .line 186
    .end local v7  # "nPlagueID_InGame":I
    .end local v8  # "lSpreadPropositions_Score":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v12  # "tMaxHappiness":F
    .end local v16  # "nToCheck":I
    .end local v18  # "lPossibleProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v29  # "tMaxPopulation":I
    .end local v30  # "tMaxEconomy":I
    .end local v31  # "tMaxDevelopemnt":F
    .local v4, "lPossibleProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6  # "nToCheck":I
    :cond_3d2
    move-object/from16 v18, v4

    move/from16 v16, v6

    .end local v4  # "lPossibleProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6  # "nToCheck":I
    .restart local v16  # "nToCheck":I
    .restart local v18  # "lPossibleProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_3d9

    .line 172
    .end local v5  # "lSpreadPropositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v16  # "nToCheck":I
    .end local v18  # "lPossibleProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v4  # "lPossibleProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3d7
    move-object/from16 v18, v4

    .line 258
    .end local v4  # "lPossibleProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v18  # "lPossibleProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3d9
    :goto_3d9
    return-void
.end method
