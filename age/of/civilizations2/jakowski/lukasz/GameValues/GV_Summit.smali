.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Summit;
.super Ljava/lang/Object;
.source "GV_Summit.java"


# instance fields
.field public IMPROVE_RELATIONS_BASE:F

.field public IMPROVE_RELATIONS_RANDOM_100:I

.field public SUMMIT_COOLDOWN_TURNS:I

.field public SUMMIT_DIPLOMACY_POINTS_COST_BASE:I

.field public SUMMIT_DIPLOMACY_POINTS_COST_PER_CIVILIZATION:I

.field public SUMMIT_GOLD_COST_BASE:I

.field public SUMMIT_GOLD_COST_PER_CIVILIZATION:I

.field public SUMMIT_GOLD_COST_PER_CIVILIZATION_DISTANCE_MODIFIER:F

.field public SUMMIT_TURNS:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x19

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Summit;->SUMMIT_DIPLOMACY_POINTS_COST_BASE:I

    .line 6
    const/16 v0, 0x8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Summit;->SUMMIT_DIPLOMACY_POINTS_COST_PER_CIVILIZATION:I

    .line 8
    const/16 v0, 0x9c4

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Summit;->SUMMIT_GOLD_COST_BASE:I

    .line 9
    const/16 v0, 0x1f4

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Summit;->SUMMIT_GOLD_COST_PER_CIVILIZATION:I

    .line 10
    const/high16 v0, 0x3fe00000  # 1.75f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Summit;->SUMMIT_GOLD_COST_PER_CIVILIZATION_DISTANCE_MODIFIER:F

    .line 12
    const/high16 v0, 0x40500000  # 3.25f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Summit;->IMPROVE_RELATIONS_BASE:F

    .line 13
    const/16 v0, 0x178

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Summit;->IMPROVE_RELATIONS_RANDOM_100:I

    .line 15
    const/4 v0, 0x4

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Summit;->SUMMIT_TURNS:I

    .line 17
    const/16 v0, 0x14

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Summit;->SUMMIT_COOLDOWN_TURNS:I

    return-void
.end method
