.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationDecrease;
.super Ljava/lang/Object;
.source "GV_RelationDecrease.java"


# instance fields
.field public COST_OFFER_DECREASE_RELATIONS_DIPLOMACY_POINTS:I

.field public INSULT_DECREASE_RELATIONS:I

.field public INSULT_DECREASE_RELATIONS_BASED_ON_CURRENT_RELATION_RATIO:F

.field public INSULT_DECREASE_RELATIONS_BASE_PENALTY_RATIO:F

.field public INSULT_DECREASE_RELATIONS_RANDOM_VALUE:I

.field public SUSPEND_DIPLOMATIC_RELATIONS_MAX:I

.field public SUSPEND_DIPLOMATIC_RELATIONS_MIN:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x4

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationDecrease;->COST_OFFER_DECREASE_RELATIONS_DIPLOMACY_POINTS:I

    .line 7
    const/16 v0, 0x64

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationDecrease;->SUSPEND_DIPLOMATIC_RELATIONS_MAX:I

    .line 8
    const/16 v0, 0xf

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationDecrease;->SUSPEND_DIPLOMATIC_RELATIONS_MIN:I

    .line 10
    const/16 v0, 0x1e

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationDecrease;->INSULT_DECREASE_RELATIONS:I

    .line 11
    const/16 v0, 0x1b

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationDecrease;->INSULT_DECREASE_RELATIONS_RANDOM_VALUE:I

    .line 13
    const v0, 0x3ecccccd  # 0.4f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationDecrease;->INSULT_DECREASE_RELATIONS_BASE_PENALTY_RATIO:F

    .line 14
    const v0, 0x3f39999a  # 0.725f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationDecrease;->INSULT_DECREASE_RELATIONS_BASED_ON_CURRENT_RELATION_RATIO:F

    return-void
.end method
