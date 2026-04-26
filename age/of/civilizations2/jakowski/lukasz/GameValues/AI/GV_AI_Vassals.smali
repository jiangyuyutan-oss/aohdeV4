.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Vassals;
.super Ljava/lang/Object;
.source "GV_AI_Vassals.java"


# instance fields
.field public BECOME_VASSAL_CHANCE_1000:I

.field public BECOME_VASSAL_LORD_PROVINCES_MODIFIER:F

.field public BECOME_VASSAL_MAX_PROVINCES:I

.field public BECOME_VASSAL_MAX_TURN_ID:I

.field public BECOME_VASSAL_MIN_RELATION:I

.field public BECOME_VASSAL_MODULO_TURN:I

.field public BECOME_VASSAL_TURN_CHECK_IF:I

.field public BECOME_VASSAL_VASSALS_LIMIT:I

.field public NEXT_SURROUNDED_VASSALS_CHECK_TURN_ID:I

.field public NEXT_SURROUNDED_VASSALS_CHECK_TURN_ID_RANDOM:I

.field public PERCENTAGE_OF_INCOME_FOR_LORD_MAX_PERC_MAX:F

.field public UPDATE_VASSALS_TRIBUTE:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x3a

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Vassals;->UPDATE_VASSALS_TRIBUTE:I

    .line 7
    const/16 v0, 0x36

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Vassals;->NEXT_SURROUNDED_VASSALS_CHECK_TURN_ID:I

    .line 8
    const/16 v0, 0x30

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Vassals;->NEXT_SURROUNDED_VASSALS_CHECK_TURN_ID_RANDOM:I

    .line 10
    const v0, 0x3eb33333  # 0.35f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Vassals;->PERCENTAGE_OF_INCOME_FOR_LORD_MAX_PERC_MAX:F

    .line 12
    const/16 v0, 0x2a

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Vassals;->BECOME_VASSAL_MODULO_TURN:I

    .line 13
    const/16 v0, 0x11

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Vassals;->BECOME_VASSAL_TURN_CHECK_IF:I

    .line 14
    const/16 v0, 0x1f4

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Vassals;->BECOME_VASSAL_MAX_TURN_ID:I

    .line 15
    const/4 v0, 0x3

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Vassals;->BECOME_VASSAL_VASSALS_LIMIT:I

    .line 16
    const/16 v0, 0xa

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Vassals;->BECOME_VASSAL_MAX_PROVINCES:I

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Vassals;->BECOME_VASSAL_MIN_RELATION:I

    .line 18
    const/high16 v0, 0x3f000000  # 0.5f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Vassals;->BECOME_VASSAL_LORD_PROVINCES_MODIFIER:F

    .line 19
    const/16 v0, 0x25

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Vassals;->BECOME_VASSAL_CHANCE_1000:I

    return-void
.end method
