.class public Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;
.super Ljava/lang/Object;
.source "AndroidTouchHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private logAction(II)V
    .registers 7
    .param p1, "action"  # I
    .param p2, "pointer"  # I

    .line 122
    const-string v0, ""

    .line 123
    .local v0, "actionStr":Ljava/lang/String;
    if-nez p1, :cond_7

    .line 124
    const-string v0, "DOWN"

    goto :goto_44

    .line 125
    :cond_7
    const/4 v1, 0x5

    if-ne p1, v1, :cond_d

    .line 126
    const-string v0, "POINTER DOWN"

    goto :goto_44

    .line 127
    :cond_d
    const/4 v1, 0x1

    if-ne p1, v1, :cond_13

    .line 128
    const-string v0, "UP"

    goto :goto_44

    .line 129
    :cond_13
    const/4 v1, 0x6

    if-ne p1, v1, :cond_19

    .line 130
    const-string v0, "POINTER UP"

    goto :goto_44

    .line 131
    :cond_19
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1f

    .line 132
    const-string v0, "OUTSIDE"

    goto :goto_44

    .line 133
    :cond_1f
    const/4 v1, 0x3

    if-ne p1, v1, :cond_25

    .line 134
    const-string v0, "CANCEL"

    goto :goto_44

    .line 135
    :cond_25
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2b

    .line 136
    const-string v0, "MOVE"

    goto :goto_44

    .line 138
    :cond_2b
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

    .line 139
    :goto_44
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Android pointer id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AndroidMultiTouchHandler"

    invoke-interface {v1, v3, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method private postTouchEvent(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;IIIIIJ)V
    .registers 11
    .param p1, "input"  # Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;
    .param p2, "type"  # I
    .param p3, "x"  # I
    .param p4, "y"  # I
    .param p5, "pointer"  # I
    .param p6, "button"  # I
    .param p7, "timeStamp"  # J

    .line 152
    iget-object v0, p1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->usedTouchEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;

    .line 153
    .local v0, "event":Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;
    iput-wide p7, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->timeStamp:J

    .line 154
    iput p5, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->pointer:I

    .line 155
    iput p3, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->x:I

    .line 156
    iput p4, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->y:I

    .line 157
    iput p2, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->type:I

    .line 158
    iput p6, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->button:I

    .line 159
    iget-object v1, p1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    return-void
.end method

.method private toGdxButton(I)I
    .registers 4
    .param p1, "button"  # I

    .line 143
    if-eqz p1, :cond_1b

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_1b

    .line 144
    :cond_6
    const/4 v1, 0x2

    if-ne p1, v1, :cond_a

    return v0

    .line 145
    :cond_a
    const/4 v0, 0x4

    if-ne p1, v0, :cond_e

    return v1

    .line 146
    :cond_e
    const/16 v1, 0x8

    if-ne p1, v1, :cond_14

    const/4 v0, 0x3

    return v0

    .line 147
    :cond_14
    const/16 v1, 0x10

    if-ne p1, v1, :cond_19

    return v0

    .line 148
    :cond_19
    const/4 v0, -0x1

    return v0

    .line 143
    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onTouch(Landroid/view/MotionEvent;Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;)V
    .registers 27
    .param p1, "event"  # Landroid/view/MotionEvent;
    .param p2, "input"  # Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    .line 32
    move-object/from16 v1, p1

    move-object/from16 v11, p2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v12, v0, 0xff

    .line 33
    .local v12, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v2, 0xff00

    and-int/2addr v0, v2

    shr-int/lit8 v13, v0, 0x8

    .line 34
    .local v13, "pointerIndex":I
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    .line 36
    .local v14, "pointerId":I
    const/4 v2, 0x0

    .local v2, "x":I
    const/4 v3, 0x0

    .line 37
    .local v3, "y":I
    const/4 v4, 0x0

    .line 38
    .local v4, "realPointerIndex":I
    const/4 v5, 0x0

    .line 40
    .local v5, "button":I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    .line 41
    .local v15, "timeStamp":J
    monitor-enter p2

    .line 42
    const/4 v0, 0x0

    const/16 v9, 0x14

    const/4 v10, -0x1

    const/16 v17, 0x0

    packed-switch v12, :pswitch_data_2b4

    goto/16 :goto_2a5

    .line 82
    :pswitch_2c  #0x3
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2d
    :try_start_2d
    iget-object v7, v11, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->realId:[I

    array-length v7, v7

    if-ge v6, v7, :cond_55

    .line 83
    iget-object v7, v11, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->realId:[I

    aput v10, v7, v6

    .line 84
    iget-object v7, v11, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchX:[I

    aput v17, v7, v6

    .line 85
    iget-object v7, v11, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchY:[I

    aput v17, v7, v6

    .line 86
    iget-object v7, v11, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaX:[I

    aput v17, v7, v6

    .line 87
    iget-object v7, v11, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaY:[I

    aput v17, v7, v6

    .line 88
    iget-object v7, v11, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touched:[Z

    aput-boolean v17, v7, v6

    .line 89
    iget-object v7, v11, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->button:[I

    aput v17, v7, v6

    .line 90
    iget-object v7, v11, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->pressure:[F

    aput v0, v7, v6

    .line 82
    add-int/lit8 v6, v6, 0x1

    goto :goto_2d

    .line 92
    .end local v6  # "i":I
    :cond_55
    goto/16 :goto_2a5

    .line 95
    :pswitch_57  #0x2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0
    :try_end_5b
    .catchall {:try_start_2d .. :try_end_5b} :catchall_2b0

    .line 96
    .local v0, "pointerCount":I
    const/4 v6, 0x0

    move/from16 v23, v13

    move v13, v6

    move/from16 v6, v23

    .local v6, "pointerIndex":I
    .local v13, "i":I
    :goto_61
    if-ge v13, v0, :cond_156

    .line 97
    move v8, v13

    .line 98
    .end local v6  # "pointerIndex":I
    .local v8, "pointerIndex":I
    :try_start_64
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    move v14, v6

    .line 99
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6
    :try_end_6d
    .catchall {:try_start_64 .. :try_end_6d} :catchall_151

    float-to-int v7, v6

    .line 100
    .end local v2  # "x":I
    .local v7, "x":I
    :try_start_6e
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2
    :try_end_72
    .catchall {:try_start_6e .. :try_end_72} :catchall_148

    float-to-int v6, v2

    .line 101
    .end local v3  # "y":I
    .local v6, "y":I
    :try_start_73
    invoke-virtual {v11, v14}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->lookUpPointerIndex(I)I

    move-result v2
    :try_end_77
    .catchall {:try_start_73 .. :try_end_77} :catchall_13b

    move v4, v2

    .line 102
    if-ne v4, v10, :cond_86

    move/from16 v22, v0

    move/from16 v18, v4

    move/from16 v19, v6

    move/from16 v20, v7

    move v6, v8

    move v0, v10

    goto/16 :goto_103

    .line 103
    :cond_86
    if-lt v4, v9, :cond_8d

    move v3, v6

    move v2, v7

    move v13, v8

    goto/16 :goto_2a5

    .line 104
    :cond_8d
    :try_start_8d
    iget-object v2, v11, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->button:[I

    aget v2, v2, v4
    :try_end_91
    .catchall {:try_start_8d .. :try_end_91} :catchall_12c

    move v5, v2

    .line 105
    if-eq v5, v10, :cond_c0

    .line 106
    const/16 v17, 0x2

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v18, v4

    .end local v4  # "realPointerIndex":I
    .local v18, "realPointerIndex":I
    move/from16 v4, v17

    move/from16 v17, v5

    .end local v5  # "button":I
    .local v17, "button":I
    move v5, v7

    move/from16 v19, v6

    .end local v6  # "y":I
    .local v19, "y":I
    move/from16 v20, v7

    .end local v7  # "x":I
    .local v20, "x":I
    move/from16 v7, v18

    move/from16 v21, v8

    .end local v8  # "pointerIndex":I
    .local v21, "pointerIndex":I
    move/from16 v8, v17

    move/from16 v22, v0

    move v0, v10

    .end local v0  # "pointerCount":I
    .local v22, "pointerCount":I
    move-wide v9, v15

    :try_start_af
    invoke-direct/range {v2 .. v10}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;->postTouchEvent(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;IIIIIJ)V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_b3

    goto :goto_db

    .line 117
    .end local v13  # "i":I
    .end local v22  # "pointerCount":I
    :catchall_b3
    move-exception v0

    move/from16 v5, v17

    move/from16 v4, v18

    move/from16 v3, v19

    move/from16 v2, v20

    move/from16 v13, v21

    goto/16 :goto_2b1

    .line 108
    .end local v17  # "button":I
    .end local v18  # "realPointerIndex":I
    .end local v19  # "y":I
    .end local v20  # "x":I
    .end local v21  # "pointerIndex":I
    .restart local v0  # "pointerCount":I
    .restart local v4  # "realPointerIndex":I
    .restart local v5  # "button":I
    .restart local v6  # "y":I
    .restart local v7  # "x":I
    .restart local v8  # "pointerIndex":I
    .restart local v13  # "i":I
    :cond_c0
    move/from16 v22, v0

    move/from16 v18, v4

    move/from16 v17, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    move v0, v10

    .end local v0  # "pointerCount":I
    .end local v4  # "realPointerIndex":I
    .end local v5  # "button":I
    .end local v6  # "y":I
    .end local v7  # "x":I
    .end local v8  # "pointerIndex":I
    .restart local v17  # "button":I
    .restart local v18  # "realPointerIndex":I
    .restart local v19  # "y":I
    .restart local v20  # "x":I
    .restart local v21  # "pointerIndex":I
    .restart local v22  # "pointerCount":I
    const/4 v4, 0x4

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v5, v20

    move/from16 v7, v18

    move-wide v9, v15

    :try_start_d8
    invoke-direct/range {v2 .. v10}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;->postTouchEvent(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;IIIIIJ)V

    .line 109
    :goto_db
    iget-object v2, v11, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaX:[I

    iget-object v3, v11, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchX:[I

    aget v3, v3, v18

    sub-int v7, v20, v3

    aput v7, v2, v18

    .line 110
    iget-object v2, v11, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaY:[I

    iget-object v3, v11, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchY:[I

    aget v3, v3, v18

    sub-int v6, v19, v3

    aput v6, v2, v18

    .line 111
    iget-object v2, v11, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchX:[I

    aput v20, v2, v18

    .line 112
    iget-object v2, v11, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchY:[I

    aput v19, v2, v18

    .line 113
    iget-object v2, v11, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->pressure:[F
    :try_end_f9
    .catchall {:try_start_d8 .. :try_end_f9} :catchall_11e

    move/from16 v6, v21

    .end local v21  # "pointerIndex":I
    .local v6, "pointerIndex":I
    :try_start_fb
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v3

    aput v3, v2, v18
    :try_end_101
    .catchall {:try_start_fb .. :try_end_101} :catchall_112

    move/from16 v5, v17

    .line 96
    .end local v17  # "button":I
    .restart local v5  # "button":I
    :goto_103
    add-int/lit8 v13, v13, 0x1

    move v10, v0

    move/from16 v4, v18

    move/from16 v3, v19

    move/from16 v2, v20

    move/from16 v0, v22

    const/16 v9, 0x14

    goto/16 :goto_61

    .line 117
    .end local v5  # "button":I
    .end local v13  # "i":I
    .end local v22  # "pointerCount":I
    .restart local v17  # "button":I
    :catchall_112
    move-exception v0

    move v13, v6

    move/from16 v5, v17

    move/from16 v4, v18

    move/from16 v3, v19

    move/from16 v2, v20

    goto/16 :goto_2b1

    .end local v6  # "pointerIndex":I
    .restart local v21  # "pointerIndex":I
    :catchall_11e
    move-exception v0

    move/from16 v6, v21

    move v13, v6

    move/from16 v5, v17

    move/from16 v4, v18

    move/from16 v3, v19

    move/from16 v2, v20

    .end local v21  # "pointerIndex":I
    .restart local v6  # "pointerIndex":I
    goto/16 :goto_2b1

    .end local v17  # "button":I
    .end local v18  # "realPointerIndex":I
    .end local v19  # "y":I
    .end local v20  # "x":I
    .restart local v4  # "realPointerIndex":I
    .restart local v5  # "button":I
    .local v6, "y":I
    .restart local v7  # "x":I
    .restart local v8  # "pointerIndex":I
    :catchall_12c
    move-exception v0

    move/from16 v18, v4

    move/from16 v19, v6

    move/from16 v20, v7

    move v6, v8

    move v13, v6

    move/from16 v3, v19

    move/from16 v2, v20

    .end local v4  # "realPointerIndex":I
    .end local v7  # "x":I
    .end local v8  # "pointerIndex":I
    .local v6, "pointerIndex":I
    .restart local v18  # "realPointerIndex":I
    .restart local v19  # "y":I
    .restart local v20  # "x":I
    goto/16 :goto_2b1

    .end local v18  # "realPointerIndex":I
    .end local v19  # "y":I
    .end local v20  # "x":I
    .restart local v4  # "realPointerIndex":I
    .local v6, "y":I
    .restart local v7  # "x":I
    .restart local v8  # "pointerIndex":I
    :catchall_13b
    move-exception v0

    move/from16 v19, v6

    move/from16 v20, v7

    move v6, v8

    move v13, v6

    move/from16 v3, v19

    move/from16 v2, v20

    .end local v7  # "x":I
    .end local v8  # "pointerIndex":I
    .local v6, "pointerIndex":I
    .restart local v19  # "y":I
    .restart local v20  # "x":I
    goto/16 :goto_2b1

    .end local v6  # "pointerIndex":I
    .end local v19  # "y":I
    .end local v20  # "x":I
    .restart local v3  # "y":I
    .restart local v7  # "x":I
    .restart local v8  # "pointerIndex":I
    :catchall_148
    move-exception v0

    move/from16 v20, v7

    move v6, v8

    move v13, v6

    move/from16 v2, v20

    .end local v7  # "x":I
    .end local v8  # "pointerIndex":I
    .restart local v6  # "pointerIndex":I
    .restart local v20  # "x":I
    goto/16 :goto_2b1

    .end local v6  # "pointerIndex":I
    .end local v20  # "x":I
    .restart local v2  # "x":I
    .restart local v8  # "pointerIndex":I
    :catchall_151
    move-exception v0

    move v6, v8

    move v13, v6

    .end local v8  # "pointerIndex":I
    .restart local v6  # "pointerIndex":I
    goto/16 :goto_2b1

    .line 96
    .restart local v0  # "pointerCount":I
    .restart local v13  # "i":I
    :cond_156
    move/from16 v22, v0

    .end local v0  # "pointerCount":I
    .restart local v22  # "pointerCount":I
    move v13, v6

    goto/16 :goto_2a5

    .line 64
    .end local v6  # "pointerIndex":I
    .end local v22  # "pointerCount":I
    .local v13, "pointerIndex":I
    :pswitch_15b  #0x1, 0x4, 0x6
    move/from16 v18, v0

    move v0, v10

    :try_start_15e
    invoke-virtual {v11, v14}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->lookUpPointerIndex(I)I

    move-result v6
    :try_end_162
    .catchall {:try_start_15e .. :try_end_162} :catchall_2b0

    move v9, v6

    .line 65
    .end local v4  # "realPointerIndex":I
    .local v9, "realPointerIndex":I
    if-ne v9, v0, :cond_166

    goto :goto_16a

    .line 66
    :cond_166
    const/16 v4, 0x14

    if-lt v9, v4, :cond_16d

    .line 117
    :goto_16a
    move v4, v9

    goto/16 :goto_2a5

    .line 67
    :cond_16d
    :try_start_16d
    iget-object v4, v11, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->realId:[I

    aput v0, v4, v9

    .line 68
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4
    :try_end_175
    .catchall {:try_start_16d .. :try_end_175} :catchall_1ec

    float-to-int v10, v4

    .line 69
    .end local v2  # "x":I
    .local v10, "x":I
    :try_start_176
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2
    :try_end_17a
    .catchall {:try_start_176 .. :try_end_17a} :catchall_1e1

    float-to-int v8, v2

    .line 70
    .end local v3  # "y":I
    .local v8, "y":I
    :try_start_17b
    iget-object v2, v11, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->button:[I

    aget v2, v2, v9
    :try_end_17f
    .catchall {:try_start_17b .. :try_end_17f} :catchall_1d2

    move v7, v2

    .line 71
    .end local v5  # "button":I
    .local v7, "button":I
    if-eq v7, v0, :cond_199

    const/4 v4, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move v5, v10

    move v6, v8

    move/from16 v19, v7

    .end local v7  # "button":I
    .local v19, "button":I
    move v7, v9

    move/from16 v20, v8

    .end local v8  # "y":I
    .local v20, "y":I
    move/from16 v8, v19

    move/from16 v21, v9

    move/from16 v22, v10

    .end local v9  # "realPointerIndex":I
    .end local v10  # "x":I
    .local v21, "realPointerIndex":I
    .local v22, "x":I
    move-wide v9, v15

    :try_start_195
    invoke-direct/range {v2 .. v10}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;->postTouchEvent(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;IIIIIJ)V

    goto :goto_1a1

    .end local v19  # "button":I
    .end local v20  # "y":I
    .end local v21  # "realPointerIndex":I
    .end local v22  # "x":I
    .restart local v7  # "button":I
    .restart local v8  # "y":I
    .restart local v9  # "realPointerIndex":I
    .restart local v10  # "x":I
    :cond_199
    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    .line 72
    .end local v7  # "button":I
    .end local v8  # "y":I
    .end local v9  # "realPointerIndex":I
    .end local v10  # "x":I
    .restart local v19  # "button":I
    .restart local v20  # "y":I
    .restart local v21  # "realPointerIndex":I
    .restart local v22  # "x":I
    :goto_1a1
    iget-object v0, v11, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchX:[I

    aput v22, v0, v21

    .line 73
    iget-object v0, v11, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchY:[I

    aput v20, v0, v21

    .line 74
    iget-object v0, v11, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaX:[I

    aput v17, v0, v21

    .line 75
    iget-object v0, v11, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaY:[I

    aput v17, v0, v21

    .line 76
    iget-object v0, v11, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touched:[Z

    aput-boolean v17, v0, v21

    .line 77
    iget-object v0, v11, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->button:[I

    aput v17, v0, v21

    .line 78
    iget-object v0, v11, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->pressure:[F

    aput v18, v0, v21
    :try_end_1bd
    .catchall {:try_start_195 .. :try_end_1bd} :catchall_1c7

    .line 79
    move/from16 v5, v19

    move/from16 v3, v20

    move/from16 v4, v21

    move/from16 v2, v22

    goto/16 :goto_2a5

    .line 117
    :catchall_1c7
    move-exception v0

    move/from16 v5, v19

    move/from16 v3, v20

    move/from16 v4, v21

    move/from16 v2, v22

    goto/16 :goto_2b1

    .end local v19  # "button":I
    .end local v20  # "y":I
    .end local v21  # "realPointerIndex":I
    .end local v22  # "x":I
    .restart local v5  # "button":I
    .restart local v8  # "y":I
    .restart local v9  # "realPointerIndex":I
    .restart local v10  # "x":I
    :catchall_1d2
    move-exception v0

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v3, v20

    move/from16 v4, v21

    move/from16 v2, v22

    .end local v8  # "y":I
    .end local v9  # "realPointerIndex":I
    .end local v10  # "x":I
    .restart local v20  # "y":I
    .restart local v21  # "realPointerIndex":I
    .restart local v22  # "x":I
    goto/16 :goto_2b1

    .end local v20  # "y":I
    .end local v21  # "realPointerIndex":I
    .end local v22  # "x":I
    .restart local v3  # "y":I
    .restart local v9  # "realPointerIndex":I
    .restart local v10  # "x":I
    :catchall_1e1
    move-exception v0

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v4, v21

    move/from16 v2, v22

    .end local v9  # "realPointerIndex":I
    .end local v10  # "x":I
    .restart local v21  # "realPointerIndex":I
    .restart local v22  # "x":I
    goto/16 :goto_2b1

    .end local v21  # "realPointerIndex":I
    .end local v22  # "x":I
    .restart local v2  # "x":I
    .restart local v9  # "realPointerIndex":I
    :catchall_1ec
    move-exception v0

    move/from16 v21, v9

    move/from16 v4, v21

    .end local v9  # "realPointerIndex":I
    .restart local v21  # "realPointerIndex":I
    goto/16 :goto_2b1

    .line 45
    .end local v21  # "realPointerIndex":I
    .restart local v4  # "realPointerIndex":I
    :pswitch_1f3  #0x0, 0x5
    move v0, v10

    :try_start_1f4
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->getFreePointerIndex()I

    move-result v6
    :try_end_1f8
    .catchall {:try_start_1f4 .. :try_end_1f8} :catchall_2b0

    move v9, v6

    .line 46
    .end local v4  # "realPointerIndex":I
    .restart local v9  # "realPointerIndex":I
    const/16 v4, 0x14

    if-lt v9, v4, :cond_200

    move v4, v9

    goto/16 :goto_2a5

    .line 47
    :cond_200
    :try_start_200
    iget-object v4, v11, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->realId:[I

    aput v14, v4, v9

    .line 48
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4
    :try_end_208
    .catchall {:try_start_200 .. :try_end_208} :catchall_29f

    float-to-int v10, v4

    .line 49
    .end local v2  # "x":I
    .restart local v10  # "x":I
    :try_start_209
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2
    :try_end_20d
    .catchall {:try_start_209 .. :try_end_20d} :catchall_295

    float-to-int v8, v2

    .line 50
    .end local v3  # "y":I
    .restart local v8  # "y":I
    :try_start_20e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    move-object/from16 v7, p0

    invoke-direct {v7, v2}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;->toGdxButton(I)I

    move-result v2
    :try_end_218
    .catchall {:try_start_20e .. :try_end_218} :catchall_287

    move v6, v2

    .line 51
    .end local v5  # "button":I
    .local v6, "button":I
    if-eq v6, v0, :cond_23d

    const/4 v4, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move v5, v10

    move/from16 v18, v6

    .end local v6  # "button":I
    .local v18, "button":I
    move v6, v8

    move v7, v9

    move/from16 v19, v8

    .end local v8  # "y":I
    .local v19, "y":I
    move/from16 v8, v18

    move/from16 v20, v9

    move/from16 v21, v10

    .end local v9  # "realPointerIndex":I
    .end local v10  # "x":I
    .local v20, "realPointerIndex":I
    .local v21, "x":I
    move-wide v9, v15

    :try_start_22e
    invoke-direct/range {v2 .. v10}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;->postTouchEvent(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;IIIIIJ)V
    :try_end_231
    .catchall {:try_start_22e .. :try_end_231} :catchall_232

    goto :goto_245

    .line 117
    :catchall_232
    move-exception v0

    move/from16 v5, v18

    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v2, v21

    goto/16 :goto_2b1

    .line 51
    .end local v18  # "button":I
    .end local v19  # "y":I
    .end local v20  # "realPointerIndex":I
    .end local v21  # "x":I
    .restart local v6  # "button":I
    .restart local v8  # "y":I
    .restart local v9  # "realPointerIndex":I
    .restart local v10  # "x":I
    :cond_23d
    move/from16 v18, v6

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    .line 52
    .end local v6  # "button":I
    .end local v8  # "y":I
    .end local v9  # "realPointerIndex":I
    .end local v10  # "x":I
    .restart local v18  # "button":I
    .restart local v19  # "y":I
    .restart local v20  # "realPointerIndex":I
    .restart local v21  # "x":I
    :goto_245
    :try_start_245
    iget-object v2, v11, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchX:[I

    aput v21, v2, v20

    .line 53
    iget-object v2, v11, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchY:[I

    aput v19, v2, v20

    .line 54
    iget-object v2, v11, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaX:[I

    aput v17, v2, v20

    .line 55
    iget-object v2, v11, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaY:[I

    aput v17, v2, v20

    .line 56
    iget-object v2, v11, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touched:[Z
    :try_end_257
    .catchall {:try_start_245 .. :try_end_257} :catchall_27c

    move/from16 v3, v18

    .end local v18  # "button":I
    .local v3, "button":I
    if-eq v3, v0, :cond_25d

    const/16 v17, 0x1

    :cond_25d
    :try_start_25d
    aput-boolean v17, v2, v20

    .line 57
    iget-object v0, v11, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->button:[I

    aput v3, v0, v20

    .line 58
    iget-object v0, v11, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->pressure:[F

    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v2

    aput v2, v0, v20
    :try_end_26b
    .catchall {:try_start_25d .. :try_end_26b} :catchall_273

    .line 59
    move v5, v3

    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v2, v21

    goto :goto_2a5

    .line 117
    :catchall_273
    move-exception v0

    move v5, v3

    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v2, v21

    goto :goto_2b1

    .end local v3  # "button":I
    .restart local v18  # "button":I
    :catchall_27c
    move-exception v0

    move/from16 v3, v18

    move v5, v3

    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v2, v21

    .end local v18  # "button":I
    .restart local v3  # "button":I
    goto :goto_2b1

    .end local v3  # "button":I
    .end local v19  # "y":I
    .end local v20  # "realPointerIndex":I
    .end local v21  # "x":I
    .restart local v5  # "button":I
    .restart local v8  # "y":I
    .restart local v9  # "realPointerIndex":I
    .restart local v10  # "x":I
    :catchall_287
    move-exception v0

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v2, v21

    .end local v8  # "y":I
    .end local v9  # "realPointerIndex":I
    .end local v10  # "x":I
    .restart local v19  # "y":I
    .restart local v20  # "realPointerIndex":I
    .restart local v21  # "x":I
    goto :goto_2b1

    .end local v19  # "y":I
    .end local v20  # "realPointerIndex":I
    .end local v21  # "x":I
    .local v3, "y":I
    .restart local v9  # "realPointerIndex":I
    .restart local v10  # "x":I
    :catchall_295
    move-exception v0

    move/from16 v20, v9

    move/from16 v21, v10

    move/from16 v4, v20

    move/from16 v2, v21

    .end local v9  # "realPointerIndex":I
    .end local v10  # "x":I
    .restart local v20  # "realPointerIndex":I
    .restart local v21  # "x":I
    goto :goto_2b1

    .end local v20  # "realPointerIndex":I
    .end local v21  # "x":I
    .restart local v2  # "x":I
    .restart local v9  # "realPointerIndex":I
    :catchall_29f
    move-exception v0

    move/from16 v20, v9

    move/from16 v4, v20

    .end local v9  # "realPointerIndex":I
    .restart local v20  # "realPointerIndex":I
    goto :goto_2b1

    .end local v20  # "realPointerIndex":I
    .restart local v4  # "realPointerIndex":I
    :goto_2a5
    :try_start_2a5
    monitor-exit p2
    :try_end_2a6
    .catchall {:try_start_2a5 .. :try_end_2a6} :catchall_2b0

    .line 118
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    .line 119
    return-void

    .line 117
    :catchall_2b0
    move-exception v0

    :goto_2b1
    :try_start_2b1
    monitor-exit p2
    :try_end_2b2
    .catchall {:try_start_2b1 .. :try_end_2b2} :catchall_2b0

    throw v0

    nop

    :pswitch_data_2b4
    .packed-switch 0x0
        :pswitch_1f3  #00000000
        :pswitch_15b  #00000001
        :pswitch_57  #00000002
        :pswitch_2c  #00000003
        :pswitch_15b  #00000004
        :pswitch_1f3  #00000005
        :pswitch_15b  #00000006
    .end packed-switch
.end method

.method public supportsMultitouch(Landroid/content/Context;)Z
    .registers 4
    .param p1, "activity"  # Landroid/content/Context;

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.touchscreen.multitouch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
