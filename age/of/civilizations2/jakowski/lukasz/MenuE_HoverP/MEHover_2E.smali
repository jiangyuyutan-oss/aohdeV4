.class public Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;
.super Ljava/lang/Object;
.source "MEHover_2E.java"


# instance fields
.field public drawElement:Z

.field private iMaxHeight:I

.field private lElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type;",
            ">;)V"
        }
    .end annotation

    .line 23
    .local p1, "nElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;->iMaxHeight:I

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;->drawElement:Z

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;->lElements:Ljava/util/List;

    .line 26
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 27
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;->lElements:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;->iMaxHeight:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type;

    invoke-interface {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;->iMaxHeight:I

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 30
    .end local v0  # "i":I
    :cond_37
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .registers 6
    .param p2, "drawElement"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type;",
            ">;Z)V"
        }
    .end annotation

    .line 32
    .local p1, "nElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;->iMaxHeight:I

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;->drawElement:Z

    .line 33
    iput-boolean p2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;->drawElement:Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;->lElements:Ljava/util/List;

    .line 37
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_39

    .line 38
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;->lElements:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;->iMaxHeight:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type;

    invoke-interface {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;->iMaxHeight:I

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 41
    .end local v0  # "i":I
    :cond_39
    return-void
.end method


# virtual methods
.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .registers 9
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nAlpha"  # F

    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "tX":I
    :goto_2
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;->lElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_27

    .line 47
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;->lElements:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type;

    add-int v3, p2, v1

    invoke-interface {v2, p1, v3, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 48
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;->lElements:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type;

    invoke-interface {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 50
    .end local v0  # "i":I
    .end local v1  # "tX":I
    :cond_27
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V
    .registers 15
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nAlpha"  # F
    .param p5, "iMaxWidth"  # I

    .line 53
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "tX":I
    :goto_2
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;->lElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2c

    .line 54
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;->lElements:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type;

    add-int v5, p2, v1

    move-object v4, p1

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    .line 55
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;->lElements:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type;

    invoke-interface {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 57
    .end local v0  # "i":I
    .end local v1  # "tX":I
    :cond_2c
    return-void
.end method

.method public getHeight()I
    .registers 2

    .line 70
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;->iMaxHeight:I

    return v0
.end method

.method public final getWidth()I
    .registers 4

    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, "out":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;->lElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 63
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;->lElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type;

    invoke-interface {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 66
    .end local v1  # "i":I
    :cond_1a
    return v0
.end method
