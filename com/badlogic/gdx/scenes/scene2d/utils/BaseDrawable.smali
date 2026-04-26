.class public Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;
.super Ljava/lang/Object;
.source "BaseDrawable.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;


# instance fields
.field private bottomHeight:F

.field private leftWidth:F

.field private minHeight:F

.field private minWidth:F

.field private name:Ljava/lang/String;

.field private rightWidth:F

.field private topHeight:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .registers 3
    .param p1, "drawable"  # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;

    if-eqz v0, :cond_10

    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->name:Ljava/lang/String;

    .line 35
    :cond_10
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->leftWidth:F

    .line 36
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->rightWidth:F

    .line 37
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->topHeight:F

    .line 38
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->bottomHeight:F

    .line 39
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->minWidth:F

    .line 40
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->minHeight:F

    .line 41
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V
    .registers 6
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "width"  # F
    .param p5, "height"  # F

    .line 44
    return-void
.end method

.method public getBottomHeight()F
    .registers 2

    .line 71
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->bottomHeight:F

    return v0
.end method

.method public getLeftWidth()F
    .registers 2

    .line 47
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->leftWidth:F

    return v0
.end method

.method public getMinHeight()F
    .registers 2

    .line 94
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->minHeight:F

    return v0
.end method

.method public getMinWidth()F
    .registers 2

    .line 86
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->minWidth:F

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRightWidth()F
    .registers 2

    .line 55
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->rightWidth:F

    return v0
.end method

.method public getTopHeight()F
    .registers 2

    .line 63
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->topHeight:F

    return v0
.end method

.method public setBottomHeight(F)V
    .registers 2
    .param p1, "bottomHeight"  # F

    .line 75
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->bottomHeight:F

    .line 76
    return-void
.end method

.method public setLeftWidth(F)V
    .registers 2
    .param p1, "leftWidth"  # F

    .line 51
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->leftWidth:F

    .line 52
    return-void
.end method

.method public setMinHeight(F)V
    .registers 2
    .param p1, "minHeight"  # F

    .line 98
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->minHeight:F

    .line 99
    return-void
.end method

.method public setMinSize(FF)V
    .registers 3
    .param p1, "minWidth"  # F
    .param p2, "minHeight"  # F

    .line 102
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->setMinWidth(F)V

    .line 103
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->setMinHeight(F)V

    .line 104
    return-void
.end method

.method public setMinWidth(F)V
    .registers 2
    .param p1, "minWidth"  # F

    .line 90
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->minWidth:F

    .line 91
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"  # Ljava/lang/String;

    .line 111
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->name:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setPadding(FFFF)V
    .registers 5
    .param p1, "topHeight"  # F
    .param p2, "leftWidth"  # F
    .param p3, "bottomHeight"  # F
    .param p4, "rightWidth"  # F

    .line 79
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->setTopHeight(F)V

    .line 80
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->setLeftWidth(F)V

    .line 81
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->setBottomHeight(F)V

    .line 82
    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->setRightWidth(F)V

    .line 83
    return-void
.end method

.method public setRightWidth(F)V
    .registers 2
    .param p1, "rightWidth"  # F

    .line 59
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->rightWidth:F

    .line 60
    return-void
.end method

.method public setTopHeight(F)V
    .registers 2
    .param p1, "topHeight"  # F

    .line 67
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->topHeight:F

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->name:Ljava/lang/String;

    if-nez v0, :cond_d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 116
    :cond_d
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->name:Ljava/lang/String;

    return-object v0
.end method
