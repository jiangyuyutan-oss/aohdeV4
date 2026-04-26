.class public Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_11;
.super Ljava/lang/Object;
.source "Save_GameData_11.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public eventsGameData:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildData()V
    .registers 2

    .line 23
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->events:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_11;->eventsGameData:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    .line 24
    return-void
.end method
