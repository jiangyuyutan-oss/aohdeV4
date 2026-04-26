.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EnforcePeace;
.super Ljava/lang/Object;
.source "GV_EnforcePeace.java"


# instance fields
.field public COST_ENFORCE_PEACE:I

.field public ENABLE_REFUSE_IF_HIGHER_RANK:Z

.field public ENFORCE_PEACE_RELATIONS_CHANGE:F

.field public ENFORCE_PEACE_RELATIONS_DEFENDER:F

.field public ENFORCE_PEACE_SCORE_ARMY:F

.field public ENFORCE_PEACE_SCORE_ARMY_AGGRESSORS_MODIFIER:F

.field public ENFORCE_PEACE_SCORE_ARMY_MAX_MODIFIER:F

.field public ENFORCE_PEACE_SCORE_BASE:F

.field public ENFORCE_PEACE_SCORE_CURRENT_WAR_SCORE:F

.field public ENFORCE_PEACE_SCORE_DISTANCE:F

.field public ENFORCE_PEACE_SCORE_PLAYERS_ARMY_MODIFIER:F

.field public ENFORCE_PEACE_SIGN_TRUCE_WITH_AGGRESSOR:Z

.field public ENFORCE_PEACE_SIGN_TRUCE_WITH_AGGRESSOR_TURNS:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x32

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EnforcePeace;->COST_ENFORCE_PEACE:I

    .line 7
    const/high16 v0, -0x3e100000  # -30.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EnforcePeace;->ENFORCE_PEACE_SCORE_BASE:F

    .line 8
    const/high16 v0, -0x3d380000  # -100.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EnforcePeace;->ENFORCE_PEACE_SCORE_DISTANCE:F

    .line 9
    const/high16 v0, 0x41f00000  # 30.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EnforcePeace;->ENFORCE_PEACE_SCORE_CURRENT_WAR_SCORE:F

    .line 11
    const/high16 v0, 0x41a00000  # 20.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EnforcePeace;->ENFORCE_PEACE_SCORE_ARMY:F

    .line 12
    const/high16 v0, 0x40a00000  # 5.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EnforcePeace;->ENFORCE_PEACE_SCORE_ARMY_MAX_MODIFIER:F

    .line 14
    const v0, 0x3f59999a  # 0.85f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EnforcePeace;->ENFORCE_PEACE_SCORE_PLAYERS_ARMY_MODIFIER:F

    .line 16
    const/high16 v0, 0x3fa00000  # 1.25f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EnforcePeace;->ENFORCE_PEACE_SCORE_ARMY_AGGRESSORS_MODIFIER:F

    .line 18
    const/high16 v0, -0x3df40000  # -35.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EnforcePeace;->ENFORCE_PEACE_RELATIONS_CHANGE:F

    .line 20
    const/high16 v0, 0x41700000  # 15.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EnforcePeace;->ENFORCE_PEACE_RELATIONS_DEFENDER:F

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EnforcePeace;->ENFORCE_PEACE_SIGN_TRUCE_WITH_AGGRESSOR:Z

    .line 23
    const/16 v0, 0x1e

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EnforcePeace;->ENFORCE_PEACE_SIGN_TRUCE_WITH_AGGRESSOR_TURNS:I

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EnforcePeace;->ENABLE_REFUSE_IF_HIGHER_RANK:Z

    return-void
.end method
