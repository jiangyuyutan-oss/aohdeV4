.class public Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/Propaganda;
.super Ljava/lang/Object;
.source "Propaganda.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public byCivID:I

.field public endTurnID:I

.field public provinceID:I


# direct methods
.method public constructor <init>(III)V
    .registers 5
    .param p1, "byCivID"  # I
    .param p2, "provinceID"  # I
    .param p3, "endTurnID"  # I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/Propaganda;->byCivID:I

    .line 12
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/Propaganda;->provinceID:I

    .line 13
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/Propaganda;->endTurnID:I

    .line 16
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/Propaganda;->byCivID:I

    .line 17
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/Propaganda;->provinceID:I

    .line 18
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/Propaganda;->endTurnID:I

    .line 19
    return-void
.end method
