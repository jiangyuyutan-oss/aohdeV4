.class public Lage/of/civilizations2/jakowski/lukasz/Province_ArmyBox;
.super Ljava/lang/Object;
.source "Province_ArmyBox.java"


# instance fields
.field private iEndPosX:I

.field private iEndPosY:I

.field private iStartPosX:I

.field private iStartPosY:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5
    .param p1, "iStartPosX"  # I
    .param p2, "iStartPosY"  # I
    .param p3, "iEndPosX"  # I
    .param p4, "iEndPosY"  # I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_ArmyBox;->iStartPosX:I

    .line 21
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_ArmyBox;->iStartPosY:I

    .line 22
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Province_ArmyBox;->iEndPosX:I

    .line 23
    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/Province_ArmyBox;->iEndPosY:I

    .line 24
    return-void
.end method


# virtual methods
.method public final getEndPosX()I
    .registers 2

    .line 37
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_ArmyBox;->iEndPosX:I

    return v0
.end method

.method public final getEndPosY()I
    .registers 2

    .line 41
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_ArmyBox;->iEndPosY:I

    return v0
.end method

.method public final getStartPosX()I
    .registers 2

    .line 29
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_ArmyBox;->iStartPosX:I

    return v0
.end method

.method public final getStartPosY()I
    .registers 2

    .line 33
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_ArmyBox;->iStartPosY:I

    return v0
.end method
