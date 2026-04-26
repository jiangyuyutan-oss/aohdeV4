.class public Lage/of/civilizations2/jakowski/lukasz/Color_GameData;
.super Ljava/lang/Object;
.source "Color_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private fB:F

.field private fG:F

.field private fR:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(FFF)V
    .registers 4
    .param p1, "fR"  # F
    .param p2, "fG"  # F
    .param p3, "fB"  # F

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->fR:F

    .line 27
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->fB:F

    .line 28
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->fG:F

    .line 29
    return-void
.end method


# virtual methods
.method public final getB()F
    .registers 2

    .line 50
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->fB:F

    return v0
.end method

.method public final getG()F
    .registers 2

    .line 42
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->fG:F

    return v0
.end method

.method public final getR()F
    .registers 2

    .line 34
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->fR:F

    return v0
.end method

.method public final setB(F)V
    .registers 2
    .param p1, "fB"  # F

    .line 54
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->fB:F

    .line 55
    return-void
.end method

.method public final setG(F)V
    .registers 2
    .param p1, "fG"  # F

    .line 46
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->fG:F

    .line 47
    return-void
.end method

.method public final setR(F)V
    .registers 2
    .param p1, "fR"  # F

    .line 38
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->fR:F

    .line 39
    return-void
.end method
