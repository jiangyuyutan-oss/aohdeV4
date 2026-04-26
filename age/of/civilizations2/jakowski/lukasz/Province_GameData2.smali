.class public Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;
.super Ljava/lang/Object;
.source "Province_GameData2.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public iLevelOfPort:I

.field public iPort_ShiftX:I

.field public iPort_ShiftY:I

.field public lNeighboringProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field public lNeighboringSeaProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field public lPointsX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field public lPointsY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field public lProvinceBorder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;",
            ">;"
        }
    .end annotation
.end field

.field public provinceInfo:Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->provinceInfo:Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->iPort_ShiftX:I

    .line 30
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->iPort_ShiftY:I

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->lPointsX:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->lPointsY:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->lProvinceBorder:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->lNeighboringProvinces:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->lNeighboringSeaProvinces:Ljava/util/List;

    .line 42
    return-void
.end method

.method public constructor <init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .param p1, "iLevelOfPort"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p2, "lPointsX":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Short;>;"
    .local p3, "lPointsY":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Short;>;"
    .local p4, "lProvinceBorder":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;>;"
    .local p5, "lNeighboringProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Short;>;"
    .local p6, "lNeighboringSeaProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Short;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->provinceInfo:Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->iPort_ShiftX:I

    .line 30
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->iPort_ShiftY:I

    .line 45
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->iLevelOfPort:I

    .line 47
    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->lPointsX:Ljava/util/List;

    .line 48
    iput-object p3, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->lPointsY:Ljava/util/List;

    .line 50
    iput-object p4, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->lProvinceBorder:Ljava/util/List;

    .line 52
    iput-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->lNeighboringProvinces:Ljava/util/List;

    .line 53
    iput-object p6, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->lNeighboringSeaProvinces:Ljava/util/List;

    .line 54
    return-void
.end method


# virtual methods
.method public final getLevelOfPort()I
    .registers 2

    .line 67
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->iLevelOfPort:I

    return v0
.end method

.method public final getNeighboringProvinces()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->lNeighboringProvinces:Ljava/util/List;

    return-object v0
.end method

.method public final getNeighboringSeaProvinces()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->lNeighboringSeaProvinces:Ljava/util/List;

    return-object v0
.end method

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

    .line 59
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->lPointsX:Ljava/util/List;

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

    .line 63
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->lPointsY:Ljava/util/List;

    return-object v0
.end method

.method public final getProvinceBorder()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->lProvinceBorder:Ljava/util/List;

    return-object v0
.end method
