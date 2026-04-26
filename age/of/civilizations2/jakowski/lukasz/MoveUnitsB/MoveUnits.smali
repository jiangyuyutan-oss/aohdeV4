.class public Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;
.super Ljava/lang/Object;
.source "MoveUnits.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits$LittleAnimation;
    }
.end annotation


# instance fields
.field private fromProvinceID:I

.field private iNumOfUnitsWidth:I

.field private moveUnits_Line:Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line;

.field private numOfUnits:I

.field private toProvinceID:I


# direct methods
.method public constructor <init>(IIIZ)V
    .registers 6
    .param p1, "fromProvinceID"  # I
    .param p2, "toProvinceID"  # I
    .param p3, "numOfUnits"  # I
    .param p4, "buildLane"  # Z

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->moveUnits_Line:Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line;

    .line 34
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->fromProvinceID:I

    .line 35
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->toProvinceID:I

    .line 36
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->numOfUnits:I

    .line 39
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->buildMoveUnitsLine()V

    .line 41
    return-void
.end method

.method public constructor <init>(IIIZZ)V
    .registers 7
    .param p1, "fromProvinceID"  # I
    .param p2, "toProvinceID"  # I
    .param p3, "numOfUnits"  # I
    .param p4, "buildLane"  # Z
    .param p5, "migrateLine"  # Z

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->moveUnits_Line:Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line;

    .line 44
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->fromProvinceID:I

    .line 45
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->toProvinceID:I

    .line 46
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->numOfUnits:I

    .line 48
    if-eqz p4, :cond_11

    .line 49
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->buildMoveUnitsLine_Migrate()V

    .line 51
    :cond_11
    return-void
.end method


# virtual methods
.method public final buildMoveUnitsLine()V
    .registers 5

    .line 105
    :try_start_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->fromProvinceID:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->toProvinceID:I

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line;-><init>(II)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->moveUnits_Line:Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line;

    .line 107
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayoutMoveUnits:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontArmy:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->numOfUnits:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 108
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayoutMoveUnits:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->iNumOfUnitsWidth:I
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_2e} :catch_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    goto :goto_32

    .line 122
    :catch_2f
    move-exception v0

    goto :goto_33

    .line 120
    :catch_31
    move-exception v0

    .line 124
    :goto_32
    nop

    .line 125
    :goto_33
    return-void
.end method

.method public final buildMoveUnitsLine_Migrate()V
    .registers 5

    .line 129
    :try_start_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line_Migrate;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->fromProvinceID:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->toProvinceID:I

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line_Migrate;-><init>(II)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->moveUnits_Line:Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line;

    .line 131
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayoutMoveUnits:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontArmy:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->numOfUnits:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 132
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayoutMoveUnits:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->iNumOfUnitsWidth:I
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_2e} :catch_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    goto :goto_35

    .line 146
    :catch_2f
    move-exception v0

    .line 147
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_36

    .line 144
    .end local v0  # "ex":Ljava/lang/Exception;
    :catch_34
    move-exception v0

    .line 148
    :goto_35
    nop

    .line 149
    :goto_36
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 4
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"  # F

    .line 56
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->moveUnits_Line:Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line;

    invoke-virtual {v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line;->drawLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 57
    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 4
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"  # F

    .line 60
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->moveUnits_Line:Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line;

    invoke-virtual {v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line;->drawLine2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 61
    return-void
.end method

.method public final getFromProviID()I
    .registers 2

    .line 88
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->fromProvinceID:I

    return v0
.end method

.method public final getMoveUnits_Line()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line;
    .registers 2

    .line 96
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->moveUnits_Line:Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line;

    return-object v0
.end method

.method public final getNumberOfUnits()I
    .registers 2

    .line 66
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->numOfUnits:I

    return v0
.end method

.method public final getToProvID()I
    .registers 2

    .line 92
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->toProvinceID:I

    return v0
.end method

.method public final getUnitsWidth()I
    .registers 2

    .line 100
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->iNumOfUnitsWidth:I

    return v0
.end method

.method public final setNumberOfUnits(I)V
    .registers 6
    .param p1, "iNumOfUnits"  # I

    .line 71
    :try_start_0
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->numOfUnits:I

    .line 73
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->moveUnits_Line:Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line;

    if-eqz v0, :cond_13

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line;->lMovingTime:J

    .line 75
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->moveUnits_Line:Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line;

    const v1, 0x3dcccccd  # 0.1f

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line;->fMovingPercentage:F

    .line 78
    :cond_13
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayoutMoveUnits2:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontArmy:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 79
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayoutMoveUnits2:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->iNumOfUnitsWidth:I
    :try_end_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_34} :catch_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    goto :goto_38

    .line 82
    :catch_35
    move-exception v0

    goto :goto_39

    .line 80
    :catch_37
    move-exception v0

    .line 84
    :goto_38
    nop

    .line 85
    :goto_39
    return-void
.end method
