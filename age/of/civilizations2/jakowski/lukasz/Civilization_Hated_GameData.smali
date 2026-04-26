.class public Lage/of/civilizations2/jakowski/lukasz/Civilization_Hated_GameData;
.super Ljava/lang/Object;
.source "Civilization_Hated_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public iCivID:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "iCivID"  # I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Hated_GameData;->iCivID:I

    .line 19
    return-void
.end method
