.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationsReactions;
.super Ljava/lang/Object;
.source "GV_RelationsReactions.java"


# instance fields
.field public DECLARE_WAR_REACTIONS_CHANGE:I

.field public DECLARE_WAR_RELATIONS_CHANGE_VASSALS_REACTIONS:I

.field public DECLARE_WAR_RELATIONS_CHANGE_VASSALS_REACTIONS_RANDOM:I

.field public INSULT_WORLD_REACTION_MAX:I

.field public INSULT_WORLD_REACTION_RELATION_MODIFIER_DIVISOR:I

.field public WORLD_REACTION_DISTANCE_BASE_IMPACT_DIVISOR:F

.field public WORLD_REACTION_DISTANCE_LIMIT:F

.field public WORLD_REACTION_DISTANCE_MULTIPLIER:F

.field public WORLD_REACTION_MAX_CHANGE:F

.field public WORLD_REACTION_RELATION_SCALING_DIVISOR:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x23

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationsReactions;->DECLARE_WAR_REACTIONS_CHANGE:I

    .line 6
    const/4 v0, 0x5

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationsReactions;->DECLARE_WAR_RELATIONS_CHANGE_VASSALS_REACTIONS:I

    .line 7
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationsReactions;->DECLARE_WAR_RELATIONS_CHANGE_VASSALS_REACTIONS_RANDOM:I

    .line 9
    const/16 v0, 0x1e

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationsReactions;->INSULT_WORLD_REACTION_MAX:I

    .line 10
    const/4 v0, 0x3

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationsReactions;->INSULT_WORLD_REACTION_RELATION_MODIFIER_DIVISOR:I

    .line 12
    const/high16 v0, 0x3ec00000  # 0.375f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationsReactions;->WORLD_REACTION_DISTANCE_LIMIT:F

    .line 13
    const/high16 v0, 0x41a00000  # 20.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationsReactions;->WORLD_REACTION_DISTANCE_BASE_IMPACT_DIVISOR:F

    .line 15
    const/high16 v0, 0x40a00000  # 5.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationsReactions;->WORLD_REACTION_RELATION_SCALING_DIVISOR:F

    .line 17
    const v0, 0x3faccccd  # 1.35f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationsReactions;->WORLD_REACTION_DISTANCE_MULTIPLIER:F

    .line 19
    const/high16 v0, 0x41c80000  # 25.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationsReactions;->WORLD_REACTION_MAX_CHANGE:F

    return-void
.end method
