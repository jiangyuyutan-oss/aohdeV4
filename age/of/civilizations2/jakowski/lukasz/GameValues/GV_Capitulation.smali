.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Capitulation;
.super Ljava/lang/Object;
.source "GV_Capitulation.java"


# instance fields
.field public ACCEPT_PEACE_OFFER_IF_WAR_SCORE_OVER:F

.field public CAPITULATION_AGGRESSORS_MIN_WAR_SCORE:F

.field public CAPITULATION_DEFENDERS_MIN_WAR_SCORE:F

.field public CAPITULATION_PROVINCES_LEFT_PERC_DEFAULT:F

.field public PLAYER_CAN_CAPITULATE:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/high16 v0, 0x3f400000  # 0.75f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Capitulation;->ACCEPT_PEACE_OFFER_IF_WAR_SCORE_OVER:F

    .line 7
    const/high16 v0, -0x3dcc0000  # -45.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Capitulation;->CAPITULATION_AGGRESSORS_MIN_WAR_SCORE:F

    .line 9
    const/high16 v0, 0x42340000  # 45.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Capitulation;->CAPITULATION_DEFENDERS_MIN_WAR_SCORE:F

    .line 10
    const v0, 0x3e851eb8  # 0.26f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Capitulation;->CAPITULATION_PROVINCES_LEFT_PERC_DEFAULT:F

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Capitulation;->PLAYER_CAN_CAPITULATE:Z

    return-void
.end method
