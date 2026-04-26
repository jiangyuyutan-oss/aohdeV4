.class public Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_4;
.super Ljava/lang/Object;
.source "Save_GameData_4.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public lProvincesData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_4;->lProvincesData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final buildData(I)V
    .registers 6
    .param p1, "startID"  # I

    .line 26
    move v0, p1

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v2

    if-ge v0, v2, :cond_20

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->PROVINCES_PER_FILE:I

    if-ge v1, v2, :cond_20

    .line 27
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_4;->lProvincesData:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 29
    .end local v0  # "i":I
    .end local v1  # "j":I
    :cond_20
    return-void
.end method
