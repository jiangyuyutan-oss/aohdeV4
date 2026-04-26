.class public Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;
.super Ljava/lang/Object;
.source "RecruitArmy.java"


# instance fields
.field private iArmy:I

.field private iArmyWidth:I

.field private iProvinceID:I


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "iProvinceID"  # I
    .param p2, "iArmy"  # I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->iArmyWidth:I

    .line 17
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->iProvinceID:I

    .line 18
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->setArmy(I)V

    .line 19
    return-void
.end method


# virtual methods
.method public final getArmy()I
    .registers 2

    .line 24
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->iArmy:I

    return v0
.end method

.method public final getArmyWidth()I
    .registers 2

    .line 47
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->iArmyWidth:I

    return v0
.end method

.method public final getProvinceID()I
    .registers 2

    .line 39
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->iProvinceID:I

    return v0
.end method

.method public final setArmy(I)V
    .registers 6
    .param p1, "iArmy"  # I

    .line 28
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->iArmy:I

    .line 31
    :try_start_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayoutArmy:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

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

    .line 32
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayoutArmy:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->iArmyWidth:I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_23} :catch_24

    .line 35
    goto :goto_25

    .line 33
    :catch_24
    move-exception v0

    .line 36
    :goto_25
    return-void
.end method

.method public final setProvinceID(I)V
    .registers 2
    .param p1, "iProvinceID"  # I

    .line 43
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->iProvinceID:I

    .line 44
    return-void
.end method
