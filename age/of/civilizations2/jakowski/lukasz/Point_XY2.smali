.class public Lage/of/civilizations2/jakowski/lukasz/Point_XY2;
.super Ljava/lang/Object;
.source "Point_XY2.java"


# instance fields
.field private iPosX:I

.field private iPosY:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "nPosX"  # I
    .param p2, "nPosY"  # I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->iPosX:I

    .line 18
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->iPosY:I

    .line 19
    return-void
.end method


# virtual methods
.method public final getPX()I
    .registers 2

    .line 24
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->iPosX:I

    return v0
.end method

.method public final getPY()I
    .registers 2

    .line 32
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->iPosY:I

    return v0
.end method

.method public final setPX(I)V
    .registers 2
    .param p1, "iPosX"  # I

    .line 28
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->iPosX:I

    .line 29
    return-void
.end method

.method public final setPY(I)V
    .registers 2
    .param p1, "iPosY"  # I

    .line 36
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->iPosY:I

    .line 37
    return-void
.end method
