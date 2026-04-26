.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Loan;
.super Ljava/lang/Object;
.source "GV_AI_Loan.java"


# instance fields
.field public ENEMY_ARMY_MODIFIER:F

.field public LOW_MONEY_RELATIVE_TO_LOAN_MULTIPLIER:F

.field public LOW_MONEY_THRESHOLD:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/high16 v0, 0x40400000  # 3.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Loan;->LOW_MONEY_RELATIVE_TO_LOAN_MULTIPLIER:F

    .line 6
    const/16 v0, 0x1388

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Loan;->LOW_MONEY_THRESHOLD:I

    .line 8
    const v0, 0x3f4ccccd  # 0.8f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Loan;->ENEMY_ARMY_MODIFIER:F

    return-void
.end method
