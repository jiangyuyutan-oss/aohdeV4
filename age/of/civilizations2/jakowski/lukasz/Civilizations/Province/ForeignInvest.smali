.class public Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;
.super Ljava/lang/Object;
.source "ForeignInvest.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public civID:I

.field public gold:I

.field public inCivID:I

.field public profit:I

.field public provinceID:I

.field public returnTurnID:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;->civID:I

    .line 12
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;->gold:I

    .line 13
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;->profit:I

    .line 15
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;->provinceID:I

    .line 16
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;->inCivID:I

    return-void
.end method
