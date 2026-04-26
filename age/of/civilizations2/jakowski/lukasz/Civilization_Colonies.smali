.class public Lage/of/civilizations2/jakowski/lukasz/Civilization_Colonies;
.super Ljava/lang/Object;
.source "Civilization_Colonies.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public iProvinceID:I

.field public iTurnID:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "nProvinceID"  # I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Colonies;->iProvinceID:I

    .line 20
    return-void
.end method
