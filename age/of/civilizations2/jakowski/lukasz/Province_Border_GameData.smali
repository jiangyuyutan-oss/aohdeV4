.class public Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;
.super Ljava/lang/Object;
.source "Province_Border_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private lPointsX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private lPointsY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private withProvinceID:I


# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/util/List;)V
    .registers 4
    .param p1, "withProvinceID"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    .line 23
    .local p2, "nPointsX":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Short;>;"
    .local p3, "nPointsY":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Short;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;->withProvinceID:I

    .line 25
    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;->lPointsX:Ljava/util/List;

    .line 26
    iput-object p3, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;->lPointsY:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public final getPointsX()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;->lPointsX:Ljava/util/List;

    return-object v0
.end method

.method public final getPointsY()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;->lPointsY:Ljava/util/List;

    return-object v0
.end method

.method public final getWithProvinceID()I
    .registers 2

    .line 32
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;->withProvinceID:I

    return v0
.end method
