.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_FormCiv;
.super Ljava/lang/Object;
.source "GV_FormCiv.java"


# instance fields
.field public COST_OF_FORM_CIVILIZATION_DIPLOMACY_POINTS:I

.field public COST_OF_FORM_CIVILIZATION_GOLD:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x3e8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_FormCiv;->COST_OF_FORM_CIVILIZATION_GOLD:I

    .line 6
    const/16 v0, 0x26

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_FormCiv;->COST_OF_FORM_CIVILIZATION_DIPLOMACY_POINTS:I

    return-void
.end method
