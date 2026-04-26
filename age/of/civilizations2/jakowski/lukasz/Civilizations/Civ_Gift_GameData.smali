.class public Lage/of/civilizations2/jakowski/lukasz/Civilizations/Civ_Gift_GameData;
.super Ljava/lang/Object;
.source "Civ_Gift_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public iFromCivID:I

.field public iTurnID:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "iFromCivID"  # I
    .param p2, "iTurnID"  # I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Civ_Gift_GameData;->iFromCivID:I

    .line 20
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Civ_Gift_GameData;->iTurnID:I

    .line 21
    return-void
.end method
