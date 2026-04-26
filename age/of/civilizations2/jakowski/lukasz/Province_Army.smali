.class public Lage/of/civilizations2/jakowski/lukasz/Province_Army;
.super Ljava/lang/Object;
.source "Province_Army.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private iArmy:I

.field private iArmyWidth:I

.field private iCivID:I

.field private sArmy:Ljava/lang/String;


# direct methods
.method public constructor <init>(III)V
    .registers 5
    .param p1, "nCivID"  # I
    .param p2, "nArmy"  # I
    .param p3, "nProvinceID"  # I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "0"

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->sArmy:Ljava/lang/String;

    .line 26
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->iCivID:I

    .line 27
    invoke-virtual {p0, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->setArmy(II)V

    .line 28
    return-void
.end method


# virtual methods
.method public final getArmy()I
    .registers 2

    .line 85
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->iArmy:I

    return v0
.end method

.method public final getArmyS()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->sArmy:Ljava/lang/String;

    return-object v0
.end method

.method public getArmyWidth()I
    .registers 2

    .line 99
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->iArmyWidth:I

    return v0
.end method

.method public final getCivID()I
    .registers 2

    .line 77
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->iCivID:I

    return v0
.end method

.method public final setArmy(II)V
    .registers 5
    .param p1, "nArmy"  # I
    .param p2, "nProvinceID"  # I

    .line 93
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->iArmy:I

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->iArmy:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumber_SHORT_ARMY(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->sArmy:Ljava/lang/String;

    .line 95
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->updateArmyWidth_Just(I)V

    .line 96
    return-void
.end method

.method public final setCivID(I)V
    .registers 2
    .param p1, "nCivID"  # I

    .line 81
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->iCivID:I

    .line 82
    return-void
.end method

.method public final updateArmyWidth(F)V
    .registers 6
    .param p1, "nValue"  # F

    .line 66
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontArmy:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 67
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->iArmyWidth:I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    .line 71
    goto :goto_2c

    .line 68
    :catch_22
    move-exception v0

    .line 69
    .local v0, "ex":Ljava/lang/Exception;
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->iArmyWidth:I

    .line 70
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 72
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_2c
    return-void
.end method

.method public final updateArmyWidth(I)V
    .registers 6
    .param p1, "nValue"  # I

    .line 46
    :try_start_0
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

    .line 47
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->iArmyWidth:I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    .line 51
    goto :goto_2c

    .line 48
    :catch_22
    move-exception v0

    .line 49
    .local v0, "ex":Ljava/lang/Exception;
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->iArmyWidth:I

    .line 50
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 52
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_2c
    return-void
.end method

.method public final updateArmyWidth(Ljava/lang/String;)V
    .registers 6
    .param p1, "nValue"  # Ljava/lang/String;

    .line 56
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontArmy:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 57
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->iArmyWidth:I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    .line 61
    goto :goto_2c

    .line 58
    :catch_22
    move-exception v0

    .line 59
    .local v0, "ex":Ljava/lang/Exception;
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->iArmyWidth:I

    .line 60
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 62
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_2c
    return-void
.end method

.method public final updateArmyWidth_Just(I)V
    .registers 5
    .param p1, "nProvinceID"  # I

    .line 34
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontArmy:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->sArmy:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 36
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->iArmyWidth:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 40
    goto :goto_1a

    .line 37
    :catch_11
    move-exception v0

    .line 38
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->addLoadArmiesWidth_ErrorIDs(I)V

    .line 39
    const/4 v1, 0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->iArmyWidth:I

    .line 41
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_1a
    return-void
.end method
