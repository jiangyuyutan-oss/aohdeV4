.class public Lage/of/civilizations2/jakowski/lukasz/Package_ContinentsData;
.super Ljava/lang/Object;
.source "Package_ContinentsData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private lContinentsTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Package_ContinentsData;->lContinentsTags:Ljava/util/List;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Package_ContinentsData;->sPackageName:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Package_ContinentsData;->lContinentsTags:Ljava/util/List;

    .line 26
    return-void
.end method


# virtual methods
.method public final addContinentTag(Ljava/lang/String;)V
    .registers 3
    .param p1, "sTag"  # Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Package_ContinentsData;->lContinentsTags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public final getContinentTag(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"  # I

    .line 39
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Package_ContinentsData;->lContinentsTags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getContinentsTagsSize()I
    .registers 2

    .line 43
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Package_ContinentsData;->lContinentsTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Package_ContinentsData;->sPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public final removeContinentTag(I)V
    .registers 3
    .param p1, "i"  # I

    .line 51
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Package_ContinentsData;->lContinentsTags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "sPackageName"  # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Package_ContinentsData;->sPackageName:Ljava/lang/String;

    .line 36
    return-void
.end method
