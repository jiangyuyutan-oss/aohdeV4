.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Window;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;
    }
.end annotation


# static fields
.field private static final MOVE:I = 0x20

.field private static final tmpPosition:Lcom/badlogic/gdx/math/Vector2;

.field private static final tmpSize:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field protected dragging:Z

.field drawTitleTable:Z

.field protected edge:I

.field isModal:Z

.field isMovable:Z

.field isResizable:Z

.field keepWithinStage:Z

.field resizeBorder:I

.field private style:Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

.field titleLabel:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field titleTable:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->tmpPosition:Lcom/badlogic/gdx/math/Vector2;

    .line 42
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->tmpSize:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .registers 4
    .param p1, "title"  # Ljava/lang/String;
    .param p2, "skin"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 57
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;)V

    .line 58
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setSkin(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .registers 5
    .param p1, "title"  # Ljava/lang/String;
    .param p2, "skin"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p3, "styleName"  # Ljava/lang/String;

    .line 62
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;)V

    .line 63
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setSkin(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;)V
    .registers 8
    .param p1, "title"  # Ljava/lang/String;
    .param p2, "style"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    .line 66
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isMovable:Z

    .line 47
    const/16 v1, 0x8

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->resizeBorder:I

    .line 48
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->keepWithinStage:Z

    .line 67
    if-eqz p1, :cond_67

    .line 68
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 69
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setClip(Z)V

    .line 71
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v3, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->titleFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v4, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->titleFontColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v1, p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleLabel:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 72
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleLabel:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setEllipsis(Z)V

    .line 74
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Window;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleTable:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleTable:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleLabel:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 80
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleTable:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 82
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;)V

    .line 83
    const/high16 v0, 0x43160000  # 150.0f

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setWidth(F)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setHeight(F)V

    .line 86
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Window;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->addCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 92
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Window;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 195
    return-void

    .line 67
    :cond_67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "title cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .registers 13
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"  # F

    .line 240
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    .line 241
    .local v0, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    if-eqz v0, :cond_61

    .line 242
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getKeyboardFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    if-nez v1, :cond_f

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 244
    :cond_f
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->keepWithinStage()V

    .line 246
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->stageBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_61

    .line 247
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->tmpPosition:Lcom/badlogic/gdx/math/Vector2;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 248
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->tmpSize:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 249
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getX()F

    move-result v1

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->tmpPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float v6, v1, v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getY()F

    move-result v1

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->tmpPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float v7, v1, v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getX()F

    move-result v1

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->tmpSize:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float v8, v1, v2

    .line 250
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getY()F

    move-result v1

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->tmpSize:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float v9, v1, v2

    .line 249
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v3 .. v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->drawStageBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFFF)V

    .line 253
    :cond_61
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 254
    return-void
.end method

.method protected drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;FFF)V
    .registers 10
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"  # F
    .param p3, "x"  # F
    .param p4, "y"  # F

    .line 263
    invoke-super {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;FFF)V

    .line 266
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleTable:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 267
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getPadTop()F

    move-result v0

    .local v0, "padTop":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getPadLeft()F

    move-result v1

    .line 268
    .local v1, "padLeft":F
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleTable:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getWidth()F

    move-result v3

    sub-float/2addr v3, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getPadRight()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setSize(FF)V

    .line 269
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleTable:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getHeight()F

    move-result v3

    sub-float/2addr v3, v0

    invoke-virtual {v2, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setPosition(FF)V

    .line 270
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->drawTitleTable:Z

    .line 271
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleTable:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 272
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->drawTitleTable:Z

    .line 273
    return-void
.end method

.method protected drawStageBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFFF)V
    .registers 15
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"  # F
    .param p3, "x"  # F
    .param p4, "y"  # F
    .param p5, "width"  # F
    .param p6, "height"  # F

    .line 257
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 258
    .local v0, "color":Lcom/badlogic/gdx/graphics/Color;
    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, p2

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 259
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    iget-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->stageBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-object v3, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 260
    return-void
.end method

.method public getPrefWidth()F
    .registers 4

    .line 328
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPrefWidth()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleTable:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPrefWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getPadLeft()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getPadRight()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    return-object v0
.end method

.method public getTitleLabel()Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .registers 2

    .line 336
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleLabel:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object v0
.end method

.method public getTitleTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 2

    .line 332
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleTable:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    return-object v0
.end method

.method public hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .registers 8
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "touchable"  # Z

    .line 276
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isVisible()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 277
    :cond_8
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    .line 278
    .local v0, "hit":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-nez v0, :cond_1d

    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    if-eqz v1, :cond_1d

    if-eqz p3, :cond_1c

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getTouchable()Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    if-ne v1, v2, :cond_1d

    :cond_1c
    return-object p0

    .line 279
    :cond_1d
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getHeight()F

    move-result v1

    .line 280
    .local v1, "height":F
    if-eqz v0, :cond_55

    if-ne v0, p0, :cond_26

    goto :goto_55

    .line 281
    :cond_26
    cmpg-float v2, p2, v1

    if-gtz v2, :cond_54

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getPadTop()F

    move-result v2

    sub-float v2, v1, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_54

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_54

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getWidth()F

    move-result v2

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_54

    .line 283
    move-object v2, v0

    .line 284
    .local v2, "current":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :goto_42
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v3

    if-eq v3, p0, :cond_4d

    .line 285
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v2

    goto :goto_42

    .line 286
    :cond_4d
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    if-eqz v3, :cond_54

    return-object p0

    .line 288
    .end local v2  # "current":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_54
    return-object v0

    .line 280
    :cond_55
    :goto_55
    return-object v0
.end method

.method public isDragging()Z
    .registers 2

    .line 324
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->dragging:Z

    return v0
.end method

.method public isModal()Z
    .registers 2

    .line 300
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    return v0
.end method

.method public isMovable()Z
    .registers 2

    .line 292
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isMovable:Z

    return v0
.end method

.method public isResizable()Z
    .registers 2

    .line 312
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isResizable:Z

    return v0
.end method

.method public keepWithinStage()V
    .registers 12

    .line 213
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->keepWithinStage:Z

    if-nez v0, :cond_5

    return-void

    .line 214
    :cond_5
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    .line 215
    .local v0, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    if-nez v0, :cond_c

    return-void

    .line 216
    :cond_c
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v1

    .line 217
    .local v1, "camera":Lcom/badlogic/gdx/graphics/Camera;
    instance-of v2, v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    if-eqz v2, :cond_b4

    .line 218
    move-object v2, v1

    check-cast v2, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    .line 219
    .local v2, "orthographicCamera":Lcom/badlogic/gdx/graphics/OrthographicCamera;
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v3

    .line 220
    .local v3, "parentWidth":F
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v4

    .line 221
    .local v4, "parentHeight":F
    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getX(I)F

    move-result v6

    iget-object v7, v1, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000  # 2.0f

    div-float v8, v3, v7

    iget v9, v2, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    div-float/2addr v8, v9

    cmpl-float v6, v6, v8

    if-lez v6, :cond_46

    .line 222
    iget-object v6, v1, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float v8, v3, v7

    iget v9, v2, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    div-float/2addr v8, v9

    add-float/2addr v6, v8

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getY(I)F

    move-result v8

    invoke-virtual {p0, v6, v8, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setPosition(FFI)V

    .line 223
    :cond_46
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getX(I)F

    move-result v6

    iget-object v8, v1, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v6, v8

    neg-float v8, v3

    div-float/2addr v8, v7

    iget v9, v2, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    div-float/2addr v8, v9

    cmpg-float v6, v6, v8

    if-gez v6, :cond_6b

    .line 224
    iget-object v6, v1, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float v8, v3, v7

    iget v9, v2, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    div-float/2addr v8, v9

    sub-float/2addr v6, v8

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getY(I)F

    move-result v8

    invoke-virtual {p0, v6, v8, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setPosition(FFI)V

    .line 225
    :cond_6b
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getY(I)F

    move-result v6

    iget-object v8, v1, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v6, v8

    div-float v8, v4, v7

    iget v9, v2, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    div-float/2addr v8, v9

    cmpl-float v6, v6, v8

    if-lez v6, :cond_8f

    .line 226
    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getX(I)F

    move-result v6

    iget-object v8, v1, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float v9, v4, v7

    iget v10, v2, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-virtual {p0, v6, v8, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setPosition(FFI)V

    .line 227
    :cond_8f
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getY(I)F

    move-result v6

    iget-object v8, v1, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v6, v8

    neg-float v8, v4

    div-float/2addr v8, v7

    iget v9, v2, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    div-float/2addr v8, v9

    cmpg-float v6, v6, v8

    if-gez v6, :cond_100

    .line 228
    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getX(I)F

    move-result v6

    iget-object v8, v1, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float v7, v4, v7

    iget v9, v2, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    div-float/2addr v7, v9

    sub-float/2addr v8, v7

    invoke-virtual {p0, v6, v8, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setPosition(FFI)V

    goto :goto_100

    .line 229
    .end local v2  # "orthographicCamera":Lcom/badlogic/gdx/graphics/OrthographicCamera;
    .end local v3  # "parentWidth":F
    .end local v4  # "parentHeight":F
    :cond_b4
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getRoot()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v3

    if-ne v2, v3, :cond_100

    .line 230
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v2

    .line 231
    .local v2, "parentWidth":F
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v3

    .line 232
    .local v3, "parentHeight":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getX()F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_d2

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setX(F)V

    .line 233
    :cond_d2
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getRight()F

    move-result v4

    cmpl-float v4, v4, v2

    if-lez v4, :cond_e3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getWidth()F

    move-result v4

    sub-float v4, v2, v4

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setX(F)V

    .line 234
    :cond_e3
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getY()F

    move-result v4

    cmpg-float v4, v4, v5

    if-gez v4, :cond_ee

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setY(F)V

    .line 235
    :cond_ee
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getTop()F

    move-result v4

    cmpl-float v4, v4, v3

    if-lez v4, :cond_101

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getHeight()F

    move-result v4

    sub-float v4, v3, v4

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setY(F)V

    goto :goto_101

    .line 229
    .end local v2  # "parentWidth":F
    .end local v3  # "parentHeight":F
    :cond_100
    :goto_100
    nop

    .line 237
    :cond_101
    :goto_101
    return-void
.end method

.method public setKeepWithinStage(Z)V
    .registers 2
    .param p1, "keepWithinStage"  # Z

    .line 308
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->keepWithinStage:Z

    .line 309
    return-void
.end method

.method public setModal(Z)V
    .registers 2
    .param p1, "isModal"  # Z

    .line 304
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    .line 305
    return-void
.end method

.method public setMovable(Z)V
    .registers 2
    .param p1, "isMovable"  # Z

    .line 296
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isMovable:Z

    .line 297
    return-void
.end method

.method public setResizable(Z)V
    .registers 2
    .param p1, "isResizable"  # Z

    .line 316
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isResizable:Z

    .line 317
    return-void
.end method

.method public setResizeBorder(I)V
    .registers 2
    .param p1, "resizeBorder"  # I

    .line 320
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->resizeBorder:I

    .line 321
    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;)V
    .registers 6
    .param p1, "style"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    .line 198
    if-eqz p1, :cond_1b

    .line 199
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    .line 201
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 202
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleLabel:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->titleFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v3, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->titleFontColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 203
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->invalidateHierarchy()V

    .line 204
    return-void

    .line 198
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "style cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
