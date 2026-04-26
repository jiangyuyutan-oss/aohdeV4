.class public Lage/of/civilizations2/jakowski/lukasz/PlayerAIPeace_GameData;
.super Ljava/lang/Object;
.source "PlayerAIPeace_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public iCivID:I

.field public turnID:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "iCivID"  # I
    .param p2, "turnID"  # I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/PlayerAIPeace_GameData;->iCivID:I

    .line 16
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/PlayerAIPeace_GameData;->turnID:I

    .line 17
    return-void
.end method
