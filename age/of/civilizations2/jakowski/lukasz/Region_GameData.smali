.class public Lage/of/civilizations2/jakowski/lukasz/Region_GameData;
.super Ljava/lang/Object;
.source "Region_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private fB:F

.field private fG:F

.field private fR:F

.field private sName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Region_GameData;->sName:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public final getB()F
    .registers 2

    .line 53
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Region_GameData;->fB:F

    return v0
.end method

.method public final getG()F
    .registers 2

    .line 45
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Region_GameData;->fG:F

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Region_GameData;->sName:Ljava/lang/String;

    return-object v0
.end method

.method public final getR()F
    .registers 2

    .line 37
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Region_GameData;->fR:F

    return v0
.end method

.method public final setB(F)V
    .registers 2
    .param p1, "fB"  # F

    .line 57
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Region_GameData;->fB:F

    .line 58
    return-void
.end method

.method public final setG(F)V
    .registers 2
    .param p1, "fG"  # F

    .line 49
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Region_GameData;->fG:F

    .line 50
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "sName"  # Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Region_GameData;->sName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public final setR(F)V
    .registers 2
    .param p1, "fR"  # F

    .line 41
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Region_GameData;->fR:F

    .line 42
    return-void
.end method
