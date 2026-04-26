.class public Lage/of/civilizations2/jakowski/lukasz/Civilizations/LoanCiv_GameData;
.super Ljava/lang/Object;
.source "LoanCiv_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public fromCivID:I

.field public iGoldPerTurn:I

.field public iTurnsLeft:I


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .param p1, "iGoldPerTurn"  # I
    .param p2, "iTurnsLeft"  # I
    .param p3, "fromCivID"  # I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/LoanCiv_GameData;->iGoldPerTurn:I

    .line 17
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/LoanCiv_GameData;->iTurnsLeft:I

    .line 18
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/LoanCiv_GameData;->fromCivID:I

    .line 19
    return-void
.end method
