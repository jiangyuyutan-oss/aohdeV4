.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;
.super Ljava/lang/Object;
.source "GV_AdministrationPolicy.java"


# instance fields
.field public CHANGE_COST_INCOME_PRODUCTION_PERC:F

.field public CHANGE_COST_INCOME_TAXATION_PERC:F

.field public DEFAULT_POLICY_ID:I

.field public POLICY_ACCEPTABLE_TAXATION:[F

.field public POLICY_ADMINISTRATION_COST:[F

.field public POLICY_ICON_SCALE:[F

.field public POLICY_INCOME_PRODUCTION:[F

.field public POLICY_MILITARY_UPKEEP:[F

.field public POLICY_MIN_GOODS:[F

.field public POLICY_MIN_INVESTMENTS:[F

.field public POLICY_NAME:[Ljava/lang/String;

.field public POLICY_RESEARCH_COST:[F


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "DecentralizedAdministration"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "LimitedAdministration"

    aput-object v3, v1, v2

    const-string v2, "StandardAdministration"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    const-string v4, "CentralizedAdministration"

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v4, "TotalStateControl"

    aput-object v4, v1, v2

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_NAME:[Ljava/lang/String;

    .line 7
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->DEFAULT_POLICY_ID:I

    .line 9
    new-array v1, v0, [F

    fill-array-data v1, :array_64

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_ICON_SCALE:[F

    .line 11
    new-array v1, v0, [F

    fill-array-data v1, :array_72

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_ACCEPTABLE_TAXATION:[F

    .line 12
    new-array v1, v0, [F

    fill-array-data v1, :array_80

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_MIN_GOODS:[F

    .line 13
    new-array v1, v0, [F

    fill-array-data v1, :array_8e

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_MIN_INVESTMENTS:[F

    .line 14
    new-array v1, v0, [F

    fill-array-data v1, :array_9c

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_RESEARCH_COST:[F

    .line 15
    new-array v1, v0, [F

    fill-array-data v1, :array_aa

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_ADMINISTRATION_COST:[F

    .line 16
    new-array v1, v0, [F

    fill-array-data v1, :array_b8

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_INCOME_PRODUCTION:[F

    .line 17
    new-array v0, v0, [F

    fill-array-data v0, :array_c6

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_MILITARY_UPKEEP:[F

    .line 19
    const/high16 v0, 0x40400000  # 3.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->CHANGE_COST_INCOME_TAXATION_PERC:F

    .line 20
    const/high16 v0, 0x40900000  # 4.5f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->CHANGE_COST_INCOME_PRODUCTION_PERC:F

    return-void

    :array_64
    .array-data 4
        0x3f19999a  # 0.6f
        0x3f4ccccd  # 0.8f
        0x3f800000  # 1.0f
        0x3f8ccccd  # 1.1f
        0x3f99999a  # 1.2f
    .end array-data

    :array_72
    .array-data 4
        -0x425c28f6  # -0.08f
        -0x430a3d71  # -0.03f
        0x0
        0x3d75c28f  # 0.06f
        0x3dcccccd  # 0.1f
    .end array-data

    :array_80
    .array-data 4
        -0x428a3d71  # -0.06f
        -0x42dc28f6  # -0.04f
        0x0
        0x3ca3d70a  # 0.02f
        0x3d4ccccd  # 0.05f
    .end array-data

    :array_8e
    .array-data 4
        -0x42b33333  # -0.05f
        -0x430a3d71  # -0.03f
        0x0
        0x3d23d70a  # 0.04f
        0x3d4ccccd  # 0.05f
    .end array-data

    :array_9c
    .array-data 4
        -0x4270a3d7  # -0.07f
        -0x43333333  # -0.025f
        0x0
        0x3ccccccd  # 0.025f
        0x3da3d70a  # 0.08f
    .end array-data

    :array_aa
    .array-data 4
        -0x42b33333  # -0.05f
        -0x435c28f6  # -0.02f
        0x0
        0x3ca3d70a  # 0.02f
        0x3d23d70a  # 0.04f
    .end array-data

    :array_b8
    .array-data 4
        -0x425c28f6  # -0.08f
        -0x42f0a3d7  # -0.035f
        0x0
        0x3d0f5c29  # 0.035f
        0x3da3d70a  # 0.08f
    .end array-data

    :array_c6
    .array-data 4
        0x3dcccccd  # 0.1f
        0x3d75c28f  # 0.06f
        0x0
        -0x4270a3d7  # -0.07f
        -0x420a3d71  # -0.12f
    .end array-data
.end method
