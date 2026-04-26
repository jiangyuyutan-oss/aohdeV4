.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_War;
.super Ljava/lang/Object;
.source "GV_AI_War.java"


# instance fields
.field public AI_LORD_MAX_WARS_JOINED_WHEN_PLAYER_IS_VASSAL:I

.field public ALWAYS_JOIN_WAR:Z

.field public DENY_JOIN_WAR_IF_AGAINST_FRIENDLY_CIV:Z

.field public DENY_JOIN_WAR_IF_GOLD_BELOW:I

.field public DENY_JOIN_WAR_IF_IS_ALREADY_AT_WAR:Z

.field public DENY_JOIN_WAR_IF_RELATIONS_BELOW:I

.field public ENABLE_NAVAL_INVASION_DELAY_DISTANCE:Z

.field public NAVAL_INVASION_DELAY_HIGHER_RANK_CHANCE:I

.field public NAVAL_INVASION_DELAY_HIGHER_RANK_MIN_TURNS:I

.field public NAVAL_INVASION_DELAY_HIGHER_RANK_RANDOM_TURNS:I

.field public NAVAL_INVASION_DELAY_MIN_TURNS:I

.field public NAVAL_INVASION_DELAY_RANDOM_TURNS:I

.field public NAVAL_INVASION_FROM_OCCUPIED_ONLY_EVERY_X_TURNS:I

.field public NAVAL_INVASION_LIMIT:I

.field public NAVAL_INVASION_RETAKE_OCCUPIED_PROVINCE_CHANCE_100:I

.field public PLUNDER_AT_WAR_CHANCE_100:I

.field public STATUS_QUO_NO_PROGRESS:I

.field public STATUS_QUO_SINCE_LAST_ATTACK_TURNS:I

.field public STATUS_QUO_TURNS_NO_ONE_ATTACKED:I

.field public STATUS_QUO_WAR_IS_TOO_LONG:I

.field public USE_NEW_NAVAL_INVASION:Z


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x22

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_War;->STATUS_QUO_SINCE_LAST_ATTACK_TURNS:I

    .line 6
    const/16 v0, 0x13

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_War;->STATUS_QUO_TURNS_NO_ONE_ATTACKED:I

    .line 7
    const/16 v0, 0x2c

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_War;->STATUS_QUO_NO_PROGRESS:I

    .line 8
    const/16 v0, 0x1df

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_War;->STATUS_QUO_WAR_IS_TOO_LONG:I

    .line 10
    const/4 v0, 0x7

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_War;->PLUNDER_AT_WAR_CHANCE_100:I

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_War;->USE_NEW_NAVAL_INVASION:Z

    .line 14
    const/16 v1, 0xa

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_War;->NAVAL_INVASION_LIMIT:I

    .line 15
    const/4 v1, 0x4

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_War;->NAVAL_INVASION_FROM_OCCUPIED_ONLY_EVERY_X_TURNS:I

    .line 17
    const/16 v2, 0x3e

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_War;->NAVAL_INVASION_DELAY_HIGHER_RANK_CHANCE:I

    .line 18
    const/4 v3, 0x3

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_War;->NAVAL_INVASION_DELAY_HIGHER_RANK_MIN_TURNS:I

    .line 19
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_War;->NAVAL_INVASION_DELAY_HIGHER_RANK_RANDOM_TURNS:I

    .line 20
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_War;->NAVAL_INVASION_RETAKE_OCCUPIED_PROVINCE_CHANCE_100:I

    .line 22
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_War;->NAVAL_INVASION_DELAY_MIN_TURNS:I

    .line 23
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_War;->NAVAL_INVASION_DELAY_RANDOM_TURNS:I

    .line 24
    const/4 v1, 0x0

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_War;->ENABLE_NAVAL_INVASION_DELAY_DISTANCE:Z

    .line 26
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_War;->ALWAYS_JOIN_WAR:Z

    .line 27
    const/16 v2, -0x1f4

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_War;->DENY_JOIN_WAR_IF_GOLD_BELOW:I

    .line 28
    const/16 v2, -0x14

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_War;->DENY_JOIN_WAR_IF_RELATIONS_BELOW:I

    .line 29
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_War;->DENY_JOIN_WAR_IF_AGAINST_FRIENDLY_CIV:Z

    .line 30
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_War;->DENY_JOIN_WAR_IF_IS_ALREADY_AT_WAR:Z

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_War;->AI_LORD_MAX_WARS_JOINED_WHEN_PLAYER_IS_VASSAL:I

    return-void
.end method
