.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_FormCiv;
.super Ljava/lang/Object;
.source "GV_AI_FormCiv.java"


# instance fields
.field public NEXT_FORM_CIV_CHECK_TURN_ID:I

.field public NEXT_FORM_CIV_CHECK_TURN_ID_AFTER_FORMING:I

.field public NEXT_FORM_CIV_CHECK_TURN_ID_NONE_TO_FORM:I

.field public NEXT_FORM_CIV_CHECK_TURN_ID_RANDOM:I

.field public NEXT_FORM_CIV_CHECK_TURN_ID_RANDOM_AFTER_FORMING:I

.field public NEXT_FORM_CIV_CHECK_TURN_ID_RANDOM_NONE_TO_FORM:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x94

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_FormCiv;->NEXT_FORM_CIV_CHECK_TURN_ID:I

    .line 6
    const/16 v0, 0x85

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_FormCiv;->NEXT_FORM_CIV_CHECK_TURN_ID_RANDOM:I

    .line 8
    const/16 v0, 0x7c

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_FormCiv;->NEXT_FORM_CIV_CHECK_TURN_ID_AFTER_FORMING:I

    .line 9
    const/16 v0, 0x4c

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_FormCiv;->NEXT_FORM_CIV_CHECK_TURN_ID_RANDOM_AFTER_FORMING:I

    .line 11
    const/16 v0, 0x7d0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_FormCiv;->NEXT_FORM_CIV_CHECK_TURN_ID_NONE_TO_FORM:I

    .line 12
    const/16 v0, 0x3e8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_FormCiv;->NEXT_FORM_CIV_CHECK_TURN_ID_RANDOM_NONE_TO_FORM:I

    return-void
.end method
