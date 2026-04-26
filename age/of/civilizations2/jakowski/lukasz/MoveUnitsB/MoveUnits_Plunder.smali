.class public Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;
.super Ljava/lang/Object;
.source "MoveUnits_Plunder.java"


# instance fields
.field private iFromProvinceID:I

.field private iNumOfUnits:I

.field private iNumOfUnitsWidth:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "iFromProvinceID"  # I
    .param p2, "iNumOfUnits"  # I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;->iFromProvinceID:I

    .line 20
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;->setNumOfUnits(I)V

    .line 21
    return-void
.end method


# virtual methods
.method public final getFromProvinceID()I
    .registers 2

    .line 26
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;->iFromProvinceID:I

    return v0
.end method

.method public final getNumOfUnits()I
    .registers 2

    .line 30
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;->iNumOfUnits:I

    return v0
.end method

.method public final getUnitsWidth()I
    .registers 2

    .line 47
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;->iNumOfUnitsWidth:I

    return v0
.end method

.method public final setNumOfUnits(I)V
    .registers 6
    .param p1, "iNumOfUnits"  # I

    .line 35
    :try_start_0
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;->iNumOfUnits:I

    .line 37
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

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

    .line 38
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;->iNumOfUnitsWidth:I
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_23} :catch_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_27

    .line 41
    :catch_24
    move-exception v0

    goto :goto_28

    .line 39
    :catch_26
    move-exception v0

    .line 43
    :goto_27
    nop

    .line 44
    :goto_28
    return-void
.end method
