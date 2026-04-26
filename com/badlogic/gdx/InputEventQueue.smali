.class public Lcom/badlogic/gdx/InputEventQueue;
.super Ljava/lang/Object;
.source "InputEventQueue.java"


# static fields
.field private static final KEY_DOWN:I = 0x0

.field private static final KEY_TYPED:I = 0x2

.field private static final KEY_UP:I = 0x1

.field private static final MOUSE_MOVED:I = 0x6

.field private static final SCROLLED:I = 0x7

.field private static final SKIP:I = -0x1

.field private static final TOUCH_DOWN:I = 0x3

.field private static final TOUCH_DRAGGED:I = 0x5

.field private static final TOUCH_UP:I = 0x4


# instance fields
.field private currentEventTime:J

.field private final processingQueue:Lcom/badlogic/gdx/utils/IntArray;

.field private final queue:Lcom/badlogic/gdx/utils/IntArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    .line 37
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->processingQueue:Lcom/badlogic/gdx/utils/IntArray;

    return-void
.end method

.method private declared-synchronized next(II)I
    .registers 7
    .param p1, "nextType"  # I
    .param p2, "i"  # I

    monitor-enter p0

    .line 89
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 90
    .local v0, "q":[I
    iget-object v1, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .local v1, "n":I
    :goto_9
    if-ge p2, v1, :cond_3a

    .line 91
    aget v2, v0, p2
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_3d

    .line 92
    .local v2, "type":I
    if-ne v2, p1, :cond_11

    monitor-exit p0

    return p2

    .line 93
    :cond_11
    add-int/lit8 p2, p2, 0x3

    .line 94
    packed-switch v2, :pswitch_data_40

    .line 123
    .end local p0  # "this":Lcom/badlogic/gdx/InputEventQueue;
    :try_start_16
    new-instance v3, Ljava/lang/RuntimeException;

    goto :goto_36

    .line 120
    .restart local p0  # "this":Lcom/badlogic/gdx/InputEventQueue;
    :pswitch_19  #0x7
    add-int/lit8 p2, p2, 0x2

    .line 121
    goto :goto_35

    .line 117
    :pswitch_1c  #0x6
    add-int/lit8 p2, p2, 0x2

    .line 118
    goto :goto_35

    .line 114
    :pswitch_1f  #0x5
    add-int/lit8 p2, p2, 0x3

    .line 115
    goto :goto_35

    .line 111
    :pswitch_22  #0x4
    add-int/lit8 p2, p2, 0x4

    .line 112
    goto :goto_35

    .line 108
    :pswitch_25  #0x3
    add-int/lit8 p2, p2, 0x4

    .line 109
    goto :goto_35

    .line 105
    :pswitch_28  #0x2
    add-int/lit8 p2, p2, 0x1

    .line 106
    goto :goto_35

    .line 102
    :pswitch_2b  #0x1
    add-int/lit8 p2, p2, 0x1

    .line 103
    goto :goto_35

    .line 99
    :pswitch_2e  #0x0
    add-int/lit8 p2, p2, 0x1

    .line 100
    goto :goto_35

    .line 96
    :pswitch_31  #0xffffffff
    aget v3, v0, p2

    add-int/2addr p2, v3

    .line 97
    nop

    .line 125
    .end local v2  # "type":I
    :goto_35
    goto :goto_9

    .line 123
    .end local p0  # "this":Lcom/badlogic/gdx/InputEventQueue;
    .restart local v2  # "type":I
    :goto_36
    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    throw v3
    :try_end_3a
    .catchall {:try_start_16 .. :try_end_3a} :catchall_3d

    .line 126
    .end local v1  # "n":I
    .end local v2  # "type":I
    :cond_3a
    monitor-exit p0

    const/4 v1, -0x1

    return v1

    .line 88
    .end local v0  # "q":[I
    .end local p1  # "nextType":I
    .end local p2  # "i":I
    :catchall_3d
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_40
    .packed-switch -0x1
        :pswitch_31  #ffffffff
        :pswitch_2e  #00000000
        :pswitch_2b  #00000001
        :pswitch_28  #00000002
        :pswitch_25  #00000003
        :pswitch_22  #00000004
        :pswitch_1f  #00000005
        :pswitch_1c  #00000006
        :pswitch_19  #00000007
    .end packed-switch
.end method

.method private queueTime(J)V
    .registers 6
    .param p1, "time"  # J

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    const/16 v1, 0x20

    shr-long v1, p1, v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 131
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 132
    return-void
.end method


# virtual methods
.method public drain(Lcom/badlogic/gdx/InputProcessor;)V
    .registers 13
    .param p1, "processor"  # Lcom/badlogic/gdx/InputProcessor;

    .line 41
    monitor-enter p0

    .line 42
    if-nez p1, :cond_a

    .line 43
    :try_start_3
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    .line 44
    monitor-exit p0

    return-void

    .line 46
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->processingQueue:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v1, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->addAll(Lcom/badlogic/gdx/utils/IntArray;)V

    .line 47
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    .line 48
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_cc

    .line 49
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->processingQueue:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 50
    .local v0, "q":[I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/InputEventQueue;->processingQueue:Lcom/badlogic/gdx/utils/IntArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .local v2, "n":I
    :goto_20
    if-ge v1, v2, :cond_c6

    .line 51
    add-int/lit8 v3, v1, 0x1

    .end local v1  # "i":I
    .local v3, "i":I
    aget v1, v0, v1

    .line 52
    .local v1, "type":I
    add-int/lit8 v4, v3, 0x1

    .end local v3  # "i":I
    .local v4, "i":I
    aget v3, v0, v3

    int-to-long v5, v3

    const/16 v3, 0x20

    shl-long/2addr v5, v3

    add-int/lit8 v3, v4, 0x1

    .end local v4  # "i":I
    .restart local v3  # "i":I
    aget v4, v0, v4

    int-to-long v7, v4

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    or-long v4, v5, v7

    iput-wide v4, p0, Lcom/badlogic/gdx/InputEventQueue;->currentEventTime:J

    .line 53
    packed-switch v1, :pswitch_data_d0

    .line 82
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4

    .line 79
    :pswitch_46  #0x7
    add-int/lit8 v4, v3, 0x1

    .end local v3  # "i":I
    .restart local v4  # "i":I
    aget v3, v0, v3

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->intBitsToFloat(I)F

    move-result v3

    add-int/lit8 v5, v4, 0x1

    .end local v4  # "i":I
    .local v5, "i":I
    aget v4, v0, v4

    invoke-static {v4}, Lcom/badlogic/gdx/utils/NumberUtils;->intBitsToFloat(I)F

    move-result v4

    invoke-interface {p1, v3, v4}, Lcom/badlogic/gdx/InputProcessor;->scrolled(FF)Z

    .line 80
    move v1, v5

    goto/16 :goto_c4

    .line 76
    .end local v5  # "i":I
    .restart local v3  # "i":I
    :pswitch_5c  #0x6
    add-int/lit8 v4, v3, 0x1

    .end local v3  # "i":I
    .restart local v4  # "i":I
    aget v3, v0, v3

    add-int/lit8 v5, v4, 0x1

    .end local v4  # "i":I
    .restart local v5  # "i":I
    aget v4, v0, v4

    invoke-interface {p1, v3, v4}, Lcom/badlogic/gdx/InputProcessor;->mouseMoved(II)Z

    .line 77
    move v1, v5

    goto :goto_c4

    .line 73
    .end local v5  # "i":I
    .restart local v3  # "i":I
    :pswitch_69  #0x5
    add-int/lit8 v4, v3, 0x1

    .end local v3  # "i":I
    .restart local v4  # "i":I
    aget v3, v0, v3

    add-int/lit8 v5, v4, 0x1

    .end local v4  # "i":I
    .restart local v5  # "i":I
    aget v4, v0, v4

    add-int/lit8 v6, v5, 0x1

    .end local v5  # "i":I
    .local v6, "i":I
    aget v5, v0, v5

    invoke-interface {p1, v3, v4, v5}, Lcom/badlogic/gdx/InputProcessor;->touchDragged(III)Z

    .line 74
    move v1, v6

    goto :goto_c4

    .line 70
    .end local v6  # "i":I
    .restart local v3  # "i":I
    :pswitch_7a  #0x4
    add-int/lit8 v4, v3, 0x1

    .end local v3  # "i":I
    .restart local v4  # "i":I
    aget v3, v0, v3

    add-int/lit8 v5, v4, 0x1

    .end local v4  # "i":I
    .restart local v5  # "i":I
    aget v4, v0, v4

    add-int/lit8 v6, v5, 0x1

    .end local v5  # "i":I
    .restart local v6  # "i":I
    aget v5, v0, v5

    add-int/lit8 v7, v6, 0x1

    .end local v6  # "i":I
    .local v7, "i":I
    aget v6, v0, v6

    invoke-interface {p1, v3, v4, v5, v6}, Lcom/badlogic/gdx/InputProcessor;->touchUp(IIII)Z

    .line 71
    move v1, v7

    goto :goto_c4

    .line 67
    .end local v7  # "i":I
    .restart local v3  # "i":I
    :pswitch_8f  #0x3
    add-int/lit8 v4, v3, 0x1

    .end local v3  # "i":I
    .restart local v4  # "i":I
    aget v3, v0, v3

    add-int/lit8 v5, v4, 0x1

    .end local v4  # "i":I
    .restart local v5  # "i":I
    aget v4, v0, v4

    add-int/lit8 v6, v5, 0x1

    .end local v5  # "i":I
    .restart local v6  # "i":I
    aget v5, v0, v5

    add-int/lit8 v7, v6, 0x1

    .end local v6  # "i":I
    .restart local v7  # "i":I
    aget v6, v0, v6

    invoke-interface {p1, v3, v4, v5, v6}, Lcom/badlogic/gdx/InputProcessor;->touchDown(IIII)Z

    .line 68
    move v1, v7

    goto :goto_c4

    .line 64
    .end local v7  # "i":I
    .restart local v3  # "i":I
    :pswitch_a4  #0x2
    add-int/lit8 v4, v3, 0x1

    .end local v3  # "i":I
    .restart local v4  # "i":I
    aget v3, v0, v3

    int-to-char v3, v3

    invoke-interface {p1, v3}, Lcom/badlogic/gdx/InputProcessor;->keyTyped(C)Z

    .line 65
    move v1, v4

    goto :goto_c4

    .line 61
    .end local v4  # "i":I
    .restart local v3  # "i":I
    :pswitch_ae  #0x1
    add-int/lit8 v4, v3, 0x1

    .end local v3  # "i":I
    .restart local v4  # "i":I
    aget v3, v0, v3

    invoke-interface {p1, v3}, Lcom/badlogic/gdx/InputProcessor;->keyUp(I)Z

    .line 62
    move v1, v4

    goto :goto_c4

    .line 58
    .end local v4  # "i":I
    .restart local v3  # "i":I
    :pswitch_b7  #0x0
    add-int/lit8 v4, v3, 0x1

    .end local v3  # "i":I
    .restart local v4  # "i":I
    aget v3, v0, v3

    invoke-interface {p1, v3}, Lcom/badlogic/gdx/InputProcessor;->keyDown(I)Z

    .line 59
    move v1, v4

    goto :goto_c4

    .line 55
    .end local v4  # "i":I
    .restart local v3  # "i":I
    :pswitch_c0  #0xffffffff
    aget v4, v0, v3

    add-int/2addr v3, v4

    .line 56
    move v1, v3

    .line 84
    .end local v3  # "i":I
    .local v1, "i":I
    :goto_c4
    goto/16 :goto_20

    .line 85
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_c6
    iget-object v1, p0, Lcom/badlogic/gdx/InputEventQueue;->processingQueue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    .line 86
    return-void

    .line 48
    .end local v0  # "q":[I
    :catchall_cc
    move-exception v0

    :try_start_cd
    monitor-exit p0
    :try_end_ce
    .catchall {:try_start_cd .. :try_end_ce} :catchall_cc

    throw v0

    nop

    :pswitch_data_d0
    .packed-switch -0x1
        :pswitch_c0  #ffffffff
        :pswitch_b7  #00000000
        :pswitch_ae  #00000001
        :pswitch_a4  #00000002
        :pswitch_8f  #00000003
        :pswitch_7a  #00000004
        :pswitch_69  #00000005
        :pswitch_5c  #00000006
        :pswitch_46  #00000007
    .end packed-switch
.end method

.method public getCurrentEventTime()J
    .registers 3

    .line 213
    iget-wide v0, p0, Lcom/badlogic/gdx/InputEventQueue;->currentEventTime:J

    return-wide v0
.end method

.method public declared-synchronized keyDown(IJ)Z
    .registers 6
    .param p1, "keycode"  # I
    .param p2, "time"  # J

    monitor-enter p0

    .line 135
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 136
    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/InputEventQueue;->queueTime(J)V

    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 138
    monitor-exit p0

    return v1

    .line 134
    .end local p0  # "this":Lcom/badlogic/gdx/InputEventQueue;
    .end local p1  # "keycode":I
    .end local p2  # "time":J
    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized keyTyped(CJ)Z
    .registers 6
    .param p1, "character"  # C
    .param p2, "time"  # J

    monitor-enter p0

    .line 149
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 150
    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/InputEventQueue;->queueTime(J)V

    .line 151
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    .line 152
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 148
    .end local p0  # "this":Lcom/badlogic/gdx/InputEventQueue;
    .end local p1  # "character":C
    .end local p2  # "time":J
    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized keyUp(IJ)Z
    .registers 6
    .param p1, "keycode"  # I
    .param p2, "time"  # J

    monitor-enter p0

    .line 142
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 143
    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/InputEventQueue;->queueTime(J)V

    .line 144
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    .line 145
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 141
    .end local p0  # "this":Lcom/badlogic/gdx/InputEventQueue;
    .end local p1  # "keycode":I
    .end local p2  # "time":J
    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized mouseMoved(IIJ)Z
    .registers 11
    .param p1, "screenX"  # I
    .param p2, "screenY"  # I
    .param p3, "time"  # J

    monitor-enter p0

    .line 193
    const/4 v0, 0x0

    const/4 v1, 0x6

    :try_start_3
    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/InputEventQueue;->next(II)I

    move-result v2

    .local v2, "i":I
    :goto_7
    if-ltz v2, :cond_1f

    .line 194
    iget-object v3, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Lcom/badlogic/gdx/utils/IntArray;->set(II)V

    .line 195
    iget-object v3, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    add-int/lit8 v4, v2, 0x3

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/utils/IntArray;->set(II)V

    .line 193
    add-int/lit8 v3, v2, 0x5

    invoke-direct {p0, v1, v3}, Lcom/badlogic/gdx/InputEventQueue;->next(II)I

    move-result v3

    move v2, v3

    goto :goto_7

    .line 197
    .end local v2  # "i":I
    .end local p0  # "this":Lcom/badlogic/gdx/InputEventQueue;
    :cond_1f
    iget-object v2, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 198
    invoke-direct {p0, p3, p4}, Lcom/badlogic/gdx/InputEventQueue;->queueTime(J)V

    .line 199
    iget-object v1, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 200
    iget-object v1, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_33

    .line 201
    monitor-exit p0

    return v0

    .line 192
    .end local p1  # "screenX":I
    .end local p2  # "screenY":I
    .end local p3  # "time":J
    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized scrolled(FFJ)Z
    .registers 7
    .param p1, "amountX"  # F
    .param p2, "amountY"  # F
    .param p3, "time"  # J

    monitor-enter p0

    .line 205
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 206
    invoke-direct {p0, p3, p4}, Lcom/badlogic/gdx/InputEventQueue;->queueTime(J)V

    .line 207
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-static {p1}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 208
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-static {p2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1f

    .line 209
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 204
    .end local p0  # "this":Lcom/badlogic/gdx/InputEventQueue;
    .end local p1  # "amountX":F
    .end local p2  # "amountY":F
    .end local p3  # "time":J
    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized touchDown(IIIIJ)Z
    .registers 9
    .param p1, "screenX"  # I
    .param p2, "screenY"  # I
    .param p3, "pointer"  # I
    .param p4, "button"  # I
    .param p5, "time"  # J

    monitor-enter p0

    .line 156
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 157
    invoke-direct {p0, p5, p6}, Lcom/badlogic/gdx/InputEventQueue;->queueTime(J)V

    .line 158
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 159
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 160
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 161
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_21

    .line 162
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 155
    .end local p0  # "this":Lcom/badlogic/gdx/InputEventQueue;
    .end local p1  # "screenX":I
    .end local p2  # "screenY":I
    .end local p3  # "pointer":I
    .end local p4  # "button":I
    .end local p5  # "time":J
    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized touchDragged(IIIJ)Z
    .registers 12
    .param p1, "screenX"  # I
    .param p2, "screenY"  # I
    .param p3, "pointer"  # I
    .param p4, "time"  # J

    monitor-enter p0

    .line 177
    const/4 v0, 0x0

    const/4 v1, 0x5

    :try_start_3
    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/InputEventQueue;->next(II)I

    move-result v2

    .local v2, "i":I
    :goto_7
    if-ltz v2, :cond_29

    .line 178
    iget-object v3, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    add-int/lit8 v4, v2, 0x5

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v3

    if-ne v3, p3, :cond_21

    .line 179
    iget-object v3, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Lcom/badlogic/gdx/utils/IntArray;->set(II)V

    .line 180
    iget-object v3, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    add-int/lit8 v4, v2, 0x3

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/utils/IntArray;->set(II)V

    .line 177
    .end local p0  # "this":Lcom/badlogic/gdx/InputEventQueue;
    :cond_21
    add-int/lit8 v3, v2, 0x6

    invoke-direct {p0, v1, v3}, Lcom/badlogic/gdx/InputEventQueue;->next(II)I

    move-result v3

    move v2, v3

    goto :goto_7

    .line 183
    .end local v2  # "i":I
    :cond_29
    iget-object v2, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 184
    invoke-direct {p0, p4, p5}, Lcom/badlogic/gdx/InputEventQueue;->queueTime(J)V

    .line 185
    iget-object v1, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 186
    iget-object v1, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 187
    iget-object v1, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v1, p3}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_42

    .line 188
    monitor-exit p0

    return v0

    .line 176
    .end local p1  # "screenX":I
    .end local p2  # "screenY":I
    .end local p3  # "pointer":I
    .end local p4  # "time":J
    :catchall_42
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized touchUp(IIIIJ)Z
    .registers 9
    .param p1, "screenX"  # I
    .param p2, "screenY"  # I
    .param p3, "pointer"  # I
    .param p4, "button"  # I
    .param p5, "time"  # J

    monitor-enter p0

    .line 166
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 167
    invoke-direct {p0, p5, p6}, Lcom/badlogic/gdx/InputEventQueue;->queueTime(J)V

    .line 168
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 169
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 170
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 171
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_21

    .line 172
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 165
    .end local p0  # "this":Lcom/badlogic/gdx/InputEventQueue;
    .end local p1  # "screenX":I
    .end local p2  # "screenY":I
    .end local p3  # "pointer":I
    .end local p4  # "button":I
    .end local p5  # "time":J
    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method
