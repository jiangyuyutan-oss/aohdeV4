.class public Lage/of/civilizations2/jakowski/lukasz/Save/SaveActiveMap_GameData;
.super Ljava/lang/Object;
.source "SaveActiveMap_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public iActiveMapID:I

.field public iActiveMapScale:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveActiveMap_GameData;->iActiveMapID:I

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveActiveMap_GameData;->iActiveMapScale:I

    .line 17
    return-void
.end method
