.class public Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;
.super Ljava/lang/Object;
.source "CivInvest_Development.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public iDevelopmentLeft:F

.field public iDevelopmentPerTurn:F

.field public provinceID:I

.field public turnsLeft:I


# direct methods
.method public constructor <init>(IIFF)V
    .registers 5
    .param p1, "provinceID"  # I
    .param p2, "turnsLeft"  # I
    .param p3, "iDevelopmentLeft"  # F
    .param p4, "iDevelopmentPerTurn"  # F

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->provinceID:I

    .line 22
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->turnsLeft:I

    .line 23
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->iDevelopmentLeft:F

    .line 24
    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->iDevelopmentPerTurn:F

    .line 25
    return-void
.end method
