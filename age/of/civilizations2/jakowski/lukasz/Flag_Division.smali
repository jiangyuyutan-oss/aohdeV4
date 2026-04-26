.class public Lage/of/civilizations2/jakowski/lukasz/Flag_Division;
.super Ljava/lang/Object;
.source "Flag_Division.java"


# instance fields
.field public iLayers:I

.field public sName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "sName"  # Ljava/lang/String;
    .param p2, "iLayers"  # I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Flag_Division;->sName:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Flag_Division;->iLayers:I

    .line 15
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Flag_Division;->sName:Ljava/lang/String;

    .line 16
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Flag_Division;->iLayers:I

    .line 17
    return-void
.end method
