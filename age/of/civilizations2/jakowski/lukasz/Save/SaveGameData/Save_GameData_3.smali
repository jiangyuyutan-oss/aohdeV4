.class public Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_3;
.super Ljava/lang/Object;
.source "Save_GameData_3.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public lCivsDiploData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Save/Save_CivDiplo_GameData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_3;->lCivsDiploData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final buildData()V
    .registers 4

    .line 26
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 27
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_3;->lCivsDiploData:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_CivDiplo_GameData;

    invoke-direct {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Save/Save_CivDiplo_GameData;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 29
    .end local v0  # "i":I
    :cond_16
    return-void
.end method
