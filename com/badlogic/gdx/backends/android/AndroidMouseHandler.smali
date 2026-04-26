.class public Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;
.super Ljava/lang/Object;
.source "AndroidMouseHandler.java"


# instance fields
.field private deltaX:I

.field private deltaY:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->deltaX:I

    .line 30
    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->deltaY:I

    return-void
.end method

.method private logAction(I)V
    .registers 6
    .param p1, "action"  # I

    .line 66
    const-string v0, ""

    .line 67
    .local v0, "actionStr":Ljava/lang/String;
    const/16 v1, 0x9

    if-ne p1, v1, :cond_9

    .line 68
    const-string v0, "HOVER_ENTER"

    goto :goto_36

    .line 69
    :cond_9
    const/4 v1, 0x7

    if-ne p1, v1, :cond_f

    .line 70
    const-string v0, "HOVER_MOVE"

    goto :goto_36

    .line 71
    :cond_f
    const/16 v1, 0xa

    if-ne p1, v1, :cond_16

    .line 72
    const-string v0, "HOVER_EXIT"

    goto :goto_36

    .line 73
    :cond_16
    const/16 v1, 0x8

    if-ne p1, v1, :cond_1d

    .line 74
    const-string v0, "SCROLL"

    goto :goto_36

    .line 76
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNKNOWN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_36
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AndroidMouseHandler"

    invoke-interface {v1, v3, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method private postTouchEvent(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;IIIIIJ)V
    .registers 11
    .param p1, "input"  # Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;
    .param p2, "type"  # I
    .param p3, "x"  # I
    .param p4, "y"  # I
    .param p5, "scrollAmountX"  # I
    .param p6, "scrollAmountY"  # I
    .param p7, "timeStamp"  # J

    .line 81
    iget-object v0, p1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->usedTouchEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;

    .line 82
    .local v0, "event":Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;
    iput-wide p7, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->timeStamp:J

    .line 83
    iput p3, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->x:I

    .line 84
    iput p4, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->y:I

    .line 85
    iput p2, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->type:I

    .line 86
    iput p5, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->scrollAmountX:I

    .line 87
    iput p6, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->scrollAmountY:I

    .line 88
    iget-object v1, p1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method


# virtual methods
.method public onGenericMotion(Landroid/view/MotionEvent;Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;)Z
    .registers 22
    .param p1, "event"  # Landroid/view/MotionEvent;
    .param p2, "input"  # Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    .line 33
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_e

    const/4 v0, 0x0

    return v0

    .line 35
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v12, v0, 0xff

    .line 37
    .local v12, "action":I
    const/4 v13, 0x0

    .local v13, "x":I
    const/4 v14, 0x0

    .line 38
    .local v14, "y":I
    const/4 v15, 0x0

    .line 39
    .local v15, "scrollAmountX":I
    const/16 v16, 0x0

    .line 41
    .local v16, "scrollAmountY":I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v17

    .line 42
    .local v17, "timeStamp":J
    monitor-enter p2

    .line 43
    packed-switch v12, :pswitch_data_82

    goto :goto_73

    .line 55
    :pswitch_22  #0x8
    const/16 v0, 0x9

    :try_start_24
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_7f

    neg-float v0, v0

    float-to-int v8, v0

    .line 56
    .end local v16  # "scrollAmountY":I
    .local v8, "scrollAmountY":I
    const/16 v0, 0xa

    :try_start_30
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_4b

    neg-float v0, v0

    float-to-int v15, v0

    .line 57
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x3

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v6, v15

    move v7, v8

    move/from16 v16, v8

    .end local v8  # "scrollAmountY":I
    .restart local v16  # "scrollAmountY":I
    move-wide/from16 v8, v17

    :try_start_47
    invoke-direct/range {v1 .. v9}, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->postTouchEvent(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;IIIIIJ)V

    goto :goto_73

    .line 60
    .end local v16  # "scrollAmountY":I
    .restart local v8  # "scrollAmountY":I
    :catchall_4b
    move-exception v0

    move/from16 v16, v8

    .end local v8  # "scrollAmountY":I
    .restart local v16  # "scrollAmountY":I
    goto :goto_80

    .line 45
    :pswitch_4f  #0x7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v13, v0

    .line 46
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v14, v0

    .line 47
    iget v0, v10, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->deltaX:I

    if-ne v13, v0, :cond_61

    iget v0, v10, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->deltaY:I

    if-eq v14, v0, :cond_73

    .line 48
    :cond_61
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x4

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v4, v13

    move v5, v14

    move-wide/from16 v8, v17

    invoke-direct/range {v1 .. v9}, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->postTouchEvent(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;IIIIIJ)V

    .line 49
    iput v13, v10, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->deltaX:I

    .line 50
    iput v14, v10, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->deltaY:I

    .line 60
    :cond_73
    :goto_73
    monitor-exit p2
    :try_end_74
    .catchall {:try_start_47 .. :try_end_74} :catchall_7f

    .line 61
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    .line 62
    const/4 v0, 0x1

    return v0

    .line 60
    :catchall_7f
    move-exception v0

    :goto_80
    :try_start_80
    monitor-exit p2
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw v0

    :pswitch_data_82
    .packed-switch 0x7
        :pswitch_4f  #00000007
        :pswitch_22  #00000008
    .end packed-switch
.end method
