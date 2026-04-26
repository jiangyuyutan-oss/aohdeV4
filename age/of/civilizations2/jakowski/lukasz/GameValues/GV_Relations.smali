.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Relations;
.super Ljava/lang/Object;
.source "GV_Relations.java"


# instance fields
.field public FRIENDLY_MIN_RELATION:I

.field public HATED_MIN_RELATION:I

.field public MAX_RELATION_VALUE:I

.field public MIN_RELATION_VALUE:I

.field public RELATIONS_DECAY_IF_NEGATIVE:F

.field public RELATIONS_DECAY_IF_POSITIVE:F

.field public RELATIONS_DECAY_MAX:I

.field public RELATIONS_DECAY_MIN:I

.field public UPDATE_RELATIONS_DECAY_X_TURNS:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x64

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Relations;->MAX_RELATION_VALUE:I

    .line 6
    const/16 v0, -0x64

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Relations;->MIN_RELATION_VALUE:I

    .line 8
    const/16 v0, 0x1e

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Relations;->RELATIONS_DECAY_MAX:I

    .line 9
    const/16 v0, -0x14

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Relations;->RELATIONS_DECAY_MIN:I

    .line 11
    const/4 v0, 0x4

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Relations;->UPDATE_RELATIONS_DECAY_X_TURNS:I

    .line 13
    const v0, -0x4168f5c3  # -0.295f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Relations;->RELATIONS_DECAY_IF_POSITIVE:F

    .line 14
    const v0, 0x3c6d9168  # 0.0145f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Relations;->RELATIONS_DECAY_IF_NEGATIVE:F

    .line 16
    const/16 v0, 0x2c

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Relations;->FRIENDLY_MIN_RELATION:I

    .line 18
    const/16 v0, -0x19

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Relations;->HATED_MIN_RELATION:I

    return-void
.end method
