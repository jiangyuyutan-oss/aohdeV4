.class public Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData2;
.super Ljava/lang/Object;
.source "Save_GameData2.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public AI_AGGRESSIVENESS:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildData()V
    .registers 2

    .line 20
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->AI_AGGRESSIVENESS:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData2;->AI_AGGRESSIVENESS:F

    .line 21
    return-void
.end method
