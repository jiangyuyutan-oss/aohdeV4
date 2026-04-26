.class public Lage/of/civilizations2/jakowski/lukasz/Save/SaveActiveMap_Status_GameData;
.super Ljava/lang/Object;
.source "SaveActiveMap_Status_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public loaded:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveActiveMap_Status_GameData;->loaded:Z

    return-void
.end method
