.class public Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;
.super Ljava/lang/Object;
.source "Actions.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/scenes/scene2d/Action;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 34
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/badlogic/gdx/utils/Pools;->get(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Pool;

    move-result-object v0

    .line 35
    .local v0, "pool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<TT;>;"
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 36
    .local v1, "action":Lcom/badlogic/gdx/scenes/scene2d/Action;, "TT;"
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setPool(Lcom/badlogic/gdx/utils/Pool;)V

    .line 37
    return-object v1
.end method

.method public static addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;
    .registers 2
    .param p0, "action"  # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 41
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;

    .line 42
    .local v0, "addAction":Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;->setAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 43
    return-object v0
.end method

.method public static addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;
    .registers 3
    .param p0, "action"  # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p1, "targetActor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 47
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;

    .line 48
    .local v0, "addAction":Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 49
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;->setAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 50
    return-object v0
.end method

.method public static addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Z)Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;
    .registers 3
    .param p0, "listener"  # Lcom/badlogic/gdx/scenes/scene2d/EventListener;
    .param p1, "capture"  # Z

    .line 469
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;

    .line 470
    .local v0, "addAction":Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;->setListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)V

    .line 471
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;->setCapture(Z)V

    .line 472
    return-object v0
.end method

.method public static addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;ZLcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;
    .registers 4
    .param p0, "listener"  # Lcom/badlogic/gdx/scenes/scene2d/EventListener;
    .param p1, "capture"  # Z
    .param p2, "targetActor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 476
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;

    .line 477
    .local v0, "addAction":Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 478
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;->setListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)V

    .line 479
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;->setCapture(Z)V

    .line 480
    return-object v0
.end method

.method public static after(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/AfterAction;
    .registers 2
    .param p0, "action"  # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 463
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AfterAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AfterAction;

    .line 464
    .local v0, "afterAction":Lcom/badlogic/gdx/scenes/scene2d/actions/AfterAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/AfterAction;->setAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 465
    return-object v0
.end method

.method public static alpha(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;
    .registers 3
    .param p0, "a"  # F

    .line 239
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v0

    return-object v0
.end method

.method public static alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;
    .registers 3
    .param p0, "a"  # F
    .param p1, "duration"  # F

    .line 244
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v0

    return-object v0
.end method

.method public static alpha(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;
    .registers 4
    .param p0, "a"  # F
    .param p1, "duration"  # F
    .param p2, "interpolation"  # Lcom/badlogic/gdx/math/Interpolation;

    .line 249
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    .line 250
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->setAlpha(F)V

    .line 251
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->setDuration(F)V

    .line 252
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    .line 253
    return-object v0
.end method

.method public static color(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;
    .registers 3
    .param p0, "color"  # Lcom/badlogic/gdx/graphics/Color;

    .line 220
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->color(Lcom/badlogic/gdx/graphics/Color;FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    move-result-object v0

    return-object v0
.end method

.method public static color(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;
    .registers 3
    .param p0, "color"  # Lcom/badlogic/gdx/graphics/Color;
    .param p1, "duration"  # F

    .line 225
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->color(Lcom/badlogic/gdx/graphics/Color;FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    move-result-object v0

    return-object v0
.end method

.method public static color(Lcom/badlogic/gdx/graphics/Color;FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;
    .registers 4
    .param p0, "color"  # Lcom/badlogic/gdx/graphics/Color;
    .param p1, "duration"  # F
    .param p2, "interpolation"  # Lcom/badlogic/gdx/math/Interpolation;

    .line 230
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    .line 231
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;->setEndColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 232
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;->setDuration(F)V

    .line 233
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    .line 234
    return-object v0
.end method

.method public static delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;
    .registers 2
    .param p0, "duration"  # F

    .line 315
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    .line 316
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->setDuration(F)V

    .line 317
    return-object v0
.end method

.method public static delay(FLcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;
    .registers 3
    .param p0, "duration"  # F
    .param p1, "delayedAction"  # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 321
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    .line 322
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->setDuration(F)V

    .line 323
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->setAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 324
    return-object v0
.end method

.method public static fadeIn(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;
    .registers 3
    .param p0, "duration"  # F

    .line 272
    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v0

    return-object v0
.end method

.method public static fadeIn(FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;
    .registers 4
    .param p0, "duration"  # F
    .param p1, "interpolation"  # Lcom/badlogic/gdx/math/Interpolation;

    .line 277
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    .line 278
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;
    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->setAlpha(F)V

    .line 279
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->setDuration(F)V

    .line 280
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    .line 281
    return-object v0
.end method

.method public static fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;
    .registers 3
    .param p0, "duration"  # F

    .line 258
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v0

    return-object v0
.end method

.method public static fadeOut(FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;
    .registers 4
    .param p0, "duration"  # F
    .param p1, "interpolation"  # Lcom/badlogic/gdx/math/Interpolation;

    .line 263
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    .line 264
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->setAlpha(F)V

    .line 265
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->setDuration(F)V

    .line 266
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    .line 267
    return-object v0
.end method

.method public static forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;
    .registers 3
    .param p0, "repeatedAction"  # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 444
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    .line 445
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;->setCount(I)V

    .line 446
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;->setAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 447
    return-object v0
.end method

.method public static hide()Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;
    .registers 1

    .line 289
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->visible(Z)Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v0

    return-object v0
.end method

.method public static layout(Z)Lcom/badlogic/gdx/scenes/scene2d/actions/LayoutAction;
    .registers 2
    .param p0, "enabled"  # Z

    .line 457
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/LayoutAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/LayoutAction;

    .line 458
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/LayoutAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/LayoutAction;->setLayoutEnabled(Z)V

    .line 459
    return-object v0
.end method

.method public static moveBy(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;
    .registers 4
    .param p0, "amountX"  # F
    .param p1, "amountY"  # F

    .line 101
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;

    move-result-object v0

    return-object v0
.end method

.method public static moveBy(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;
    .registers 4
    .param p0, "amountX"  # F
    .param p1, "amountY"  # F
    .param p2, "duration"  # F

    .line 105
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;

    move-result-object v0

    return-object v0
.end method

.method public static moveBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;
    .registers 5
    .param p0, "amountX"  # F
    .param p1, "amountY"  # F
    .param p2, "duration"  # F
    .param p3, "interpolation"  # Lcom/badlogic/gdx/math/Interpolation;

    .line 109
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;

    .line 110
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;
    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;->setAmount(FF)V

    .line 111
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;->setDuration(F)V

    .line 112
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    .line 113
    return-object v0
.end method

.method public static moveTo(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;
    .registers 4
    .param p0, "x"  # F
    .param p1, "y"  # F

    .line 68
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v0

    return-object v0
.end method

.method public static moveTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;
    .registers 4
    .param p0, "x"  # F
    .param p1, "y"  # F
    .param p2, "duration"  # F

    .line 72
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v0

    return-object v0
.end method

.method public static moveTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;
    .registers 5
    .param p0, "x"  # F
    .param p1, "y"  # F
    .param p2, "duration"  # F
    .param p3, "interpolation"  # Lcom/badlogic/gdx/math/Interpolation;

    .line 76
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    .line 77
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;
    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->setPosition(FF)V

    .line 78
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->setDuration(F)V

    .line 79
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    .line 80
    return-object v0
.end method

.method public static moveToAligned(FFI)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;
    .registers 5
    .param p0, "x"  # F
    .param p1, "y"  # F
    .param p2, "alignment"  # I

    .line 84
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveToAligned(FFIFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v0

    return-object v0
.end method

.method public static moveToAligned(FFIF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;
    .registers 5
    .param p0, "x"  # F
    .param p1, "y"  # F
    .param p2, "alignment"  # I
    .param p3, "duration"  # F

    .line 88
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveToAligned(FFIFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v0

    return-object v0
.end method

.method public static moveToAligned(FFIFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;
    .registers 6
    .param p0, "x"  # F
    .param p1, "y"  # F
    .param p2, "alignment"  # I
    .param p3, "duration"  # F
    .param p4, "interpolation"  # Lcom/badlogic/gdx/math/Interpolation;

    .line 92
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    .line 93
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;
    invoke-virtual {v0, p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->setPosition(FFI)V

    .line 94
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->setDuration(F)V

    .line 95
    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    .line 96
    return-object v0
.end method

.method public static parallel()Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;
    .registers 1

    .line 433
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    return-object v0
.end method

.method public static parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;
    .registers 2
    .param p0, "action1"  # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 386
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    .line 387
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 388
    return-object v0
.end method

.method public static parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;
    .registers 3
    .param p0, "action1"  # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p1, "action2"  # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 392
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    .line 393
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 394
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 395
    return-object v0
.end method

.method public static parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;
    .registers 4
    .param p0, "action1"  # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p1, "action2"  # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p2, "action3"  # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 399
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    .line 400
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 401
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 402
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 403
    return-object v0
.end method

.method public static parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;
    .registers 5
    .param p0, "action1"  # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p1, "action2"  # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p2, "action3"  # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p3, "action4"  # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 407
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    .line 408
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 409
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 410
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 411
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 412
    return-object v0
.end method

.method public static parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;
    .registers 6
    .param p0, "action1"  # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p1, "action2"  # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p2, "action3"  # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p3, "action4"  # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p4, "action5"  # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 416
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    .line 417
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 418
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 419
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 420
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 421
    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 422
    return-object v0
.end method

.method public static varargs parallel([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;
    .registers 5
    .param p0, "actions"  # [Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 426
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    .line 427
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p0

    .local v2, "n":I
    :goto_a
    if-ge v1, v2, :cond_14

    .line 428
    aget-object v3, p0, v1

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 427
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 429
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_14
    return-object v0
.end method

.method public static removeAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveAction;
    .registers 2
    .param p0, "action"  # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 54
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveAction;

    .line 55
    .local v0, "removeAction":Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveAction;->setAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 56
    return-object v0
.end method

.method public static removeAction(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveAction;
    .registers 3
    .param p0, "action"  # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p1, "targetActor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 60
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveAction;

    .line 61
    .local v0, "removeAction":Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveAction;
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveAction;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 62
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveAction;->setAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 63
    return-object v0
.end method

.method public static removeActor()Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;
    .registers 1

    .line 305
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;

    return-object v0
.end method

.method public static removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;
    .registers 2
    .param p0, "removeActor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 309
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;

    .line 310
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 311
    return-object v0
.end method

.method public static removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Z)Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;
    .registers 3
    .param p0, "listener"  # Lcom/badlogic/gdx/scenes/scene2d/EventListener;
    .param p1, "capture"  # Z

    .line 484
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;

    .line 485
    .local v0, "addAction":Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;->setListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)V

    .line 486
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;->setCapture(Z)V

    .line 487
    return-object v0
.end method

.method public static removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;ZLcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;
    .registers 4
    .param p0, "listener"  # Lcom/badlogic/gdx/scenes/scene2d/EventListener;
    .param p1, "capture"  # Z
    .param p2, "targetActor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 491
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;

    .line 492
    .local v0, "addAction":Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 493
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;->setListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)V

    .line 494
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;->setCapture(Z)V

    .line 495
    return-object v0
.end method

.method public static repeat(ILcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;
    .registers 3
    .param p0, "count"  # I
    .param p1, "repeatedAction"  # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 437
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    .line 438
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;->setCount(I)V

    .line 439
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;->setAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 440
    return-object v0
.end method

.method public static rotateBy(F)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;
    .registers 3
    .param p0, "rotationAmount"  # F

    .line 203
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->rotateBy(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;

    move-result-object v0

    return-object v0
.end method

.method public static rotateBy(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;
    .registers 3
    .param p0, "rotationAmount"  # F
    .param p1, "duration"  # F

    .line 207
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->rotateBy(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;

    move-result-object v0

    return-object v0
.end method

.method public static rotateBy(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;
    .registers 4
    .param p0, "rotationAmount"  # F
    .param p1, "duration"  # F
    .param p2, "interpolation"  # Lcom/badlogic/gdx/math/Interpolation;

    .line 211
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;

    .line 212
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;->setAmount(F)V

    .line 213
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;->setDuration(F)V

    .line 214
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    .line 215
    return-object v0
.end method

.method public static rotateTo(F)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;
    .registers 3
    .param p0, "rotation"  # F

    .line 186
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->rotateTo(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;

    move-result-object v0

    return-object v0
.end method

.method public static rotateTo(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;
    .registers 3
    .param p0, "rotation"  # F
    .param p1, "duration"  # F

    .line 190
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->rotateTo(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;

    move-result-object v0

    return-object v0
.end method

.method public static rotateTo(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;
    .registers 4
    .param p0, "rotation"  # F
    .param p1, "duration"  # F
    .param p2, "interpolation"  # Lcom/badlogic/gdx/math/Interpolation;

    .line 194
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;

    .line 195
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->setRotation(F)V

    .line 196
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->setDuration(F)V

    .line 197
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    .line 198
    return-object v0
.end method

.method public static run(Ljava/lang/Runnable;)Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;
    .registers 2
    .param p0, "runnable"  # Ljava/lang/Runnable;

    .line 451
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;

    .line 452
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->setRunnable(Ljava/lang/Runnable;)V

    .line 453
    return-object v0
.end method

.method public static scaleBy(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;
    .registers 4
    .param p0, "amountX"  # F
    .param p1, "amountY"  # F

    .line 169
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;

    move-result-object v0

    return-object v0
.end method

.method public static scaleBy(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;
    .registers 4
    .param p0, "amountX"  # F
    .param p1, "amountY"  # F
    .param p2, "duration"  # F

    .line 173
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;

    move-result-object v0

    return-object v0
.end method

.method public static scaleBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;
    .registers 5
    .param p0, "amountX"  # F
    .param p1, "amountY"  # F
    .param p2, "duration"  # F
    .param p3, "interpolation"  # Lcom/badlogic/gdx/math/Interpolation;

    .line 177
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;

    .line 178
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;
    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;->setAmount(FF)V

    .line 179
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;->setDuration(F)V

    .line 180
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    .line 181
    return-object v0
.end method

.method public static scaleTo(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;
    .registers 4
    .param p0, "x"  # F
    .param p1, "y"  # F

    .line 152
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object v0

    return-object v0
.end method

.method public static scaleTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;
    .registers 4
    .param p0, "x"  # F
    .param p1, "y"  # F
    .param p2, "duration"  # F

    .line 156
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object v0

    return-object v0
.end method

.method public static scaleTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;
    .registers 5
    .param p0, "x"  # F
    .param p1, "y"  # F
    .param p2, "duration"  # F
    .param p3, "interpolation"  # Lcom/badlogic/gdx/math/Interpolation;

    .line 160
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    .line 161
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;
    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->setScale(FF)V

    .line 162
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->setDuration(F)V

    .line 163
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    .line 164
    return-object v0
.end method

.method public static sequence()Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .registers 1

    .line 382
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    return-object v0
.end method

.method public static sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .registers 2
    .param p0, "action1"  # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 335
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    .line 336
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 337
    return-object v0
.end method

.method public static sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .registers 3
    .param p0, "action1"  # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p1, "action2"  # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 341
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    .line 342
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 343
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 344
    return-object v0
.end method

.method public static sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .registers 4
    .param p0, "action1"  # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p1, "action2"  # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p2, "action3"  # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 348
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    .line 349
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 350
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 351
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 352
    return-object v0
.end method

.method public static sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .registers 5
    .param p0, "action1"  # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p1, "action2"  # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p2, "action3"  # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p3, "action4"  # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 356
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    .line 357
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 358
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 359
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 360
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 361
    return-object v0
.end method

.method public static sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .registers 6
    .param p0, "action1"  # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p1, "action2"  # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p2, "action3"  # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p3, "action4"  # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p4, "action5"  # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 365
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    .line 366
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 367
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 368
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 369
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 370
    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 371
    return-object v0
.end method

.method public static varargs sequence([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .registers 5
    .param p0, "actions"  # [Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 375
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    .line 376
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p0

    .local v2, "n":I
    :goto_a
    if-ge v1, v2, :cond_14

    .line 377
    aget-object v3, p0, v1

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 376
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 378
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_14
    return-object v0
.end method

.method public static show()Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;
    .registers 1

    .line 285
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->visible(Z)Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v0

    return-object v0
.end method

.method public static sizeBy(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;
    .registers 4
    .param p0, "amountX"  # F
    .param p1, "amountY"  # F

    .line 135
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sizeBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;

    move-result-object v0

    return-object v0
.end method

.method public static sizeBy(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;
    .registers 4
    .param p0, "amountX"  # F
    .param p1, "amountY"  # F
    .param p2, "duration"  # F

    .line 139
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sizeBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;

    move-result-object v0

    return-object v0
.end method

.method public static sizeBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;
    .registers 5
    .param p0, "amountX"  # F
    .param p1, "amountY"  # F
    .param p2, "duration"  # F
    .param p3, "interpolation"  # Lcom/badlogic/gdx/math/Interpolation;

    .line 143
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;

    .line 144
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;
    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;->setAmount(FF)V

    .line 145
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;->setDuration(F)V

    .line 146
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    .line 147
    return-object v0
.end method

.method public static sizeTo(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;
    .registers 4
    .param p0, "x"  # F
    .param p1, "y"  # F

    .line 118
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sizeTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;

    move-result-object v0

    return-object v0
.end method

.method public static sizeTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;
    .registers 4
    .param p0, "x"  # F
    .param p1, "y"  # F
    .param p2, "duration"  # F

    .line 122
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sizeTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;

    move-result-object v0

    return-object v0
.end method

.method public static sizeTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;
    .registers 5
    .param p0, "x"  # F
    .param p1, "y"  # F
    .param p2, "duration"  # F
    .param p3, "interpolation"  # Lcom/badlogic/gdx/math/Interpolation;

    .line 126
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;

    .line 127
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;
    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->setSize(FF)V

    .line 128
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->setDuration(F)V

    .line 129
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    .line 130
    return-object v0
.end method

.method public static targeting(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .registers 2
    .param p0, "target"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p1, "action"  # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 505
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 506
    return-object p1
.end method

.method public static timeScale(FLcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/TimeScaleAction;
    .registers 3
    .param p0, "scale"  # F
    .param p1, "scaledAction"  # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 328
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/TimeScaleAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/TimeScaleAction;

    .line 329
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/TimeScaleAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TimeScaleAction;->setScale(F)V

    .line 330
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/TimeScaleAction;->setAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 331
    return-object v0
.end method

.method public static touchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)Lcom/badlogic/gdx/scenes/scene2d/actions/TouchableAction;
    .registers 2
    .param p0, "touchable"  # Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    .line 299
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/TouchableAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/TouchableAction;

    .line 300
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/TouchableAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TouchableAction;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 301
    return-object v0
.end method

.method public static visible(Z)Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;
    .registers 2
    .param p0, "visible"  # Z

    .line 293
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    .line 294
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;->setVisible(Z)V

    .line 295
    return-object v0
.end method
