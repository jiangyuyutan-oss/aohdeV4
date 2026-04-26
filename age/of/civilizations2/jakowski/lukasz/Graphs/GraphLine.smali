.class public Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphLine;
.super Ljava/lang/Object;
.source "GraphLine.java"


# instance fields
.field private fAngle:F

.field private iPosY:I

.field private iWidth:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 9
    .param p1, "fromPosX"  # I
    .param p2, "fromPosY"  # I
    .param p3, "toPosX"  # I
    .param p4, "toPosY"  # I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphLine;->iPosY:I

    .line 26
    sub-int v0, p3, p1

    sub-int v1, p3, p1

    mul-int v0, v0, v1

    sub-int v1, p2, p4

    sub-int v2, p2, p4

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphLine;->iWidth:I

    .line 27
    sub-int v0, p2, p4

    int-to-double v0, v0

    neg-int v2, p1

    add-int/2addr v2, p3

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L  # 180.0

    mul-double v0, v0, v2

    const-wide v2, 0x400921fb54442d18L  # Math.PI

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphLine;->fAngle:F

    .line 28
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .registers 13
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "i"  # I

    .line 33
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphLine;->iPosY:I

    add-int v4, p3, v0

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphLine;->iWidth:I

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphLine;->fAngle:F

    const/4 v6, 0x1

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    .line 34
    return-void
.end method

.method public final getPosY()I
    .registers 2

    .line 39
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphLine;->iPosY:I

    return v0
.end method

.method public final getWidth()I
    .registers 2

    .line 43
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphLine;->iWidth:I

    return v0
.end method

.method public final setWidth(I)V
    .registers 2
    .param p1, "iWidth"  # I

    .line 47
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphLine;->iWidth:I

    .line 48
    return-void
.end method
