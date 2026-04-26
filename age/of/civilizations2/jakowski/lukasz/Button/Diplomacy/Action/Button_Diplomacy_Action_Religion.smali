.class public Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;
.super Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;
.source "Button_Diplomacy_Action_Religion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;
    }
.end annotation


# instance fields
.field public goods:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;

.field public investments:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;

.field public militaryUpkeep:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;

.field public religionID:I

.field public research:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;

.field private row:Z

.field public sparksAnimation:Lage/of/civilizations2/jakowski/lukasz/TextB/Sparks/SparksAnimation;

.field public taxation:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;


# direct methods
.method public constructor <init>(ILjava/lang/String;IIIIIZ)V
    .registers 21
    .param p1, "nReligionID"  # I
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iTextPositionX"  # I
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "iWidth"  # I
    .param p7, "iHeight"  # I
    .param p8, "isClickable"  # Z

    .line 21
    move-object v11, p0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->religionID:I

    .line 17
    iput-boolean v0, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->row:Z

    .line 22
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD_SMALL:I

    iput v0, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->fontID:I

    .line 23
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-super/range {v0 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->init(Ljava/lang/String;IIIIIZZZZ)V

    .line 25
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Sparks/SparksAnimation;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Sparks/SparksAnimation;-><init>()V

    iput-object v0, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->sparksAnimation:Lage/of/civilizations2/jakowski/lukasz/TextB/Sparks/SparksAnimation;

    .line 27
    move v0, p1

    iput v0, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->religionID:I

    .line 28
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIZZ)V
    .registers 23
    .param p1, "nReligionID"  # I
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iTextPositionX"  # I
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "iWidth"  # I
    .param p7, "iHeight"  # I
    .param p8, "isClickable"  # Z
    .param p9, "checkBox"  # Z

    .line 30
    move-object v11, p0

    move v12, p1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->religionID:I

    .line 17
    iput-boolean v0, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->row:Z

    .line 31
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD_SMALL:I

    iput v0, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->fontID:I

    .line 32
    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v9, p9

    invoke-super/range {v0 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->init(Ljava/lang/String;IIIIIZZZZ)V

    .line 34
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Sparks/SparksAnimation;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Sparks/SparksAnimation;-><init>()V

    iput-object v0, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->sparksAnimation:Lage/of/civilizations2/jakowski/lukasz/TextB/Sparks/SparksAnimation;

    .line 36
    iput v12, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->religionID:I

    .line 38
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->religionManager:Lage/of/civilizations2/jakowski/lukasz/ReligionManager;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->getReligion(I)Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;

    move-result-object v0

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;->ACCEPTABLE_TAXATION:F

    const-string v1, "%"

    const/high16 v2, 0x42c80000  # 100.0f

    const-string v3, "+"

    const-string v4, ""

    const/4 v5, 0x0

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_77

    .line 39
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->religionManager:Lage/of/civilizations2/jakowski/lukasz/ReligionManager;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->getReligion(I)Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;

    move-result-object v7

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;->ACCEPTABLE_TAXATION:F

    cmpl-float v7, v7, v5

    if-lez v7, :cond_56

    move-object v7, v3

    goto :goto_57

    :cond_56
    move-object v7, v4

    :goto_57
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->religionManager:Lage/of/civilizations2/jakowski/lukasz/ReligionManager;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->getReligion(I)Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;

    move-result-object v7

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;->ACCEPTABLE_TAXATION:F

    mul-float v7, v7, v2

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, p0, v6}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;Ljava/lang/String;)V

    iput-object v0, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->taxation:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;

    .line 42
    :cond_77
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->religionManager:Lage/of/civilizations2/jakowski/lukasz/ReligionManager;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->getReligion(I)Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;

    move-result-object v0

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;->MIN_GOODS:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_b9

    .line 43
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->religionManager:Lage/of/civilizations2/jakowski/lukasz/ReligionManager;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->getReligion(I)Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;

    move-result-object v7

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;->MIN_GOODS:F

    cmpl-float v7, v7, v5

    if-lez v7, :cond_98

    move-object v7, v3

    goto :goto_99

    :cond_98
    move-object v7, v4

    :goto_99
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->religionManager:Lage/of/civilizations2/jakowski/lukasz/ReligionManager;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->getReligion(I)Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;

    move-result-object v7

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;->MIN_GOODS:F

    mul-float v7, v7, v2

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, p0, v6}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;Ljava/lang/String;)V

    iput-object v0, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->goods:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;

    .line 46
    :cond_b9
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->religionManager:Lage/of/civilizations2/jakowski/lukasz/ReligionManager;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->getReligion(I)Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;

    move-result-object v0

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;->MIN_INVESTMENTS:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_fb

    .line 47
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->religionManager:Lage/of/civilizations2/jakowski/lukasz/ReligionManager;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->getReligion(I)Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;

    move-result-object v7

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;->MIN_INVESTMENTS:F

    cmpl-float v7, v7, v5

    if-lez v7, :cond_da

    move-object v7, v3

    goto :goto_db

    :cond_da
    move-object v7, v4

    :goto_db
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->religionManager:Lage/of/civilizations2/jakowski/lukasz/ReligionManager;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->getReligion(I)Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;

    move-result-object v7

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;->MIN_INVESTMENTS:F

    mul-float v7, v7, v2

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, p0, v6}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;Ljava/lang/String;)V

    iput-object v0, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->investments:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;

    .line 50
    :cond_fb
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->religionManager:Lage/of/civilizations2/jakowski/lukasz/ReligionManager;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->getReligion(I)Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;

    move-result-object v0

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;->RESEARCH_COST:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_13d

    .line 51
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->religionManager:Lage/of/civilizations2/jakowski/lukasz/ReligionManager;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->getReligion(I)Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;

    move-result-object v7

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;->RESEARCH_COST:F

    cmpl-float v7, v7, v5

    if-lez v7, :cond_11c

    move-object v7, v3

    goto :goto_11d

    :cond_11c
    move-object v7, v4

    :goto_11d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->religionManager:Lage/of/civilizations2/jakowski/lukasz/ReligionManager;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->getReligion(I)Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;

    move-result-object v7

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;->RESEARCH_COST:F

    mul-float v7, v7, v2

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, p0, v6}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;Ljava/lang/String;)V

    iput-object v0, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->research:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;

    .line 54
    :cond_13d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->religionManager:Lage/of/civilizations2/jakowski/lukasz/ReligionManager;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->getReligion(I)Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;

    move-result-object v0

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;->MILITARY_UPKEEP:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_17e

    .line 55
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->religionManager:Lage/of/civilizations2/jakowski/lukasz/ReligionManager;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->getReligion(I)Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;

    move-result-object v7

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;->MILITARY_UPKEEP:F

    cmpl-float v5, v7, v5

    if-lez v5, :cond_15d

    goto :goto_15e

    :cond_15d
    move-object v3, v4

    :goto_15e
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->religionManager:Lage/of/civilizations2/jakowski/lukasz/ReligionManager;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->getReligion(I)Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;->MILITARY_UPKEEP:F

    mul-float v4, v4, v2

    float-to-int v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;Ljava/lang/String;)V

    iput-object v0, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->militaryUpkeep:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;

    .line 57
    :cond_17e
    return-void
.end method


# virtual methods
.method public drawButtonBGE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 15
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z

    .line 81
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->row:Z

    if-eqz v0, :cond_243

    .line 82
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3dcccccd  # 0.1f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 83
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosXE()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getWidthE()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getHeightE()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 85
    if-nez p4, :cond_4c

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 86
    :cond_4c
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DIPLOMACY:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DIPLOMACY:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DIPLOMACY:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f266666  # 0.65f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 87
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosXE()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosY()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getWidthE()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getHeightE()I

    move-result v0

    add-int/lit8 v6, v0, -0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 90
    :cond_92
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BOX_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BOX_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BOX_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3e8ccccd  # 0.275f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 91
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosXE()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getWidthE()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getHeightE()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 92
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosXE()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getWidthE()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getWidthE()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getWidthE()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getHeightE()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 94
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BOX_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BOX_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BOX_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3eb33333  # 0.35f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 95
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosXE()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getWidthE()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getHeightE()I

    move-result v0

    div-int/lit8 v6, v0, 0x4

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 96
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosXE()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getHeightE()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getHeightE()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getWidthE()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getHeightE()I

    move-result v0

    div-int/lit8 v6, v0, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 98
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f0ccccd  # 0.55f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 99
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosXE()I

    move-result v0

    add-int v5, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getHeightE()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int v6, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getWidthE()I

    move-result v7

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 100
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosXE()I

    move-result v0

    add-int v5, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosY()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int v6, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getWidthE()I

    move-result v7

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 103
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3ecccccd  # 0.4f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 104
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosXE()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getWidthE()I

    move-result v5

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 105
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosXE()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getHeightE()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getWidthE()I

    move-result v5

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto/16 :goto_3ed

    .line 108
    :cond_243
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DIPLOMACY:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DIPLOMACY:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DIPLOMACY:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f19999a  # 0.6f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 109
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosXE()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getWidthE()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getHeightE()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 110
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosXE()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getWidthE()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getWidthE()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getWidthE()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getHeightE()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 112
    const v0, 0x3ee66666  # 0.45f

    if-nez p4, :cond_2c9

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getIsHovered()Z

    move-result v1

    if-eqz v1, :cond_30c

    .line 113
    :cond_2c9
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DIPLOMACY:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DIPLOMACY:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DIPLOMACY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 114
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosXE()I

    move-result v1

    add-int v4, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosY()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v5, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getWidthE()I

    move-result v6

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getHeightE()I

    move-result v1

    add-int/lit8 v7, v1, -0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 117
    :cond_30c
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 118
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosXE()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getWidthE()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getHeightE()I

    move-result v0

    div-int/lit8 v6, v0, 0x4

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 119
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosXE()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getHeightE()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getHeightE()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getWidthE()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getHeightE()I

    move-result v0

    div-int/lit8 v6, v0, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 121
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DIPLOMACY:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DIPLOMACY:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DIPLOMACY:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f59999a  # 0.85f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 122
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosXE()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getWidthE()I

    move-result v5

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 123
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosXE()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getHeightE()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getWidthE()I

    move-result v5

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 126
    :goto_3ed
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_412

    .line 127
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Sparks/SparksAnimation;->sparksColors2:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 128
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->sparksAnimation:Lage/of/civilizations2/jakowski/lukasz/TextB/Sparks/SparksAnimation;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosXE()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getWidthE()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getHeightE()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/TextB/Sparks/SparksAnimation;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 131
    :cond_412
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 132
    return-void
.end method

.method public drawTextE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 24
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z

    .line 135
    move-object/from16 v0, p0

    move/from16 v1, p4

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->religionManager:Lage/of/civilizations2/jakowski/lukasz/ReligionManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->religionImages:Ljava/util/List;

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->religionID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 137
    .local v2, "scale":F
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->religionManager:Lage/of/civilizations2/jakowski/lukasz/ReligionManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->religionImages:Ljava/util/List;

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->religionID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosXE()I

    move-result v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/ButtonDiplomacy;->iDiploWidth:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->religionManager:Lage/of/civilizations2/jakowski/lukasz/ReligionManager;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->religionImages:Ljava/util/List;

    iget v7, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->religionID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v2

    float-to-int v6, v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    add-int v6, v3, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosY()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getHeightE()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->religionManager:Lage/of/civilizations2/jakowski/lukasz/ReligionManager;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->religionImages:Ljava/util/List;

    iget v7, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->religionID:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v2

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    add-int v7, v3, p3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->religionManager:Lage/of/civilizations2/jakowski/lukasz/ReligionManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->religionImages:Ljava/util/List;

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->religionID:I

    .line 138
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v8, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->religionManager:Lage/of/civilizations2/jakowski/lukasz/ReligionManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->religionImages:Ljava/util/List;

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->religionID:I

    .line 139
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v9, v3

    .line 137
    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 141
    iget v11, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->fontID:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getTextE()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosXE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/ButtonDiplomacy;->iDiploWidth:I

    add-int/2addr v3, v4

    add-int v13, v3, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosY()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getHeightE()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getTextHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int v14, v3, p3

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getColorE(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v15

    move-object/from16 v10, p1

    invoke-static/range {v10 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 145
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosXE()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getWidthE()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int v3, v3, p2

    .line 146
    .local v3, "pX":I
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosY()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getHeightE()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int v4, v4, p3

    .line 147
    .local v4, "pYI":I
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getPosY()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getHeightE()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT_SMALL:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    add-int v5, v5, p3

    .line 151
    .local v5, "pYT":I
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Images;->topGold()I

    move-result v6

    .line 152
    .local v6, "img":I
    const/4 v7, 0x0

    .line 153
    .local v7, "imgW":I
    const/4 v8, 0x0

    .line 155
    .local v8, "imgH":I
    iget-object v9, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->taxation:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;

    if-eqz v9, :cond_15d

    .line 156
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Images;->topGold()I

    move-result v12

    .line 157
    .end local v6  # "img":I
    .local v12, "img":I
    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getImageScale(I)F

    move-result v9

    mul-float v6, v6, v9

    float-to-int v15, v6

    .line 158
    .end local v7  # "imgW":I
    .local v15, "imgW":I
    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getImageScale(I)F

    move-result v7

    mul-float v6, v6, v7

    float-to-int v14, v6

    .line 160
    .end local v8  # "imgH":I
    .local v14, "imgH":I
    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->taxation:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;->textW:I

    sub-int/2addr v3, v6

    .line 161
    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD_SMALL:I

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->taxation:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;

    iget-object v8, v6, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getColorE(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v11

    move-object/from16 v6, p1

    move v9, v3

    move v10, v5

    invoke-static/range {v6 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 162
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    neg-int v6, v6

    sub-int/2addr v6, v15

    add-int/2addr v3, v6

    .line 164
    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v13

    div-int/lit8 v6, v14, 0x2

    sub-int v16, v4, v6

    move v6, v14

    .end local v14  # "imgH":I
    .local v6, "imgH":I
    move-object/from16 v14, p1

    move v7, v15

    .end local v15  # "imgW":I
    .restart local v7  # "imgW":I
    move v15, v3

    move/from16 v17, v7

    move/from16 v18, v6

    invoke-virtual/range {v13 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 165
    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    neg-int v8, v8

    add-int/2addr v3, v8

    move v8, v6

    move v6, v12

    .line 168
    .end local v12  # "img":I
    .local v6, "img":I
    .restart local v8  # "imgH":I
    :cond_15d
    iget-object v9, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->goods:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;

    if-eqz v9, :cond_1b8

    .line 169
    sget v12, Lage/of/civilizations2/jakowski/lukasz/Images;->goods:I

    .line 170
    .end local v6  # "img":I
    .restart local v12  # "img":I
    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getImageScale(I)F

    move-result v9

    mul-float v6, v6, v9

    float-to-int v15, v6

    .line 171
    .end local v7  # "imgW":I
    .restart local v15  # "imgW":I
    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getImageScale(I)F

    move-result v7

    mul-float v6, v6, v7

    float-to-int v14, v6

    .line 173
    .end local v8  # "imgH":I
    .restart local v14  # "imgH":I
    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->goods:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;->textW:I

    sub-int/2addr v3, v6

    .line 174
    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD_SMALL:I

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->goods:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;

    iget-object v8, v6, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getColorE(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v11

    move-object/from16 v6, p1

    move v9, v3

    move v10, v5

    invoke-static/range {v6 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 175
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    neg-int v6, v6

    sub-int/2addr v6, v15

    add-int/2addr v3, v6

    .line 177
    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v13

    div-int/lit8 v6, v14, 0x2

    sub-int v16, v4, v6

    move v6, v14

    .end local v14  # "imgH":I
    .local v6, "imgH":I
    move-object/from16 v14, p1

    move v7, v15

    .end local v15  # "imgW":I
    .restart local v7  # "imgW":I
    move v15, v3

    move/from16 v17, v7

    move/from16 v18, v6

    invoke-virtual/range {v13 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 178
    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    neg-int v8, v8

    add-int/2addr v3, v8

    move v8, v6

    move v6, v12

    .line 181
    .end local v12  # "img":I
    .local v6, "img":I
    .restart local v8  # "imgH":I
    :cond_1b8
    iget-object v9, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->investments:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;

    if-eqz v9, :cond_213

    .line 182
    sget v12, Lage/of/civilizations2/jakowski/lukasz/Images;->development:I

    .line 183
    .end local v6  # "img":I
    .restart local v12  # "img":I
    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getImageScale(I)F

    move-result v9

    mul-float v6, v6, v9

    float-to-int v15, v6

    .line 184
    .end local v7  # "imgW":I
    .restart local v15  # "imgW":I
    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getImageScale(I)F

    move-result v7

    mul-float v6, v6, v7

    float-to-int v14, v6

    .line 186
    .end local v8  # "imgH":I
    .restart local v14  # "imgH":I
    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->investments:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;->textW:I

    sub-int/2addr v3, v6

    .line 187
    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD_SMALL:I

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->investments:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;

    iget-object v8, v6, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getColorE(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v11

    move-object/from16 v6, p1

    move v9, v3

    move v10, v5

    invoke-static/range {v6 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 188
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    neg-int v6, v6

    sub-int/2addr v6, v15

    add-int/2addr v3, v6

    .line 190
    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v13

    div-int/lit8 v6, v14, 0x2

    sub-int v16, v4, v6

    move v6, v14

    .end local v14  # "imgH":I
    .local v6, "imgH":I
    move-object/from16 v14, p1

    move v7, v15

    .end local v15  # "imgW":I
    .restart local v7  # "imgW":I
    move v15, v3

    move/from16 v17, v7

    move/from16 v18, v6

    invoke-virtual/range {v13 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 191
    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    neg-int v8, v8

    add-int/2addr v3, v8

    move v8, v6

    move v6, v12

    .line 194
    .end local v12  # "img":I
    .local v6, "img":I
    .restart local v8  # "imgH":I
    :cond_213
    iget-object v9, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->research:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;

    if-eqz v9, :cond_26e

    .line 195
    sget v12, Lage/of/civilizations2/jakowski/lukasz/Images;->research:I

    .line 196
    .end local v6  # "img":I
    .restart local v12  # "img":I
    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getImageScale(I)F

    move-result v9

    mul-float v6, v6, v9

    float-to-int v15, v6

    .line 197
    .end local v7  # "imgW":I
    .restart local v15  # "imgW":I
    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getImageScale(I)F

    move-result v7

    mul-float v6, v6, v7

    float-to-int v14, v6

    .line 199
    .end local v8  # "imgH":I
    .restart local v14  # "imgH":I
    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->research:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;->textW:I

    sub-int/2addr v3, v6

    .line 200
    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD_SMALL:I

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->research:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;

    iget-object v8, v6, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getColorE(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v11

    move-object/from16 v6, p1

    move v9, v3

    move v10, v5

    invoke-static/range {v6 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 201
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    neg-int v6, v6

    sub-int/2addr v6, v15

    add-int/2addr v3, v6

    .line 203
    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v13

    div-int/lit8 v6, v14, 0x2

    sub-int v16, v4, v6

    move v6, v14

    .end local v14  # "imgH":I
    .local v6, "imgH":I
    move-object/from16 v14, p1

    move v7, v15

    .end local v15  # "imgW":I
    .restart local v7  # "imgW":I
    move v15, v3

    move/from16 v17, v7

    move/from16 v18, v6

    invoke-virtual/range {v13 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 204
    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    neg-int v8, v8

    add-int/2addr v3, v8

    move v8, v6

    move v6, v12

    .line 207
    .end local v12  # "img":I
    .local v6, "img":I
    .restart local v8  # "imgH":I
    :cond_26e
    iget-object v9, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->militaryUpkeep:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;

    if-eqz v9, :cond_2c9

    .line 208
    sget v12, Lage/of/civilizations2/jakowski/lukasz/Images;->diploArmy:I

    .line 209
    .end local v6  # "img":I
    .restart local v12  # "img":I
    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getImageScale(I)F

    move-result v9

    mul-float v6, v6, v9

    float-to-int v15, v6

    .line 210
    .end local v7  # "imgW":I
    .restart local v15  # "imgW":I
    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getImageScale(I)F

    move-result v7

    mul-float v6, v6, v7

    float-to-int v14, v6

    .line 212
    .end local v8  # "imgH":I
    .restart local v14  # "imgH":I
    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->militaryUpkeep:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;->textW:I

    sub-int/2addr v3, v6

    .line 213
    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD_SMALL:I

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->militaryUpkeep:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;

    iget-object v8, v6, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion$TextD;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getColorE(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v11

    move-object/from16 v6, p1

    move v9, v3

    move v10, v5

    invoke-static/range {v6 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 214
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    neg-int v6, v6

    sub-int/2addr v6, v15

    add-int/2addr v3, v6

    .line 216
    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v13

    div-int/lit8 v6, v14, 0x2

    sub-int v16, v4, v6

    move v6, v14

    .end local v14  # "imgH":I
    .local v6, "imgH":I
    move-object/from16 v14, p1

    move v7, v15

    .end local v15  # "imgW":I
    .restart local v7  # "imgW":I
    move v15, v3

    move/from16 v17, v7

    move/from16 v18, v6

    invoke-virtual/range {v13 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 217
    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    neg-int v8, v8

    add-int/2addr v3, v8

    move v8, v6

    move v6, v12

    .line 219
    .end local v12  # "img":I
    .local v6, "img":I
    .restart local v8  # "imgH":I
    :cond_2c9
    return-void
.end method

.method public getColorE(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 7
    .param p1, "isActive"  # Z

    .line 227
    if-eqz p1, :cond_5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_GRAY_NS_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_2b

    .line 228
    :cond_5
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getIsClickable()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_GRAY_NS_HOVER:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_2b

    :cond_14
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_GRAY_NS:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_2b

    :cond_17
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f19999a  # 0.6f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    .line 227
    :goto_2b
    return-object v0
.end method

.method public getCurr()I
    .registers 2

    .line 238
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->religionID:I

    return v0
.end method

.method public getImageScale(I)F
    .registers 4
    .param p1, "nImageID"  # I

    .line 222
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v0, v0

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public setCurr(I)V
    .registers 3
    .param p1, "nCurrent"  # I

    .line 233
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_Diplomacy_Action_Religion;->row:Z

    .line 234
    return-void
.end method
