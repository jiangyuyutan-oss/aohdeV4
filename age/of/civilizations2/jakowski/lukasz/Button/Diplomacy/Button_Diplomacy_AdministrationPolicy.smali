.class public Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;
.super Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;
.source "Button_Diplomacy_AdministrationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;
    }
.end annotation


# static fields
.field public static ICON_SCALE:F


# instance fields
.field public administration:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;

.field public backAnimation:Z

.field public civID:I

.field public goods:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;

.field public iCostWidth:I

.field public imgScale:F

.field public incomeProduction:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;

.field public investments:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;

.field public militaryUpkeep:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;

.field public policyID:I

.field public research:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;

.field public row:Z

.field public sCost:Ljava/lang/String;

.field public taxation:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const/high16 v0, 0x3f800000  # 1.0f

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->ICON_SCALE:F

    return-void
.end method

.method public constructor <init>(IIIIZ)V
    .registers 19
    .param p1, "nPolicyID"  # I
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "iWidth"  # I
    .param p5, "isClickable"  # Z

    .line 51
    move-object v11, p0

    move v12, p1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->backAnimation:Z

    .line 18
    iput-boolean v0, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->row:Z

    .line 45
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->imgScale:F

    .line 52
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD_SMALL:I

    iput v0, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->fontID:I

    .line 53
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_NAME:[Ljava/lang/String;

    aget-object v1, v1, v12

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v7, p5

    invoke-super/range {v0 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->init(Ljava/lang/String;IIIIIZZZZ)V

    .line 55
    iput v12, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->policyID:I

    .line 56
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_ICON_SCALE:[F

    iget v1, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->policyID:I

    aget v0, v0, v1

    iput v0, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->imgScale:F

    .line 57
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v0

    iput v0, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->civID:I

    .line 59
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_ACCEPTABLE_TAXATION:[F

    iget v3, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->policyID:I

    aget v2, v2, v3

    const-string v3, "+"

    const-string v4, ""

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-lez v2, :cond_63

    move-object v2, v3

    goto :goto_64

    :cond_63
    move-object v2, v4

    :goto_64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_ACCEPTABLE_TAXATION:[F

    iget v6, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->policyID:I

    aget v2, v2, v6

    const/high16 v6, 0x42c80000  # 100.0f

    mul-float v2, v2, v6

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;Ljava/lang/String;)V

    iput-object v0, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->taxation:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;

    .line 60
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_MIN_GOODS:[F

    iget v8, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->policyID:I

    aget v7, v7, v8

    cmpl-float v7, v7, v5

    if-lez v7, :cond_9d

    move-object v7, v3

    goto :goto_9e

    :cond_9d
    move-object v7, v4

    :goto_9e
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_MIN_GOODS:[F

    iget v8, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->policyID:I

    aget v7, v7, v8

    mul-float v7, v7, v6

    float-to-int v7, v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;Ljava/lang/String;)V

    iput-object v0, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->goods:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;

    .line 61
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_MIN_INVESTMENTS:[F

    iget v8, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->policyID:I

    aget v7, v7, v8

    cmpl-float v7, v7, v5

    if-lez v7, :cond_d3

    move-object v7, v3

    goto :goto_d4

    :cond_d3
    move-object v7, v4

    :goto_d4
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_MIN_INVESTMENTS:[F

    iget v8, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->policyID:I

    aget v7, v7, v8

    mul-float v7, v7, v6

    float-to-int v7, v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;Ljava/lang/String;)V

    iput-object v0, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->investments:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;

    .line 62
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_RESEARCH_COST:[F

    iget v8, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->policyID:I

    aget v7, v7, v8

    cmpl-float v7, v7, v5

    if-lez v7, :cond_109

    move-object v7, v3

    goto :goto_10a

    :cond_109
    move-object v7, v4

    :goto_10a
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_RESEARCH_COST:[F

    iget v8, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->policyID:I

    aget v7, v7, v8

    mul-float v7, v7, v6

    float-to-int v7, v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;Ljava/lang/String;)V

    iput-object v0, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->research:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;

    .line 63
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_ADMINISTRATION_COST:[F

    iget v8, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->policyID:I

    aget v7, v7, v8

    cmpl-float v7, v7, v5

    if-lez v7, :cond_13f

    move-object v7, v3

    goto :goto_140

    :cond_13f
    move-object v7, v4

    :goto_140
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_ADMINISTRATION_COST:[F

    iget v8, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->policyID:I

    aget v7, v7, v8

    mul-float v7, v7, v6

    float-to-int v7, v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;Ljava/lang/String;)V

    iput-object v0, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->administration:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;

    .line 64
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_INCOME_PRODUCTION:[F

    iget v8, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->policyID:I

    aget v7, v7, v8

    cmpl-float v7, v7, v5

    if-lez v7, :cond_175

    move-object v7, v3

    goto :goto_176

    :cond_175
    move-object v7, v4

    :goto_176
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_INCOME_PRODUCTION:[F

    iget v8, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->policyID:I

    aget v7, v7, v8

    mul-float v7, v7, v6

    float-to-int v7, v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;Ljava/lang/String;)V

    iput-object v0, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->incomeProduction:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;

    .line 65
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_MILITARY_UPKEEP:[F

    iget v8, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->policyID:I

    aget v7, v7, v8

    cmpl-float v5, v7, v5

    if-lez v5, :cond_1aa

    goto :goto_1ab

    :cond_1aa
    move-object v3, v4

    :goto_1ab
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_MILITARY_UPKEEP:[F

    iget v4, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->policyID:I

    aget v3, v3, v4

    mul-float v3, v3, v6

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;Ljava/lang/String;)V

    iput-object v0, v11, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->militaryUpkeep:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;

    .line 66
    return-void
.end method


# virtual methods
.method public buildCheckbox()Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$Checkbox;
    .registers 2

    .line 71
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->checkbox:Z

    if-eqz v0, :cond_a

    .line 72
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$1;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;)V

    return-object v0

    .line 97
    :cond_a
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$2;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;)V

    return-object v0
.end method

.method public buildElemHover()V
    .registers 4

    .line 281
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->policyID:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getHover_AdministrationPolicy(II)Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->menuElemHover:Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover;

    .line 282
    return-void
.end method

.method public drawButtonBGE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 19
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z

    .line 107
    move-object v0, p0

    move-object v9, p1

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/4 v10, 0x0

    const v11, 0x3ee66666  # 0.45f

    invoke-direct {v1, v10, v10, v10, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 108
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosXE()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/ButtonDiplomacy;->iDiploWidth:I

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v2, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getHeightE()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 109
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosXE()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v2, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getHeightE()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 111
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v12, 0x3eb33333  # 0.35f

    invoke-direct {v1, v2, v3, v4, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 112
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Vertical:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosXE()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/ButtonDiplomacy;->iDiploWidth:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Vertical:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getHeightE()I

    move-result v6

    const/4 v5, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 114
    iget-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->row:Z

    const v13, 0x3f19999a  # 0.6f

    if-eqz v1, :cond_24c

    .line 115
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DIPLOMACY:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DIPLOMACY:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DIPLOMACY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3ecccccd  # 0.4f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 116
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosXE()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getWidthE()I

    move-result v2

    div-int/lit8 v5, v2, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getHeightE()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 117
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosXE()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getWidthE()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getWidthE()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getWidthE()I

    move-result v2

    div-int/lit8 v5, v2, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getHeightE()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 119
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BOX_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BOX_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BOX_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 120
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosXE()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getWidthE()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getHeightE()I

    move-result v2

    div-int/lit8 v6, v2, 0x4

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 121
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosXE()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getHeightE()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getHeightE()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getWidthE()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getHeightE()I

    move-result v2

    div-int/lit8 v6, v2, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 123
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v10, v10, v10, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 124
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosXE()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getHeightE()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getWidthE()I

    move-result v5

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 125
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosXE()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getWidthE()I

    move-result v5

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 127
    if-nez p4, :cond_207

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getIsHovered()Z

    move-result v1

    if-eqz v1, :cond_3f0

    .line 128
    :cond_207
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DIPLOMACY:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DIPLOMACY:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DIPLOMACY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 129
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosXE()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getWidthE()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getHeightE()I

    move-result v2

    add-int/lit8 v6, v2, -0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    goto/16 :goto_3f0

    .line 133
    :cond_24c
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DIPLOMACY:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DIPLOMACY:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DIPLOMACY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 134
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosXE()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getWidthE()I

    move-result v2

    div-int/lit8 v5, v2, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getHeightE()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 135
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosXE()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getWidthE()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getWidthE()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getWidthE()I

    move-result v2

    div-int/lit8 v5, v2, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getHeightE()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 137
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 138
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosXE()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getWidthE()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getHeightE()I

    move-result v2

    div-int/lit8 v6, v2, 0x4

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 139
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosXE()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getHeightE()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getHeightE()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getWidthE()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getHeightE()I

    move-result v2

    div-int/lit8 v6, v2, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 141
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DIPLOMACY:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DIPLOMACY:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DIPLOMACY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3f59999a  # 0.85f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 142
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosXE()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getHeightE()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getWidthE()I

    move-result v5

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 143
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosXE()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getWidthE()I

    move-result v5

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 145
    if-nez p4, :cond_3ad

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getIsHovered()Z

    move-result v1

    if-eqz v1, :cond_3f0

    .line 146
    :cond_3ad
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DIPLOMACY:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DIPLOMACY:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DIPLOMACY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 147
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosXE()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getWidthE()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getHeightE()I

    move-result v2

    add-int/lit8 v6, v2, -0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 151
    :cond_3f0
    :goto_3f0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getCurr()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->civID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->policyID:I

    if-ne v1, v2, :cond_419

    .line 152
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v5, 0x3e000000  # 0.125f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_430

    .line 155
    :cond_419
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_1:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_1:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_1:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3ccccccd  # 0.025f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 158
    :goto_430
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientFull:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosXE()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getWidthE()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getHeightE()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 159
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientXY:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosXE()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getWidthE()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getHeightE()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 161
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 162
    return-void
.end method

.method public drawTextE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 29
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z

    .line 167
    move-object/from16 v0, p0

    move/from16 v1, p4

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gov:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->imgScale:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 168
    .local v2, "govW":I
    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->gov:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->imgScale:F

    mul-float v3, v3, v4

    float-to-int v9, v3

    .line 170
    .local v9, "govH":I
    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->gov:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosXE()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/ButtonDiplomacy;->iDiploWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    div-int/lit8 v5, v2, 0x2

    sub-int/2addr v4, v5

    add-int v5, v4, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosY()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getHeightE()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    div-int/lit8 v6, v9, 0x2

    sub-int/2addr v4, v6

    add-int v6, v4, p3

    move-object/from16 v4, p1

    move v7, v2

    move v8, v9

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 174
    iget v11, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->fontID:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getTextE()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosXE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/ButtonDiplomacy;->iDiploWidth:I

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int v13, v3, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosY()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getHeightE()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getTextHeight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int v14, v3, p3

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getColorE(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v15

    move-object/from16 v10, p1

    invoke-static/range {v10 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 176
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosXE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/ButtonDiplomacy;->iDiploWidth:I

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int v3, v3, p2

    .line 177
    .local v3, "pX":I
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosY()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getHeightE()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v4, v5

    add-int v4, v4, p3

    .line 178
    .local v4, "pYT":I
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosY()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getHeightE()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getTextHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int v5, v5, p3

    .line 180
    .local v5, "pYI":I
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosY()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getHeightE()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getTextHeight()I

    move-result v7

    sub-int/2addr v6, v7

    add-int v6, v6, p3

    .line 181
    .local v6, "pYT2":I
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getPosY()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getHeightE()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getTextHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    add-int v7, v7, p3

    .line 183
    .local v7, "pYI2":I
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Images;->topGold()I

    move-result v8

    .line 184
    .local v8, "img":I
    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getImageScale(I)F

    move-result v11

    mul-float v10, v10, v11

    float-to-int v15, v10

    .line 185
    .local v15, "imgW":I
    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getImageScale(I)F

    move-result v11

    mul-float v10, v10, v11

    float-to-int v14, v10

    .line 187
    .local v14, "imgH":I
    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v10

    div-int/lit8 v11, v14, 0x2

    sub-int v13, v5, v11

    move-object/from16 v11, p1

    move v12, v3

    move/from16 v16, v14

    .end local v14  # "imgH":I
    .local v16, "imgH":I
    move v14, v15

    move/from16 v17, v15

    .end local v15  # "imgW":I
    .local v17, "imgW":I
    move/from16 v15, v16

    invoke-virtual/range {v10 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 188
    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int v15, v17, v10

    add-int/2addr v3, v15

    .line 190
    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_REGULAR_SMALL:I

    iget-object v10, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->taxation:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;

    iget-object v12, v10, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getColorE(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v15

    move-object/from16 v10, p1

    move v13, v3

    move v14, v4

    invoke-static/range {v10 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 191
    iget-object v10, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->taxation:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;->textW:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    .line 193
    sget v8, Lage/of/civilizations2/jakowski/lukasz/Images;->goods:I

    .line 194
    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getImageScale(I)F

    move-result v11

    mul-float v10, v10, v11

    float-to-int v15, v10

    .line 195
    .end local v17  # "imgW":I
    .restart local v15  # "imgW":I
    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getImageScale(I)F

    move-result v11

    mul-float v10, v10, v11

    float-to-int v14, v10

    .line 197
    .end local v16  # "imgH":I
    .restart local v14  # "imgH":I
    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v18

    div-int/lit8 v10, v14, 0x2

    sub-int v21, v5, v10

    move-object/from16 v19, p1

    move/from16 v20, v3

    move/from16 v22, v15

    move/from16 v23, v14

    invoke-virtual/range {v18 .. v23}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 198
    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v10, v15

    add-int/2addr v3, v10

    .line 200
    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_REGULAR_SMALL:I

    iget-object v10, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->goods:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;

    iget-object v12, v10, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getColorE(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v16

    move-object/from16 v10, p1

    move v13, v3

    move/from16 v17, v14

    .end local v14  # "imgH":I
    .local v17, "imgH":I
    move v14, v4

    move/from16 v18, v15

    .end local v15  # "imgW":I
    .local v18, "imgW":I
    move-object/from16 v15, v16

    invoke-static/range {v10 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 201
    iget-object v10, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->goods:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;->textW:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    .line 203
    sget v8, Lage/of/civilizations2/jakowski/lukasz/Images;->development:I

    .line 204
    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getImageScale(I)F

    move-result v11

    mul-float v10, v10, v11

    float-to-int v10, v10

    .line 205
    .end local v18  # "imgW":I
    .local v10, "imgW":I
    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getImageScale(I)F

    move-result v12

    mul-float v11, v11, v12

    float-to-int v15, v11

    .line 207
    .end local v17  # "imgH":I
    .local v15, "imgH":I
    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v11

    div-int/lit8 v12, v15, 0x2

    sub-int v14, v5, v12

    move-object/from16 v12, p1

    move v13, v3

    move/from16 v17, v15

    .end local v15  # "imgH":I
    .restart local v17  # "imgH":I
    move v15, v10

    move/from16 v16, v17

    invoke-virtual/range {v11 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 208
    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v11, v10

    add-int/2addr v3, v11

    .line 210
    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_REGULAR_SMALL:I

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->investments:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getColorE(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v15

    move/from16 v16, v10

    .end local v10  # "imgW":I
    .local v16, "imgW":I
    move-object/from16 v10, p1

    move v13, v3

    move v14, v4

    invoke-static/range {v10 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 211
    iget-object v10, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->investments:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;->textW:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    .line 213
    sget v8, Lage/of/civilizations2/jakowski/lukasz/Images;->research:I

    .line 214
    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getImageScale(I)F

    move-result v11

    mul-float v10, v10, v11

    float-to-int v15, v10

    .line 215
    .end local v16  # "imgW":I
    .local v15, "imgW":I
    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getImageScale(I)F

    move-result v11

    mul-float v10, v10, v11

    float-to-int v14, v10

    .line 217
    .end local v17  # "imgH":I
    .restart local v14  # "imgH":I
    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v18

    div-int/lit8 v10, v14, 0x2

    sub-int v21, v5, v10

    move/from16 v20, v3

    move/from16 v22, v15

    move/from16 v23, v14

    invoke-virtual/range {v18 .. v23}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 218
    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v10, v15

    add-int/2addr v3, v10

    .line 220
    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_REGULAR_SMALL:I

    iget-object v10, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->research:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;

    iget-object v12, v10, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getColorE(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v16

    move-object/from16 v10, p1

    move v13, v3

    move/from16 v17, v14

    .end local v14  # "imgH":I
    .restart local v17  # "imgH":I
    move v14, v4

    move/from16 v18, v15

    .end local v15  # "imgW":I
    .restart local v18  # "imgW":I
    move-object/from16 v15, v16

    invoke-static/range {v10 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 221
    iget-object v10, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->research:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;->textW:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    .line 224
    sget v8, Lage/of/civilizations2/jakowski/lukasz/Images;->administration:I

    .line 225
    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getImageScale(I)F

    move-result v11

    mul-float v10, v10, v11

    float-to-int v10, v10

    .line 226
    .end local v18  # "imgW":I
    .restart local v10  # "imgW":I
    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getImageScale(I)F

    move-result v12

    mul-float v11, v11, v12

    float-to-int v15, v11

    .line 228
    .end local v17  # "imgH":I
    .local v15, "imgH":I
    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v11

    div-int/lit8 v12, v15, 0x2

    sub-int v14, v5, v12

    move-object/from16 v12, p1

    move v13, v3

    move/from16 v17, v15

    .end local v15  # "imgH":I
    .restart local v17  # "imgH":I
    move v15, v10

    move/from16 v16, v17

    invoke-virtual/range {v11 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 229
    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v11, v10

    add-int/2addr v3, v11

    .line 231
    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_REGULAR_SMALL:I

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->administration:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getColorE(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v15

    move/from16 v16, v10

    .end local v10  # "imgW":I
    .restart local v16  # "imgW":I
    move-object/from16 v10, p1

    move v13, v3

    move v14, v4

    invoke-static/range {v10 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 232
    iget-object v10, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->administration:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;->textW:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    .line 235
    sget v8, Lage/of/civilizations2/jakowski/lukasz/Images;->economy:I

    .line 236
    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getImageScale(I)F

    move-result v11

    mul-float v10, v10, v11

    float-to-int v15, v10

    .line 237
    .end local v16  # "imgW":I
    .local v15, "imgW":I
    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getImageScale(I)F

    move-result v11

    mul-float v10, v10, v11

    float-to-int v14, v10

    .line 239
    .end local v17  # "imgH":I
    .restart local v14  # "imgH":I
    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v18

    div-int/lit8 v10, v14, 0x2

    sub-int v21, v5, v10

    move/from16 v20, v3

    move/from16 v22, v15

    move/from16 v23, v14

    invoke-virtual/range {v18 .. v23}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 240
    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v10, v15

    add-int/2addr v3, v10

    .line 242
    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_REGULAR_SMALL:I

    iget-object v10, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->incomeProduction:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;

    iget-object v12, v10, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getColorE(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v16

    move-object/from16 v10, p1

    move v13, v3

    move/from16 v17, v14

    .end local v14  # "imgH":I
    .restart local v17  # "imgH":I
    move v14, v4

    move/from16 v18, v15

    .end local v15  # "imgW":I
    .restart local v18  # "imgW":I
    move-object/from16 v15, v16

    invoke-static/range {v10 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 243
    iget-object v10, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->incomeProduction:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;->textW:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    .line 245
    sget v8, Lage/of/civilizations2/jakowski/lukasz/Images;->diploArmy:I

    .line 246
    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getImageScale(I)F

    move-result v11

    mul-float v10, v10, v11

    float-to-int v10, v10

    .line 247
    .end local v18  # "imgW":I
    .restart local v10  # "imgW":I
    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getImageScale(I)F

    move-result v12

    mul-float v11, v11, v12

    float-to-int v15, v11

    .line 249
    .end local v17  # "imgH":I
    .local v15, "imgH":I
    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v11

    div-int/lit8 v12, v15, 0x2

    sub-int v14, v5, v12

    move-object/from16 v12, p1

    move v13, v3

    move/from16 v17, v15

    .end local v15  # "imgH":I
    .restart local v17  # "imgH":I
    move v15, v10

    move/from16 v16, v17

    invoke-virtual/range {v11 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 250
    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v11, v10

    add-int/2addr v3, v11

    .line 252
    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_REGULAR_SMALL:I

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->militaryUpkeep:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getColorE(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v15

    move/from16 v16, v10

    .end local v10  # "imgW":I
    .restart local v16  # "imgW":I
    move-object/from16 v10, p1

    move v13, v3

    move v14, v4

    invoke-static/range {v10 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 253
    iget-object v10, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->militaryUpkeep:Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy$TextD;->textW:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    .line 254
    return-void
.end method

.method public getColorE(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 7
    .param p1, "isActive"  # Z

    .line 268
    if-eqz p1, :cond_5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_GRAY_NS_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_2b

    .line 269
    :cond_5
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getIsClickable()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->getIsHovered()Z

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

    const v4, 0x3f066666  # 0.525f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    .line 268
    :goto_2b
    return-object v0
.end method

.method public getCurr()I
    .registers 2

    .line 286
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->policyID:I

    return v0
.end method

.method public getImageScale(I)F
    .registers 4
    .param p1, "nImageID"  # I

    .line 257
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

.method public getImageScale(IF)F
    .registers 5
    .param p1, "nImageID"  # I
    .param p2, "nTextScale"  # F

    .line 261
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v0, v0

    mul-float v0, v0, p2

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

    .line 276
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;->row:Z

    .line 277
    return-void
.end method
