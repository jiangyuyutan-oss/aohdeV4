.class public Lage/of/civilizations2/jakowski/lukasz/PreDefined_Borders_GameData;
.super Ljava/lang/Object;
.source "PreDefined_Borders_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private lData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/PreDefined_Borders_Data_GameData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PreDefined_Borders_GameData;->lData:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public final addData(Lage/of/civilizations2/jakowski/lukasz/PreDefined_Borders_Data_GameData;)V
    .registers 3
    .param p1, "nData"  # Lage/of/civilizations2/jakowski/lukasz/PreDefined_Borders_Data_GameData;

    .line 42
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PreDefined_Borders_GameData;->lData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public final getData(I)Lage/of/civilizations2/jakowski/lukasz/PreDefined_Borders_Data_GameData;
    .registers 3
    .param p1, "i"  # I

    .line 34
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PreDefined_Borders_GameData;->lData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/PreDefined_Borders_Data_GameData;

    return-object v0
.end method

.method public final getDataSize()I
    .registers 2

    .line 30
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PreDefined_Borders_GameData;->lData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final removeData(I)V
    .registers 3
    .param p1, "i"  # I

    .line 38
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PreDefined_Borders_GameData;->lData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 39
    return-void
.end method
