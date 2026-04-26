.class public Lage/of/civilizations2/jakowski/lukasz/Civilizations/Loan_GameData;
.super Ljava/lang/Object;
.source "Loan_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public iGoldPerTurn:I

.field public iTurnsLeft:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "iGoldPerTurn"  # I
    .param p2, "iTurnsLeft"  # I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Loan_GameData;->iGoldPerTurn:I

    .line 20
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Loan_GameData;->iTurnsLeft:I

    .line 21
    return-void
.end method
