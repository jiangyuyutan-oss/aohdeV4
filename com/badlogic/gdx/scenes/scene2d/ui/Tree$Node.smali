.class public abstract Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
.super Ljava/lang/Object;
.source "Tree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
        "V:",
        "Ljava/lang/Object;",
        "A:",
        "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field final children:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;"
        }
    .end annotation
.end field

.field expanded:Z

.field height:F

.field icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field selectable:Z

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 597
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    .line 585
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->selectable:Z

    .line 598
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 591
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    .local p1, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;, "TA;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    .line 585
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->selectable:Z

    .line 592
    if-eqz p1, :cond_13

    .line 593
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 594
    return-void

    .line 592
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "actor cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 640
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    .local p1, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->insert(ILcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    .line 641
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/Array;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;)V"
        }
    .end annotation

    .line 644
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    .local p1, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TN;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_3
    if-ge v0, v1, :cond_15

    .line 645
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->insert(ILcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    .line 644
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 646
    .end local v0  # "i":I
    .end local v1  # "n":I
    :cond_15
    return-void
.end method

.method protected addToTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;I)I
    .registers 8
    .param p2, "actorIndex"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<",
            "TN;TV;>;I)I"
        }
    .end annotation

    .line 620
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    .local p1, "tree":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->addActorAt(ILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 621
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    return v0

    .line 622
    :cond_b
    add-int/lit8 v0, p2, 0x1

    .line 623
    .local v0, "childIndex":I
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 624
    .local v1, "children":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v3, "n":I
    :goto_16
    if-ge v2, v3, :cond_24

    .line 625
    aget-object v4, v1, v2

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v4, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->addToTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;I)I

    move-result v4

    add-int/2addr v0, v4

    .line 624
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 626
    .end local v2  # "i":I
    .end local v3  # "n":I
    :cond_24
    sub-int v2, v0, p2

    return v2
.end method

.method public clearChildren()V
    .registers 7

    .line 695
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v0, :cond_27

    .line 696
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getTree()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    move-result-object v0

    .line 697
    .local v0, "tree":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;
    if-eqz v0, :cond_27

    .line 698
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getZIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 699
    .local v1, "actorIndex":I
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 700
    .local v2, "children":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v4, "n":I
    :goto_1b
    if-ge v3, v4, :cond_27

    .line 701
    aget-object v5, v2, v3

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v5, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->removeFromTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;I)V

    .line 700
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 704
    .end local v0  # "tree":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;
    .end local v1  # "actorIndex":I
    .end local v2  # "children":[Ljava/lang/Object;
    .end local v3  # "i":I
    .end local v4  # "n":I
    :cond_27
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 705
    return-void
.end method

.method public collapseAll()V
    .registers 2

    .line 804
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->setExpanded(Z)V

    .line 805
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->collapseAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 806
    return-void
.end method

.method countActors()I
    .registers 6

    .line 668
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    .line 669
    :cond_6
    const/4 v0, 0x1

    .line 670
    .local v0, "count":I
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 671
    .local v1, "children":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v3, "n":I
    :goto_10
    if-ge v2, v3, :cond_1e

    .line 672
    aget-object v4, v1, v2

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->countActors()I

    move-result v4

    add-int/2addr v0, v4

    .line 671
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 673
    .end local v2  # "i":I
    .end local v3  # "n":I
    :cond_1e
    return v0
.end method

.method public expandAll()V
    .registers 2

    .line 810
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->setExpanded(Z)V

    .line 811
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->expandAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 812
    :cond_f
    return-void
.end method

.method public expandTo()V
    .registers 3

    .line 816
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 817
    .local v0, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    :goto_2
    if-eqz v0, :cond_b

    .line 818
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->setExpanded(Z)V

    .line 819
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    goto :goto_2

    .line 821
    :cond_b
    return-void
.end method

.method public findExpandedValues(Lcom/badlogic/gdx/utils/Array;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TV;>;)V"
        }
    .end annotation

    .line 832
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    .local p1, "values":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TV;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->findExpandedValues(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Array;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 833
    :cond_11
    return-void
.end method

.method public findNode(Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TN;"
        }
    .end annotation

    .line 797
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_12

    .line 798
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    .line 799
    :cond_b
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->findNode(Lcom/badlogic/gdx/utils/Array;Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object v0

    return-object v0

    .line 797
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 728
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getChildren()Lcom/badlogic/gdx/utils/Array;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;"
        }
    .end annotation

    .line 739
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getHeight()F
    .registers 2

    .line 848
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->height:F

    return v0
.end method

.method public getIcon()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .registers 2

    .line 782
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method public getLevel()I
    .registers 3

    .line 786
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    const/4 v0, 0x0

    .line 787
    .local v0, "level":I
    move-object v1, p0

    .line 789
    .local v1, "current":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 790
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getParent()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object v1

    .line 791
    if-nez v1, :cond_2

    .line 792
    return v0
.end method

.method public getParent()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 764
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    return-object v0
.end method

.method public getTree()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<",
            "TN;TV;>;"
        }
    .end annotation

    .line 710
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    .line 711
    .local v0, "parent":Lcom/badlogic/gdx/scenes/scene2d/Group;
    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    if-eqz v1, :cond_e

    move-object v1, v0

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    return-object v1

    .line 712
    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 773
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hasChildren()Z
    .registers 2

    .line 743
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public insert(ILcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .registers 7
    .param p1, "childIndex"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITN;)V"
        }
    .end annotation

    .line 649
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    .local p2, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    iput-object p0, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 650
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->insert(ILjava/lang/Object;)V

    .line 651
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-nez v0, :cond_c

    return-void

    .line 652
    :cond_c
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getTree()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    move-result-object v0

    .line 653
    .local v0, "tree":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;
    if-eqz v0, :cond_4f

    .line 655
    if-nez p1, :cond_1d

    .line 656
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getZIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .local v1, "actorIndex":I
    goto :goto_4c

    .line 657
    .end local v1  # "actorIndex":I
    :cond_1d
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_36

    .line 658
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getZIndex()I

    move-result v1

    .restart local v1  # "actorIndex":I
    goto :goto_4c

    .line 660
    .end local v1  # "actorIndex":I
    :cond_36
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 661
    .local v1, "before":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    iget-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getZIndex()I

    move-result v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->countActors()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 663
    .local v1, "actorIndex":I
    :goto_4c
    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->addToTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;I)I

    .line 665
    .end local v1  # "actorIndex":I
    :cond_4f
    return-void
.end method

.method public isAscendantOf(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    .line 853
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    .local p1, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    if-eqz p1, :cond_d

    .line 854
    move-object v0, p1

    .line 856
    .local v0, "current":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    :cond_3
    if-ne v0, p0, :cond_7

    const/4 v1, 0x1

    return v1

    .line 857
    :cond_7
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 858
    if-nez v0, :cond_3

    .line 859
    const/4 v1, 0x0

    return v1

    .line 853
    .end local v0  # "current":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "node cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    .line 864
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    .local p1, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    if-eqz p1, :cond_d

    .line 865
    move-object v0, p0

    .line 867
    .local v0, "parent":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    :cond_3
    if-ne v0, p1, :cond_7

    const/4 v1, 0x1

    return v1

    .line 868
    :cond_7
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 869
    if-nez v0, :cond_3

    .line 870
    const/4 v1, 0x0

    return v1

    .line 864
    .end local v0  # "parent":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "node cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isExpanded()Z
    .registers 2

    .line 732
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    return v0
.end method

.method public isSelectable()Z
    .registers 2

    .line 824
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->selectable:Z

    return v0
.end method

.method public remove()V
    .registers 3

    .line 678
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getTree()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    move-result-object v0

    .line 679
    .local v0, "tree":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;
    if-eqz v0, :cond_a

    .line 680
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    goto :goto_13

    .line 681
    :cond_a
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    if-eqz v1, :cond_13

    .line 682
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    .line 683
    :cond_13
    :goto_13
    return-void
.end method

.method public remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 687
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    .local p1, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 688
    :cond_a
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-nez v0, :cond_f

    return-void

    .line 689
    :cond_f
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getTree()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    move-result-object v0

    .line 690
    .local v0, "tree":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;
    if-eqz v0, :cond_1e

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getZIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->removeFromTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;I)V

    .line 691
    :cond_1e
    return-void
.end method

.method protected removeFromTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;I)V
    .registers 8
    .param p2, "actorIndex"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<",
            "TN;TV;>;I)V"
        }
    .end annotation

    .line 631
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    .local p1, "tree":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->removeActorAt(IZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    .line 633
    .local v0, "removeActorAt":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-nez v1, :cond_a

    return-void

    .line 634
    :cond_a
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 635
    .local v1, "children":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v3, "n":I
    :goto_13
    if-ge v2, v3, :cond_1f

    .line 636
    aget-object v4, v1, v2

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v4, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->removeFromTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;I)V

    .line 635
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 637
    .end local v2  # "i":I
    .end local v3  # "n":I
    :cond_1f
    return-void
.end method

.method public restoreExpandedValues(Lcom/badlogic/gdx/utils/Array;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TV;>;)V"
        }
    .end annotation

    .line 836
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    .local p1, "values":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_3
    if-ge v0, v1, :cond_19

    .line 837
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->findNode(Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object v2

    .line 838
    .local v2, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    if-eqz v2, :cond_16

    .line 839
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->setExpanded(Z)V

    .line 840
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expandTo()V

    .line 836
    .end local v2  # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 843
    .end local v0  # "i":I
    .end local v1  # "n":I
    :cond_19
    return-void
.end method

.method public setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 716
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    .local p1, "newActor":Lcom/badlogic/gdx/scenes/scene2d/Actor;, "TA;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_17

    .line 717
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getTree()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    move-result-object v0

    .line 718
    .local v0, "tree":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    if-eqz v0, :cond_17

    .line 719
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getZIndex()I

    move-result v1

    .line 720
    .local v1, "index":I
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->removeActorAt(IZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 721
    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->addActorAt(ILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 724
    .end local v0  # "tree":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    .end local v1  # "index":I
    :cond_17
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 725
    return-void
.end method

.method public setExpanded(Z)V
    .registers 8
    .param p1, "expanded"  # Z

    .line 601
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 602
    :cond_5
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    .line 603
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_e

    return-void

    .line 604
    :cond_e
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getTree()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    move-result-object v0

    .line 605
    .local v0, "tree":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;
    if-nez v0, :cond_15

    return-void

    .line 606
    :cond_15
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 607
    .local v1, "children":[Ljava/lang/Object;
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getZIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 608
    .local v2, "actorIndex":I
    if-eqz p1, :cond_37

    .line 609
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v4, "n":I
    :goto_28
    if-ge v3, v4, :cond_36

    .line 610
    aget-object v5, v1, v3

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v5, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->addToTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;I)I

    move-result v5

    add-int/2addr v2, v5

    .line 609
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .end local v3  # "i":I
    .end local v4  # "n":I
    :cond_36
    goto :goto_48

    .line 612
    :cond_37
    const/4 v3, 0x0

    .restart local v3  # "i":I
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    .restart local v4  # "n":I
    :goto_3c
    if-ge v3, v4, :cond_48

    .line 613
    aget-object v5, v1, v3

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v5, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->removeFromTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;I)V

    .line 612
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 615
    .end local v3  # "i":I
    .end local v4  # "n":I
    :cond_48
    :goto_48
    return-void
.end method

.method public setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .registers 2
    .param p1, "icon"  # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 769
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 770
    return-void
.end method

.method public setSelectable(Z)V
    .registers 2
    .param p1, "selectable"  # Z

    .line 828
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->selectable:Z

    .line 829
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 778
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->value:Ljava/lang/Object;

    .line 779
    return-void
.end method

.method public updateChildren()V
    .registers 7

    .line 750
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-nez v0, :cond_5

    return-void

    .line 751
    :cond_5
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getTree()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    move-result-object v0

    .line 752
    .local v0, "tree":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;
    if-nez v0, :cond_c

    return-void

    .line 753
    :cond_c
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 754
    .local v1, "children":[Ljava/lang/Object;
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 755
    .local v2, "n":I
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getZIndex()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 756
    .local v3, "actorIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1d
    if-ge v4, v2, :cond_29

    .line 757
    aget-object v5, v1, v4

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v5, v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->removeFromTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;I)V

    .line 756
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 758
    .end local v4  # "i":I
    :cond_29
    const/4 v4, 0x0

    .restart local v4  # "i":I
    :goto_2a
    if-ge v4, v2, :cond_38

    .line 759
    aget-object v5, v1, v4

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v5, v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->addToTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;I)I

    move-result v5

    add-int/2addr v3, v5

    .line 758
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 760
    .end local v4  # "i":I
    :cond_38
    return-void
.end method
