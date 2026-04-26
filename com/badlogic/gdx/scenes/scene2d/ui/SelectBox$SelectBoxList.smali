.class Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;
.source "SelectBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SelectBoxList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;"
    }
.end annotation


# instance fields
.field private hideListener:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

.field final list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/ui/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field maxListCount:I

.field private previousScrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private final selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final stagePosition:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<",
            "TT;>;)V"
        }
    .end annotation

    .line 408
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList<TT;>;"
    .local p1, "selectBox":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<TT;>;"
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->scrollStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V

    .line 402
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->stagePosition:Lcom/badlogic/gdx/math/Vector2;

    .line 409
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    .line 411
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->setOverscroll(ZZ)V

    .line 412
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->setFadeScrollBars(Z)V

    .line 413
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->setScrollingDisabled(ZZ)V

    .line 415
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$1;

    iget-object v2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->listStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    invoke-direct {v0, p0, v2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    .line 420
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 421
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->setTypeToSelect(Z)V

    .line 422
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 424
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$2;

    invoke-direct {v1, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$2;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 440
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$3;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$3;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 446
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$4;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$4;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->hideListener:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    .line 469
    return-void
.end method


# virtual methods
.method public act(F)V
    .registers 2
    .param p1, "delta"  # F

    .line 549
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList<TT;>;"
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->act(F)V

    .line 550
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->toFront()V

    .line 551
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .registers 6
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"  # F

    .line 543
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->temp:Lcom/badlogic/gdx/math/Vector2;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 544
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->temp:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->stagePosition:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->hide()V

    .line 545
    :cond_19
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 546
    return-void
.end method

.method public hide()V
    .registers 4

    .line 526
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->isTouchable()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->hasParent()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_53

    .line 527
    :cond_f
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 529
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    .line 530
    .local v0, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    if-eqz v0, :cond_4a

    .line 531
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->hideListener:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->removeCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 532
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getKeyListener()Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 533
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->previousScrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->previousScrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    if-nez v1, :cond_39

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->previousScrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 534
    :cond_39
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getScrollFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    .line 535
    .local v1, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz v1, :cond_45

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->isAscendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v2

    if-eqz v2, :cond_4a

    :cond_45
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->previousScrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 538
    .end local v1  # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_4a
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->clearActions()V

    .line 539
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->onHide(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 540
    return-void

    .line 526
    .end local v0  # "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    :cond_53
    :goto_53
    return-void
.end method

.method protected setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .registers 4
    .param p1, "stage"  # Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 554
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList<TT;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    .line 555
    .local v0, "oldStage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    if-eqz v0, :cond_14

    .line 556
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->hideListener:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->removeCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 557
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getKeyListener()Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 559
    :cond_14
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 560
    return-void
.end method

.method public show(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .registers 20
    .param p1, "stage"  # Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 472
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList<TT;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v0, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->isTouchable()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 474
    :cond_d
    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 475
    iget-object v0, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->hideListener:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 476
    iget-object v0, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getKeyListener()Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 478
    iget-object v0, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v1, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->stagePosition:Lcom/badlogic/gdx/math/Vector2;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 481
    iget-object v0, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getItemHeight()F

    move-result v9

    .line 482
    .local v9, "itemHeight":F
    iget v0, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->maxListCount:I

    if-gtz v0, :cond_3b

    iget-object v0, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    goto :goto_47

    :cond_3b
    iget v0, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->maxListCount:I

    iget-object v1, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_47
    int-to-float v0, v0

    mul-float/2addr v0, v9

    .line 483
    .local v0, "height":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    move-result-object v1

    iget-object v10, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 484
    .local v10, "scrollPaneBackground":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    if-eqz v10, :cond_5b

    invoke-interface {v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v1

    invoke-interface {v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 485
    :cond_5b
    iget-object v1, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    move-result-object v1

    iget-object v11, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 486
    .local v11, "listBackground":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    if-eqz v11, :cond_6f

    invoke-interface {v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v1

    invoke-interface {v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 488
    :cond_6f
    iget-object v1, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->stagePosition:Lcom/badlogic/gdx/math/Vector2;

    iget v12, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 489
    .local v12, "heightBelow":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v1

    sub-float/2addr v1, v12

    iget-object v2, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getHeight()F

    move-result v2

    sub-float v13, v1, v2

    .line 490
    .local v13, "heightAbove":F
    const/4 v1, 0x1

    .line 491
    .local v1, "below":Z
    cmpl-float v2, v0, v12

    if-lez v2, :cond_95

    .line 492
    cmpl-float v2, v13, v12

    if-lez v2, :cond_91

    .line 493
    const/4 v1, 0x0

    .line 494
    invoke-static {v0, v13}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v14, v0

    move v15, v1

    goto :goto_97

    .line 496
    :cond_91
    move v0, v12

    move v14, v0

    move v15, v1

    goto :goto_97

    .line 491
    :cond_95
    move v14, v0

    move v15, v1

    .line 499
    .end local v0  # "height":F
    .end local v1  # "below":Z
    .local v14, "height":F
    .local v15, "below":Z
    :goto_97
    if-eqz v15, :cond_a2

    .line 500
    iget-object v0, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->stagePosition:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v14

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->setY(F)V

    goto :goto_b0

    .line 502
    :cond_a2
    iget-object v0, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->stagePosition:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v1, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getHeight()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->setY(F)V

    .line 503
    :goto_b0
    iget-object v0, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->stagePosition:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->setX(F)V

    .line 504
    invoke-virtual {v7, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->setHeight(F)V

    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->validate()V

    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->getPrefWidth()F

    move-result v0

    iget-object v1, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 507
    .local v0, "width":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->getPrefHeight()F

    move-result v1

    cmpl-float v1, v1, v14

    if-lez v1, :cond_de

    iget-boolean v1, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->disableY:Z

    if-nez v1, :cond_de

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->getScrollBarWidth()F

    move-result v1

    add-float/2addr v0, v1

    move v6, v0

    goto :goto_df

    .line 508
    :cond_de
    move v6, v0

    .end local v0  # "width":F
    .local v6, "width":F
    :goto_df
    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->setWidth(F)V

    .line 510
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->validate()V

    .line 511
    iget-object v0, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getHeight()F

    move-result v0

    iget-object v1, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getSelectedIndex()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v9

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000  # 2.0f

    div-float v1, v9, v1

    sub-float v2, v0, v1

    const/4 v5, 0x1

    const/16 v16, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v17, v6

    .end local v6  # "width":F
    .local v17, "width":F
    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->scrollTo(FFFFZZ)V

    .line 512
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->updateVisualScroll()V

    .line 514
    const/4 v0, 0x0

    iput-object v0, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->previousScrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 515
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getScrollFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    .line 516
    .local v0, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz v0, :cond_11d

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v1

    if-nez v1, :cond_11d

    iput-object v0, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->previousScrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 517
    :cond_11d
    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 519
    iget-object v1, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    iget-object v2, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getSelected()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->set(Ljava/lang/Object;)V

    .line 520
    iget-object v1, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 521
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->clearActions()V

    .line 522
    iget-object v1, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v1, v7, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->onShow(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V

    .line 523
    return-void
.end method
