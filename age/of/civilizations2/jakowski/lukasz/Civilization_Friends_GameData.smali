.class public Lage/of/civilizations2/jakowski/lukasz/Civilization_Friends_GameData;
.super Ljava/lang/Object;
.source "Civilization_Friends_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public iCivID:I

.field public iSinceTurnID:I


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "iCivID"  # I
    .param p2, "iSinceTurnID"  # I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Friends_GameData;->iSinceTurnID:I

    .line 19
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Friends_GameData;->iCivID:I

    .line 20
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Friends_GameData;->iSinceTurnID:I

    .line 21
    return-void
.end method
