.class public Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;
.super Ljava/lang/Object;
.source "Timelapse_TurnChanges_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public lTurnChanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    return-void
.end method
