.class public Lage/of/civilizations2/jakowski/lukasz/Z_Other/ReligionE;
.super Ljava/lang/Object;
.source "ReligionE.java"


# instance fields
.field private id:I

.field private isStateReligion:Z

.field private power:D


# direct methods
.method public constructor <init>(IZ)V
    .registers 5
    .param p1, "id"  # I
    .param p2, "isStateReligion"  # Z

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ReligionE;->id:I

    .line 14
    iput-boolean p2, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ReligionE;->isStateReligion:Z

    .line 15
    const-wide/high16 v0, 0x4024000000000000L  # 10.0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ReligionE;->power:D

    .line 16
    return-void
.end method


# virtual methods
.method public applyEvent(I)V
    .registers 7
    .param p1, "eventCode"  # I

    .line 28
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 29
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ReligionE;->power:D

    const-wide/high16 v2, 0x4008000000000000L  # 3.0

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ReligionE;->power:D

    goto :goto_15

    .line 30
    :cond_b
    const/4 v0, 0x2

    if-ne p1, v0, :cond_15

    .line 31
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ReligionE;->power:D

    const-wide/high16 v2, 0x4010000000000000L  # 4.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ReligionE;->power:D

    .line 33
    :cond_15
    :goto_15
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ReligionE;->power:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1f

    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ReligionE;->power:D

    .line 34
    :cond_1f
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ReligionE;->power:D

    const-wide/high16 v2, 0x4059000000000000L  # 100.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_29

    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ReligionE;->power:D

    .line 35
    :cond_29
    return-void
.end method

.method public getId()I
    .registers 2

    .line 39
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ReligionE;->id:I

    return v0
.end method

.method public getPower()D
    .registers 3

    .line 43
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ReligionE;->power:D

    return-wide v0
.end method

.method public isStateReligion()Z
    .registers 2

    .line 47
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ReligionE;->isStateReligion:Z

    return v0
.end method

.method public setStateReligion(Z)V
    .registers 2
    .param p1, "stateReligion"  # Z

    .line 51
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ReligionE;->isStateReligion:Z

    .line 52
    return-void
.end method

.method public spread()V
    .registers 8

    .line 20
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    const-wide/high16 v2, 0x4014000000000000L  # 5.0

    mul-double v0, v0, v2

    .line 21
    .local v0, "delta":D
    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ReligionE;->power:D

    add-double/2addr v2, v0

    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ReligionE;->power:D

    .line 22
    const-wide/high16 v4, 0x4059000000000000L  # 100.0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_17

    iput-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ReligionE;->power:D

    .line 23
    :cond_17
    return-void
.end method

.method public tick(I)V
    .registers 2
    .param p1, "eventCode"  # I

    .line 56
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ReligionE;->spread()V

    .line 57
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ReligionE;->applyEvent(I)V

    .line 58
    return-void
.end method
