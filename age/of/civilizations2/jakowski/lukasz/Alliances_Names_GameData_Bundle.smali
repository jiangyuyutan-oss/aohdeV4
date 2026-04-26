.class public Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;
.super Ljava/lang/Object;
.source "Alliances_Names_GameData_Bundle.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private sWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "nWord"  # Ljava/lang/String;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;->sWords:Ljava/util/List;

    .line 23
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method


# virtual methods
.method public final addWord(Ljava/lang/String;)V
    .registers 3
    .param p1, "nWord"  # Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;->sWords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method

.method public final getWord(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"  # I

    .line 37
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;->sWords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getWordsSize()I
    .registers 2

    .line 45
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;->sWords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final removeWord(I)V
    .registers 3
    .param p1, "i"  # I

    .line 33
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;->sWords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public final setWord(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "i"  # I
    .param p2, "nWord"  # Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;->sWords:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
