.class public Lage/of/civilizations2/jakowski/lukasz/Save/Save_CivDiploInfo_GameData;
.super Ljava/lang/Object;
.source "Save_CivDiploInfo_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public iValue:I

.field public id:I


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "id"  # I
    .param p2, "iValue"  # I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_CivDiploInfo_GameData;->id:I

    .line 19
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_CivDiploInfo_GameData;->id:I

    .line 20
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_CivDiploInfo_GameData;->iValue:I

    .line 21
    return-void
.end method
