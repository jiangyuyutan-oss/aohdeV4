.class public Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphLine_Simple;
.super Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphLine;
.source "GraphLine_Simple.java"


# instance fields
.field private iHeight:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 6
    .param p1, "fromPosX"  # I
    .param p2, "fromPosY"  # I
    .param p3, "toPosX"  # I
    .param p4, "toPosY"  # I

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphLine;-><init>(IIII)V

    .line 21
    sub-int v0, p3, p1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphLine_Simple;->setWidth(I)V

    .line 23
    sub-int v0, p4, p2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphLine_Simple;->iHeight:I

    .line 24
    return-void
.end method


# virtual methods
.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "i"  # I

    .line 29
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    sub-int v1, p2, p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphLine_Simple;->getPosY()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphLine_Simple;->getWidth()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 30
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sub-int v0, p2, p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphLine_Simple;->getWidth()I

    move-result v2

    add-int v3, v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphLine_Simple;->getPosY()I

    move-result v0

    add-int v4, p3, v0

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphLine_Simple;->iHeight:I

    const/4 v5, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 31
    return-void
.end method
