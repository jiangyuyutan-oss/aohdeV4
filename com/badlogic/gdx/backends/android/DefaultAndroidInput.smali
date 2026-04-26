.class public Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;
.super Lcom/badlogic/gdx/AbstractInput;
.source "DefaultAndroidInput.java"

# interfaces
.implements Lcom/badlogic/gdx/backends/android/AndroidInput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;,
        Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;,
        Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;
    }
.end annotation


# static fields
.field public static final NUM_TOUCHES:I = 0x14


# instance fields
.field final R:[F

.field public accelerometerAvailable:Z

.field private accelerometerListener:Landroid/hardware/SensorEventListener;

.field protected final accelerometerValues:[F

.field final app:Lcom/badlogic/gdx/Application;

.field private azimuth:F

.field button:[I

.field private compassAvailable:Z

.field private compassListener:Landroid/hardware/SensorEventListener;

.field private final config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

.field final context:Landroid/content/Context;

.field private currentEventTimeStamp:J

.field deltaX:[I

.field deltaY:[I

.field private final genericMotionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View$OnGenericMotionListener;",
            ">;"
        }
    .end annotation
.end field

.field public gyroscopeAvailable:Z

.field private gyroscopeListener:Landroid/hardware/SensorEventListener;

.field protected final gyroscopeValues:[F

.field private handle:Landroid/os/Handler;

.field final hasMultitouch:Z

.field private justPressedButtons:[Z

.field private justTouched:Z

.field keyEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field keyListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View$OnKeyListener;",
            ">;"
        }
    .end annotation
.end field

.field keyboardAvailable:Z

.field protected final magneticFieldValues:[F

.field private manager:Landroid/hardware/SensorManager;

.field private final mouseHandler:Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;

.field protected final nativeOrientation:Lcom/badlogic/gdx/Input$Orientation;

.field final orientation:[F

.field private pitch:F

.field pressure:[F

.field private processor:Lcom/badlogic/gdx/InputProcessor;

.field realId:[I

.field requestFocus:Z

.field private roll:F

.field private rotationVectorAvailable:Z

.field private rotationVectorListener:Landroid/hardware/SensorEventListener;

.field protected final rotationVectorValues:[F

.field private sleepTime:I

.field touchEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected final touchHandler:Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;

.field touchX:[I

.field touchY:[I

.field touched:[Z

.field usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field usedTouchEvents:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected final vibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/Application;Landroid/content/Context;Ljava/lang/Object;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V
    .registers 10
    .param p1, "activity"  # Lcom/badlogic/gdx/Application;
    .param p2, "context"  # Landroid/content/Context;
    .param p3, "view"  # Ljava/lang/Object;
    .param p4, "config"  # Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    .line 149
    invoke-direct {p0}, Lcom/badlogic/gdx/AbstractInput;-><init>()V

    .line 89
    new-instance v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$1;

    const/16 v1, 0x10

    const/16 v2, 0x3e8

    invoke-direct {v0, p0, v1, v2}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$1;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;II)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;

    .line 95
    new-instance v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$2;

    invoke-direct {v0, p0, v1, v2}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$2;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;II)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->usedTouchEvents:Lcom/badlogic/gdx/utils/Pool;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->keyListeners:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->keyEvents:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchEvents:Ljava/util/ArrayList;

    .line 106
    const/16 v0, 0x14

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchX:[I

    .line 107
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchY:[I

    .line 108
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaX:[I

    .line 109
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaY:[I

    .line 110
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touched:[Z

    .line 111
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->button:[I

    .line 112
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->realId:[I

    .line 113
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->pressure:[F

    .line 115
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->justPressedButtons:[Z

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerAvailable:Z

    .line 118
    const/4 v1, 0x3

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerValues:[F

    .line 119
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->gyroscopeAvailable:Z

    .line 120
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->gyroscopeValues:[F

    .line 125
    iput v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->sleepTime:I

    .line 127
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->compassAvailable:Z

    .line 128
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorAvailable:Z

    .line 130
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->magneticFieldValues:[F

    .line 131
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorValues:[F

    .line 132
    const/4 v2, 0x0

    iput v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->azimuth:F

    .line 133
    iput v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->pitch:F

    .line 134
    iput v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->roll:F

    .line 135
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->justTouched:Z

    .line 139
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->currentEventTimeStamp:J

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->genericMotionListeners:Ljava/util/ArrayList;

    .line 464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->requestFocus:Z

    .line 689
    const/16 v2, 0x9

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->R:[F

    .line 690
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->orientation:[F

    .line 152
    instance-of v1, p3, Landroid/view/View;

    if-eqz v1, :cond_a6

    .line 153
    move-object v1, p3

    check-cast v1, Landroid/view/View;

    .line 154
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 155
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 156
    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 157
    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 158
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 159
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 161
    .end local v1  # "v":Landroid/view/View;
    :cond_a6
    iput-object p4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    .line 162
    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;

    invoke-direct {v1}, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->mouseHandler:Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;

    .line 164
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b0
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->realId:[I

    array-length v2, v2

    if-ge v1, v2, :cond_bd

    .line 165
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->realId:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_b0

    .line 166
    .end local v1  # "i":I
    :cond_bd
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->handle:Landroid/os/Handler;

    .line 167
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->app:Lcom/badlogic/gdx/Application;

    .line 168
    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->context:Landroid/content/Context;

    .line 169
    iget v1, p4, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->touchSleepTime:I

    iput v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->sleepTime:I

    .line 170
    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;

    invoke-direct {v1}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchHandler:Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;

    .line 171
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchHandler:Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;->supportsMultitouch(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->hasMultitouch:Z

    .line 173
    const-string v1, "vibrator"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->vibrator:Landroid/os/Vibrator;

    .line 175
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->getRotation()I

    move-result v1

    .line 176
    .local v1, "rotation":I
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v2}, Lcom/badlogic/gdx/Application;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v2

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getDisplayMode()Lcom/badlogic/gdx/Graphics$DisplayMode;

    move-result-object v2

    .line 177
    .local v2, "mode":Lcom/badlogic/gdx/Graphics$DisplayMode;
    if-eqz v1, :cond_f9

    const/16 v3, 0xb4

    if-ne v1, v3, :cond_ff

    :cond_f9
    iget v3, v2, Lcom/badlogic/gdx/Graphics$DisplayMode;->width:I

    iget v4, v2, Lcom/badlogic/gdx/Graphics$DisplayMode;->height:I

    if-ge v3, v4, :cond_113

    :cond_ff
    const/16 v3, 0x5a

    if-eq v1, v3, :cond_107

    const/16 v3, 0x10e

    if-ne v1, v3, :cond_10e

    :cond_107
    iget v3, v2, Lcom/badlogic/gdx/Graphics$DisplayMode;->width:I

    iget v4, v2, Lcom/badlogic/gdx/Graphics$DisplayMode;->height:I

    if-gt v3, v4, :cond_10e

    goto :goto_113

    .line 181
    :cond_10e
    sget-object v3, Lcom/badlogic/gdx/Input$Orientation;->Portrait:Lcom/badlogic/gdx/Input$Orientation;

    iput-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->nativeOrientation:Lcom/badlogic/gdx/Input$Orientation;

    goto :goto_117

    .line 179
    :cond_113
    :goto_113
    sget-object v3, Lcom/badlogic/gdx/Input$Orientation;->Landscape:Lcom/badlogic/gdx/Input$Orientation;

    iput-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->nativeOrientation:Lcom/badlogic/gdx/Input$Orientation;

    .line 186
    :goto_117
    const/16 v3, 0xff

    invoke-virtual {p0, v3, v0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->setCatchKey(IZ)V

    .line 187
    return-void
.end method

.method public static getAndroidInputType(Lcom/badlogic/gdx/Input$OnscreenKeyboardType;)I
    .registers 3
    .param p0, "type"  # Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    .line 279
    sget-object v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$5;->$SwitchMap$com$badlogic$gdx$Input$OnscreenKeyboardType:[I

    invoke-virtual {p0}, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    .line 296
    const/16 v0, 0x90

    .local v0, "inputType":I
    goto :goto_1b

    .line 293
    .end local v0  # "inputType":I
    :pswitch_e  #0x5
    const/16 v0, 0x11

    .line 294
    .restart local v0  # "inputType":I
    goto :goto_1b

    .line 290
    .end local v0  # "inputType":I
    :pswitch_11  #0x4
    const/16 v0, 0x81

    .line 291
    .restart local v0  # "inputType":I
    goto :goto_1b

    .line 287
    .end local v0  # "inputType":I
    :pswitch_14  #0x3
    const/16 v0, 0x21

    .line 288
    .restart local v0  # "inputType":I
    goto :goto_1b

    .line 284
    .end local v0  # "inputType":I
    :pswitch_17  #0x2
    const/4 v0, 0x3

    .line 285
    .restart local v0  # "inputType":I
    goto :goto_1b

    .line 281
    .end local v0  # "inputType":I
    :pswitch_19  #0x1
    const/4 v0, 0x2

    .line 282
    .restart local v0  # "inputType":I
    nop

    .line 299
    :goto_1b
    return v0

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_19  #00000001
        :pswitch_17  #00000002
        :pswitch_14  #00000003
        :pswitch_11  #00000004
        :pswitch_e  #00000005
    .end packed-switch
.end method

.method private resize([F)[F
    .registers 5
    .param p1, "orig"  # [F

    .line 876
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    .line 877
    .local v0, "tmp":[F
    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 878
    return-object v0
.end method

.method private resize([I)[I
    .registers 5
    .param p1, "orig"  # [I

    .line 864
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 865
    .local v0, "tmp":[I
    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 866
    return-object v0
.end method

.method private resize([Z)[Z
    .registers 5
    .param p1, "orig"  # [Z

    .line 870
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Z

    .line 871
    .local v0, "tmp":[Z
    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 872
    return-object v0
.end method

.method private updateOrientation()V
    .registers 5

    .line 693
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorAvailable:Z

    if-eqz v0, :cond_c

    .line 694
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->R:[F

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorValues:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    goto :goto_1a

    .line 695
    :cond_c
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->R:[F

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerValues:[F

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->magneticFieldValues:[F

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 696
    return-void

    .line 698
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->R:[F

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->orientation:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 699
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->orientation:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->azimuth:F

    .line 700
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->orientation:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->pitch:F

    .line 701
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->orientation:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->roll:F

    .line 702
    return-void
.end method


# virtual methods
.method public addGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V
    .registers 3
    .param p1, "listener"  # Landroid/view/View$OnGenericMotionListener;

    .line 977
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->genericMotionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    return-void
.end method

.method public addKeyListener(Landroid/view/View$OnKeyListener;)V
    .registers 3
    .param p1, "listener"  # Landroid/view/View$OnKeyListener;

    .line 964
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->keyListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 965
    return-void
.end method

.method public cancelVibrate()V
    .registers 2

    .line 661
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 662
    return-void
.end method

.method public getAccelerometerX()F
    .registers 3

    .line 191
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerValues:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getAccelerometerY()F
    .registers 3

    .line 196
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerValues:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getAccelerometerZ()F
    .registers 3

    .line 201
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerValues:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getAzimuth()F
    .registers 2

    .line 718
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->compassAvailable:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorAvailable:Z

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 720
    :cond_a
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->updateOrientation()V

    .line 721
    iget v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->azimuth:F

    return v0
.end method

.method public getCurrentEventTime()J
    .registers 3

    .line 959
    iget-wide v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->currentEventTimeStamp:J

    return-wide v0
.end method

.method public getDeltaX()I
    .registers 3

    .line 935
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaX:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getDeltaX(I)I
    .registers 3
    .param p1, "pointer"  # I

    .line 940
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaX:[I

    aget v0, v0, p1

    return v0
.end method

.method public getDeltaY()I
    .registers 3

    .line 945
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaY:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getDeltaY(I)I
    .registers 3
    .param p1, "pointer"  # I

    .line 950
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaY:[I

    aget v0, v0, p1

    return v0
.end method

.method public getFreePointerIndex()I
    .registers 5

    .line 846
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->realId:[I

    array-length v0, v0

    .line 847
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_11

    .line 848
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->realId:[I

    aget v2, v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_e

    return v1

    .line 847
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 851
    .end local v1  # "i":I
    :cond_11
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->pressure:[F

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->resize([F)[F

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->pressure:[F

    .line 852
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->realId:[I

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->resize([I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->realId:[I

    .line 853
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchX:[I

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->resize([I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchX:[I

    .line 854
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchY:[I

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->resize([I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchY:[I

    .line 855
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaX:[I

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->resize([I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaX:[I

    .line 856
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaY:[I

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->resize([I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaY:[I

    .line 857
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touched:[Z

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->resize([Z)[Z

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touched:[Z

    .line 858
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->button:[I

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->resize([I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->button:[I

    .line 860
    return v0
.end method

.method public getGyroscopeX()F
    .registers 3

    .line 206
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->gyroscopeValues:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getGyroscopeY()F
    .registers 3

    .line 211
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->gyroscopeValues:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getGyroscopeZ()F
    .registers 3

    .line 216
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->gyroscopeValues:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getInputProcessor()Lcom/badlogic/gdx/InputProcessor;
    .registers 2

    .line 828
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    return-object v0
.end method

.method public getMaxPointers()I
    .registers 2

    .line 304
    const/16 v0, 0x14

    return v0
.end method

.method public getNativeOrientation()Lcom/badlogic/gdx/Input$Orientation;
    .registers 2

    .line 921
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->nativeOrientation:Lcom/badlogic/gdx/Input$Orientation;

    return-object v0
.end method

.method public getPitch()F
    .registers 2

    .line 726
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->compassAvailable:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorAvailable:Z

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 728
    :cond_a
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->updateOrientation()V

    .line 729
    iget v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->pitch:F

    return v0
.end method

.method public getPressure()F
    .registers 2

    .line 343
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->getPressure(I)F

    move-result v0

    return v0
.end method

.method public getPressure(I)F
    .registers 3
    .param p1, "pointer"  # I

    .line 348
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->pressure:[F

    aget v0, v0, p1

    return v0
.end method

.method public getRoll()F
    .registers 2

    .line 734
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->compassAvailable:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorAvailable:Z

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 736
    :cond_a
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->updateOrientation()V

    .line 737
    iget v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->roll:F

    return v0
.end method

.method public getRotation()I
    .registers 4

    .line 897
    const/4 v0, 0x0

    .line 899
    .local v0, "orientation":I
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->context:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_18

    .line 900
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    goto :goto_2a

    .line 902
    :cond_18
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->context:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 905
    :goto_2a
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_3a

    .line 915
    return v1

    .line 913
    :pswitch_2f  #0x3
    const/16 v1, 0x10e

    return v1

    .line 911
    :pswitch_32  #0x2
    const/16 v1, 0xb4

    return v1

    .line 909
    :pswitch_35  #0x1
    const/16 v1, 0x5a

    return v1

    .line 907
    :pswitch_38  #0x0
    return v1

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_38  #00000000
        :pswitch_35  #00000001
        :pswitch_32  #00000002
        :pswitch_2f  #00000003
    .end packed-switch
.end method

.method public getRotationMatrix([F)V
    .registers 5
    .param p1, "matrix"  # [F

    .line 710
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorAvailable:Z

    if-eqz v0, :cond_a

    .line 711
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorValues:[F

    invoke-static {p1, v0}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    goto :goto_12

    .line 713
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerValues:[F

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->magneticFieldValues:[F

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 714
    :goto_12
    return-void
.end method

.method public getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "listener"  # Lcom/badlogic/gdx/Input$TextInputListener;
    .param p2, "title"  # Ljava/lang/String;
    .param p3, "text"  # Ljava/lang/String;
    .param p4, "hint"  # Ljava/lang/String;

    .line 221
    sget-object v5, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->Default:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/Input$OnscreenKeyboardType;)V

    .line 222
    return-void
.end method

.method public getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/Input$OnscreenKeyboardType;)V
    .registers 15
    .param p1, "listener"  # Lcom/badlogic/gdx/Input$TextInputListener;
    .param p2, "title"  # Ljava/lang/String;
    .param p3, "text"  # Ljava/lang/String;
    .param p4, "hint"  # Ljava/lang/String;
    .param p5, "keyboardType"  # Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    .line 226
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->handle:Landroid/os/Handler;

    new-instance v8, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p5

    move-object v5, p4

    move-object v6, p3

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;Ljava/lang/String;Lcom/badlogic/gdx/Input$OnscreenKeyboardType;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/Input$TextInputListener;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 275
    return-void
.end method

.method public getX()I
    .registers 3

    .line 309
    monitor-enter p0

    .line 310
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchX:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    monitor-exit p0

    return v0

    .line 311
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public getX(I)I
    .registers 3
    .param p1, "pointer"  # I

    .line 323
    monitor-enter p0

    .line 324
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchX:[I

    aget v0, v0, p1

    monitor-exit p0

    return v0

    .line 325
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getY()I
    .registers 3

    .line 316
    monitor-enter p0

    .line 317
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchY:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    monitor-exit p0

    return v0

    .line 318
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public getY(I)I
    .registers 3
    .param p1, "pointer"  # I

    .line 330
    monitor-enter p0

    .line 331
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchY:[I

    aget v0, v0, p1

    monitor-exit p0

    return v0

    .line 332
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public isButtonJustPressed(I)Z
    .registers 3
    .param p1, "button"  # I

    .line 685
    if-ltz p1, :cond_c

    const/16 v0, 0x14

    if-le p1, v0, :cond_7

    goto :goto_c

    .line 686
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->justPressedButtons:[Z

    aget-boolean v0, v0, p1

    return v0

    .line 685
    :cond_c
    :goto_c
    const/4 v0, 0x0

    return v0
.end method

.method public isButtonPressed(I)Z
    .registers 5
    .param p1, "button"  # I

    .line 671
    monitor-enter p0

    .line 672
    :try_start_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->hasMultitouch:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    .line 673
    const/4 v0, 0x0

    .local v0, "pointer":I
    :goto_7
    const/16 v2, 0x14

    if-ge v0, v2, :cond_1c

    .line 674
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touched:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->button:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_19

    .line 675
    monitor-exit p0

    return v1

    .line 673
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 679
    .end local v0  # "pointer":I
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touched:[Z

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->button:[I

    aget v0, v0, v2

    if-ne v0, p1, :cond_2a

    goto :goto_2b

    :cond_2a
    move v1, v2

    :goto_2b
    monitor-exit p0

    return v1

    .line 680
    :catchall_2d
    move-exception v0

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public isCursorCatched()Z
    .registers 2

    .line 930
    const/4 v0, 0x0

    return v0
.end method

.method public isPeripheralAvailable(Lcom/badlogic/gdx/Input$Peripheral;)Z
    .registers 5
    .param p1, "peripheral"  # Lcom/badlogic/gdx/Input$Peripheral;

    .line 833
    sget-object v0, Lcom/badlogic/gdx/Input$Peripheral;->Accelerometer:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v0, :cond_7

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerAvailable:Z

    return v0

    .line 834
    :cond_7
    sget-object v0, Lcom/badlogic/gdx/Input$Peripheral;->Gyroscope:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v0, :cond_e

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->gyroscopeAvailable:Z

    return v0

    .line 835
    :cond_e
    sget-object v0, Lcom/badlogic/gdx/Input$Peripheral;->Compass:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v0, :cond_15

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->compassAvailable:Z

    return v0

    .line 836
    :cond_15
    sget-object v0, Lcom/badlogic/gdx/Input$Peripheral;->HardwareKeyboard:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v0, :cond_1c

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->keyboardAvailable:Z

    return v0

    .line 837
    :cond_1c
    sget-object v0, Lcom/badlogic/gdx/Input$Peripheral;->OnscreenKeyboard:Lcom/badlogic/gdx/Input$Peripheral;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_22

    return v1

    .line 838
    :cond_22
    sget-object v0, Lcom/badlogic/gdx/Input$Peripheral;->Vibrator:Lcom/badlogic/gdx/Input$Peripheral;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_36

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_35

    :cond_34
    move v1, v2

    :goto_35
    return v1

    .line 839
    :cond_36
    sget-object v0, Lcom/badlogic/gdx/Input$Peripheral;->MultitouchScreen:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v0, :cond_3d

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->hasMultitouch:Z

    return v0

    .line 840
    :cond_3d
    sget-object v0, Lcom/badlogic/gdx/Input$Peripheral;->RotationVector:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v0, :cond_44

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorAvailable:Z

    return v0

    .line 841
    :cond_44
    sget-object v0, Lcom/badlogic/gdx/Input$Peripheral;->Pressure:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v0, :cond_49

    return v1

    .line 842
    :cond_49
    return v2
.end method

.method public isTouched()Z
    .registers 3

    .line 358
    monitor-enter p0

    .line 359
    :try_start_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->hasMultitouch:Z

    if-eqz v0, :cond_16

    .line 360
    const/4 v0, 0x0

    .local v0, "pointer":I
    :goto_6
    const/16 v1, 0x14

    if-ge v0, v1, :cond_16

    .line 361
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touched:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_13

    .line 362
    monitor-exit p0

    const/4 v1, 0x1

    return v1

    .line 360
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 366
    .end local v0  # "pointer":I
    :cond_16
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touched:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    monitor-exit p0

    return v0

    .line 367
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public isTouched(I)Z
    .registers 3
    .param p1, "pointer"  # I

    .line 336
    monitor-enter p0

    .line 337
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touched:[Z

    aget-boolean v0, v0, p1

    monitor-exit p0

    return v0

    .line 338
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public justTouched()Z
    .registers 2

    .line 666
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->justTouched:Z

    return v0
.end method

.method public lookUpPointerIndex(I)I
    .registers 7
    .param p1, "pointerId"  # I

    .line 882
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->realId:[I

    array-length v0, v0

    .line 883
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_10

    .line 884
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->realId:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_d

    return v1

    .line 883
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 887
    .end local v1  # "i":I
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 888
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    if-ge v2, v0, :cond_3f

    .line 889
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->realId:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 891
    .end local v2  # "i":I
    :cond_3f
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pointer ID lookup failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AndroidInput"

    invoke-interface {v2, v4, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    const/4 v2, -0x1

    return v2
.end method

.method public onDreamingStarted()V
    .registers 1

    .line 998
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->registerSensorListeners()V

    .line 999
    return-void
.end method

.method public onDreamingStopped()V
    .registers 3

    .line 1003
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->unregisterSensorListeners()V

    .line 1005
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->realId:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1007
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touched:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 1008
    return-void
.end method

.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "view"  # Landroid/view/View;
    .param p2, "event"  # Landroid/view/MotionEvent;

    .line 969
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->mouseHandler:Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;

    invoke-virtual {v0, p2, p0}, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->onGenericMotion(Landroid/view/MotionEvent;Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 970
    :cond_a
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->genericMotionListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "n":I
    :goto_11
    if-ge v0, v2, :cond_25

    .line 971
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->genericMotionListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View$OnGenericMotionListener;

    invoke-interface {v3, p1, p2}, Landroid/view/View$OnGenericMotionListener;->onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_22

    return v1

    .line 970
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 972
    .end local v0  # "i":I
    .end local v2  # "n":I
    :cond_25
    const/4 v0, 0x0

    return v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 14
    .param p1, "v"  # Landroid/view/View;
    .param p2, "keyCode"  # I
    .param p3, "e"  # Landroid/view/KeyEvent;

    .line 524
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->keyListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_7
    const/4 v2, 0x1

    if-ge v0, v1, :cond_1c

    .line 525
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->keyListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View$OnKeyListener;

    invoke-interface {v3, p1, p2, p3}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_19

    return v2

    .line 524
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 530
    .end local v0  # "i":I
    .end local v1  # "n":I
    :cond_1c
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_2d

    .line 531
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->isCatchKey(I)Z

    move-result v0

    return v0

    .line 533
    :cond_2d
    monitor-enter p0

    .line 534
    const/4 v0, 0x0

    .line 536
    .local v0, "event":Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;
    :try_start_2f
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v1, :cond_6b

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_6b

    .line 537
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v1

    .line 538
    .local v1, "chars":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_42
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_69

    .line 539
    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;

    move-object v0, v5

    .line 540
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->timeStamp:J

    .line 541
    iput v4, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->keyCode:I

    .line 542
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iput-char v5, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->keyChar:C

    .line 543
    iput v3, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->type:I

    .line 544
    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 546
    .end local v2  # "i":I
    :cond_69
    monitor-exit p0

    return v4

    .line 549
    .end local v1  # "chars":Ljava/lang/String;
    :cond_6b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v1

    int-to-char v1, v1

    .line 551
    .local v1, "character":C
    const/16 v5, 0x43

    if-ne p2, v5, :cond_76

    const/16 v1, 0x8

    .line 552
    :cond_76
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-ltz v5, :cond_146

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0xff

    if-le v5, v6, :cond_86

    goto/16 :goto_146

    .line 556
    :cond_86
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/4 v7, 0x4

    packed-switch v5, :pswitch_data_14c

    goto/16 :goto_137

    .line 577
    :pswitch_90  #0x1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 578
    .local v8, "timeStamp":J
    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;

    move-object v0, v5

    .line 579
    iput-wide v8, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->timeStamp:J

    .line 580
    iput-char v4, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->keyChar:C

    .line 581
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    iput v5, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->keyCode:I

    .line 582
    iput v2, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->type:I

    .line 584
    if-ne p2, v7, :cond_b5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v5

    if-eqz v5, :cond_b5

    .line 585
    const/16 p2, 0xff

    .line 586
    iput p2, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->keyCode:I

    .line 588
    :cond_b5
    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;

    move-object v0, v5

    .line 591
    iput-wide v8, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->timeStamp:J

    .line 592
    iput-char v1, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->keyChar:C

    .line 593
    iput v4, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->keyCode:I

    .line 594
    iput v3, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->type:I

    .line 595
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    if-ne p2, v6, :cond_e2

    .line 598
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->pressedKeys:[Z

    aget-boolean v3, v3, v6

    if-eqz v3, :cond_137

    .line 599
    iget v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->pressedKeyCount:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->pressedKeyCount:I

    .line 600
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->pressedKeys:[Z

    aput-boolean v4, v2, v6

    goto :goto_137

    .line 603
    :cond_e2
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->pressedKeys:[Z

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    aget-boolean v3, v3, v5

    if-eqz v3, :cond_137

    .line 604
    iget v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->pressedKeyCount:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->pressedKeyCount:I

    .line 605
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->pressedKeys:[Z

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    aput-boolean v4, v2, v3

    goto :goto_137

    .line 558
    .end local v8  # "timeStamp":J
    :pswitch_fa  #0x0
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;

    move-object v0, v3

    .line 559
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->timeStamp:J

    .line 560
    iput-char v4, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->keyChar:C

    .line 561
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    iput v3, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->keyCode:I

    .line 562
    iput v4, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->type:I

    .line 565
    if-ne p2, v7, :cond_11f

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-eqz v3, :cond_11f

    .line 566
    const/16 p2, 0xff

    .line 567
    iput p2, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->keyCode:I

    .line 570
    :cond_11f
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->pressedKeys:[Z

    iget v4, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->keyCode:I

    aget-boolean v3, v3, v4

    if-nez v3, :cond_137

    .line 572
    iget v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->pressedKeyCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->pressedKeyCount:I

    .line 573
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->pressedKeys:[Z

    iget v4, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->keyCode:I

    aput-boolean v2, v3, v4

    .line 609
    :cond_137
    :goto_137
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v2}, Lcom/badlogic/gdx/Application;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v2

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    .line 610
    .end local v0  # "event":Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;
    .end local v1  # "character":C
    monitor-exit p0
    :try_end_141
    .catchall {:try_start_2f .. :try_end_141} :catchall_148

    .line 612
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->isCatchKey(I)Z

    move-result v0

    return v0

    .line 553
    .restart local v0  # "event":Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;
    .restart local v1  # "character":C
    :cond_146
    :goto_146
    :try_start_146
    monitor-exit p0

    return v4

    .line 610
    .end local v0  # "event":Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;
    .end local v1  # "character":C
    :catchall_148
    move-exception v0

    monitor-exit p0
    :try_end_14a
    .catchall {:try_start_146 .. :try_end_14a} :catchall_148

    throw v0

    nop

    :pswitch_data_14c
    .packed-switch 0x0
        :pswitch_fa  #00000000
        :pswitch_90  #00000001
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    .line 982
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->unregisterSensorListeners()V

    .line 985
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->realId:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 988
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touched:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 989
    return-void
.end method

.method public onResume()V
    .registers 1

    .line 993
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->registerSensorListeners()V

    .line 994
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "view"  # Landroid/view/View;
    .param p2, "event"  # Landroid/view/MotionEvent;

    .line 468
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->requestFocus:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    if-eqz p1, :cond_10

    .line 469
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 470
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 471
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->requestFocus:Z

    .line 475
    :cond_10
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchHandler:Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;

    invoke-virtual {v0, p2, p0}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;->onTouch(Landroid/view/MotionEvent;Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;)V

    .line 477
    iget v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->sleepTime:I

    if-eqz v0, :cond_21

    .line 479
    :try_start_19
    iget v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->sleepTime:I

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1f} :catch_20

    .line 481
    goto :goto_21

    .line 480
    :catch_20
    move-exception v0

    .line 483
    :cond_21
    :goto_21
    return v1
.end method

.method public processEvents()V
    .registers 11

    .line 378
    monitor-enter p0

    .line 379
    :try_start_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->justTouched:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 380
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->justTouched:Z

    .line 381
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->justPressedButtons:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_15

    .line 382
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->justPressedButtons:[Z

    aput-boolean v1, v2, v0

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 385
    .end local v0  # "i":I
    :cond_15
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->keyJustPressed:Z

    if-eqz v0, :cond_28

    .line 386
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->keyJustPressed:Z

    .line 387
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_1c
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->justPressedKeys:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_28

    .line 388
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->justPressedKeys:[Z

    aput-boolean v1, v2, v0

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 392
    .end local v0  # "i":I
    :cond_28
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    const/4 v2, 0x1

    if-eqz v0, :cond_cd

    .line 393
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    .line 395
    .local v0, "processor":Lcom/badlogic/gdx/InputProcessor;
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 396
    .local v3, "len":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_36
    if-ge v4, v3, :cond_6c

    .line 397
    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;

    .line 398
    .local v5, "e":Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;
    iget-wide v6, v5, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->timeStamp:J

    iput-wide v6, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->currentEventTimeStamp:J

    .line 399
    iget v6, v5, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->type:I

    packed-switch v6, :pswitch_data_12c

    goto :goto_64

    .line 409
    :pswitch_4a  #0x2
    iget-char v6, v5, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->keyChar:C

    invoke-interface {v0, v6}, Lcom/badlogic/gdx/InputProcessor;->keyTyped(C)Z

    goto :goto_64

    .line 406
    :pswitch_50  #0x1
    iget v6, v5, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->keyCode:I

    invoke-interface {v0, v6}, Lcom/badlogic/gdx/InputProcessor;->keyUp(I)Z

    .line 407
    goto :goto_64

    .line 401
    :pswitch_56  #0x0
    iget v6, v5, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->keyCode:I

    invoke-interface {v0, v6}, Lcom/badlogic/gdx/InputProcessor;->keyDown(I)Z

    .line 402
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->keyJustPressed:Z

    .line 403
    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->justPressedKeys:[Z

    iget v7, v5, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->keyCode:I

    aput-boolean v2, v6, v7

    .line 404
    nop

    .line 411
    :goto_64
    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 396
    .end local v5  # "e":Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 414
    .end local v4  # "i":I
    :cond_6c
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v4

    .line 415
    const/4 v4, 0x0

    .restart local v4  # "i":I
    :goto_74
    if-ge v4, v3, :cond_cc

    .line 416
    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;

    .line 417
    .local v5, "e":Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;
    iget-wide v6, v5, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->timeStamp:J

    iput-wide v6, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->currentEventTimeStamp:J

    .line 418
    iget v6, v5, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->type:I

    packed-switch v6, :pswitch_data_136

    goto :goto_c4

    .line 431
    :pswitch_88  #0x4
    iget v6, v5, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->x:I

    iget v7, v5, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->y:I

    invoke-interface {v0, v6, v7}, Lcom/badlogic/gdx/InputProcessor;->mouseMoved(II)Z

    .line 432
    goto :goto_c4

    .line 434
    :pswitch_90  #0x3
    iget v6, v5, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->scrollAmountX:I

    int-to-float v6, v6

    iget v7, v5, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->scrollAmountY:I

    int-to-float v7, v7

    invoke-interface {v0, v6, v7}, Lcom/badlogic/gdx/InputProcessor;->scrolled(FF)Z

    goto :goto_c4

    .line 428
    :pswitch_9a  #0x2
    iget v6, v5, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->x:I

    iget v7, v5, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->y:I

    iget v8, v5, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->pointer:I

    invoke-interface {v0, v6, v7, v8}, Lcom/badlogic/gdx/InputProcessor;->touchDragged(III)Z

    .line 429
    goto :goto_c4

    .line 425
    :pswitch_a4  #0x1
    iget v6, v5, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->x:I

    iget v7, v5, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->y:I

    iget v8, v5, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->pointer:I

    iget v9, v5, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->button:I

    invoke-interface {v0, v6, v7, v8, v9}, Lcom/badlogic/gdx/InputProcessor;->touchUp(IIII)Z

    .line 426
    goto :goto_c4

    .line 420
    :pswitch_b0  #0x0
    iget v6, v5, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->x:I

    iget v7, v5, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->y:I

    iget v8, v5, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->pointer:I

    iget v9, v5, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->button:I

    invoke-interface {v0, v6, v7, v8, v9}, Lcom/badlogic/gdx/InputProcessor;->touchDown(IIII)Z

    .line 421
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->justTouched:Z

    .line 422
    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->justPressedButtons:[Z

    iget v7, v5, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->button:I

    aput-boolean v2, v6, v7

    .line 423
    nop

    .line 436
    :goto_c4
    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->usedTouchEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 415
    .end local v5  # "e":Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;
    add-int/lit8 v4, v4, 0x1

    goto :goto_74

    .line 438
    .end local v0  # "processor":Lcom/badlogic/gdx/InputProcessor;
    .end local v3  # "len":I
    .end local v4  # "i":I
    :cond_cc
    goto :goto_104

    .line 439
    :cond_cd
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 440
    .local v0, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d4
    if-ge v3, v0, :cond_ec

    .line 441
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;

    .line 442
    .local v4, "e":Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;
    iget v5, v4, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->type:I

    if-nez v5, :cond_e4

    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->justTouched:Z

    .line 443
    :cond_e4
    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->usedTouchEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 440
    .end local v4  # "e":Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;
    add-int/lit8 v3, v3, 0x1

    goto :goto_d4

    .line 446
    .end local v3  # "i":I
    :cond_ec
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v0, v2

    .line 447
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f4
    if-ge v2, v0, :cond_104

    .line 448
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 447
    add-int/lit8 v2, v2, 0x1

    goto :goto_f4

    .line 452
    .end local v0  # "len":I
    .end local v2  # "i":I
    :cond_104
    :goto_104
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11d

    .line 453
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10d
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaX:[I

    array-length v2, v2

    if-ge v0, v2, :cond_11d

    .line 454
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaX:[I

    aput v1, v2, v1

    .line 455
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaY:[I

    aput v1, v2, v1

    .line 453
    add-int/lit8 v0, v0, 0x1

    goto :goto_10d

    .line 459
    .end local v0  # "i":I
    :cond_11d
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 460
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 461
    monitor-exit p0

    .line 462
    return-void

    .line 461
    :catchall_129
    move-exception v0

    monitor-exit p0
    :try_end_12b
    .catchall {:try_start_1 .. :try_end_12b} :catchall_129

    throw v0

    :pswitch_data_12c
    .packed-switch 0x0
        :pswitch_56  #00000000
        :pswitch_50  #00000001
        :pswitch_4a  #00000002
    .end packed-switch

    :pswitch_data_136
    .packed-switch 0x0
        :pswitch_b0  #00000000
        :pswitch_a4  #00000001
        :pswitch_9a  #00000002
        :pswitch_90  #00000003
        :pswitch_88  #00000004
    .end packed-switch
.end method

.method registerSensorListeners()V
    .registers 8

    .line 741
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget-boolean v0, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useAccelerometer:Z

    const-string v1, "sensor"

    const/4 v2, 0x0

    if-eqz v0, :cond_45

    .line 742
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    .line 743
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 744
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerAvailable:Z

    goto :goto_47

    .line 746
    :cond_23
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 747
    .local v0, "accelerometer":Landroid/hardware/Sensor;
    new-instance v3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;

    invoke-direct {v3, p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;)V

    iput-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerListener:Landroid/hardware/SensorEventListener;

    .line 748
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v5, v5, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->sensorDelay:I

    invoke-virtual {v3, v4, v0, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerAvailable:Z

    .line 750
    .end local v0  # "accelerometer":Landroid/hardware/Sensor;
    goto :goto_47

    .line 752
    :cond_45
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerAvailable:Z

    .line 754
    :goto_47
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget-boolean v0, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useGyroscope:Z

    if-eqz v0, :cond_89

    .line 755
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    .line 756
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 757
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->gyroscopeAvailable:Z

    goto :goto_8b

    .line 759
    :cond_67
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 760
    .local v0, "gyroscope":Landroid/hardware/Sensor;
    new-instance v3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;

    invoke-direct {v3, p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;)V

    iput-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->gyroscopeListener:Landroid/hardware/SensorEventListener;

    .line 761
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->gyroscopeListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v5, v5, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->sensorDelay:I

    invoke-virtual {v3, v4, v0, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->gyroscopeAvailable:Z

    .line 763
    .end local v0  # "gyroscope":Landroid/hardware/Sensor;
    goto :goto_8b

    .line 765
    :cond_89
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->gyroscopeAvailable:Z

    .line 767
    :goto_8b
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorAvailable:Z

    .line 768
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget-boolean v0, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useRotationVectorSensor:Z

    if-eqz v0, :cond_101

    .line 769
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_a1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    .line 770
    :cond_a1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 771
    .local v0, "rotationVectorSensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_101

    .line 772
    new-instance v3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;

    invoke-direct {v3, p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;)V

    iput-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorListener:Landroid/hardware/SensorEventListener;

    .line 773
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ba
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    .line 774
    .local v4, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Google Inc."

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e8

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getVersion()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_e8

    .line 775
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorListener:Landroid/hardware/SensorEventListener;

    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v6, v6, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->sensorDelay:I

    invoke-virtual {v3, v5, v4, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorAvailable:Z

    .line 777
    goto :goto_e9

    .line 779
    .end local v4  # "sensor":Landroid/hardware/Sensor;
    :cond_e8
    goto :goto_ba

    .line 780
    :cond_e9
    :goto_e9
    iget-boolean v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorAvailable:Z

    if-nez v3, :cond_101

    .line 781
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorListener:Landroid/hardware/SensorEventListener;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v6, v6, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->sensorDelay:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorAvailable:Z

    .line 786
    .end local v0  # "rotationVectorSensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_101
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget-boolean v0, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useCompass:Z

    if-eqz v0, :cond_143

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorAvailable:Z

    if-nez v0, :cond_143

    .line 787
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_119

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    .line 788
    :cond_119
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 789
    .local v0, "sensor":Landroid/hardware/Sensor;
    if-eqz v0, :cond_140

    .line 790
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerAvailable:Z

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->compassAvailable:Z

    .line 791
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->compassAvailable:Z

    if-eqz v1, :cond_142

    .line 792
    new-instance v1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;)V

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->compassListener:Landroid/hardware/SensorEventListener;

    .line 793
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->compassListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v3, v3, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->sensorDelay:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->compassAvailable:Z

    goto :goto_142

    .line 796
    :cond_140
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->compassAvailable:Z

    .line 798
    .end local v0  # "sensor":Landroid/hardware/Sensor;
    :cond_142
    :goto_142
    goto :goto_145

    .line 799
    :cond_143
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->compassAvailable:Z

    .line 800
    :goto_145
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidInput"

    const-string v2, "sensor listener setup"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    return-void
.end method

.method public setCursorCatched(Z)V
    .registers 2
    .param p1, "catched"  # Z

    .line 926
    return-void
.end method

.method public setCursorPosition(II)V
    .registers 3
    .param p1, "x"  # I
    .param p2, "y"  # I

    .line 955
    return-void
.end method

.method public setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V
    .registers 3
    .param p1, "processor"  # Lcom/badlogic/gdx/InputProcessor;

    .line 371
    monitor-enter p0

    .line 372
    :try_start_1
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    .line 373
    monitor-exit p0

    .line 374
    return-void

    .line 373
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public setKeyboardAvailable(Z)V
    .registers 2
    .param p1, "available"  # Z

    .line 353
    iput-boolean p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->keyboardAvailable:Z

    .line 354
    return-void
.end method

.method public setOnscreenKeyboardVisible(Z)V
    .registers 3
    .param p1, "visible"  # Z

    .line 617
    sget-object v0, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->Default:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->setOnscreenKeyboardVisible(ZLcom/badlogic/gdx/Input$OnscreenKeyboardType;)V

    .line 618
    return-void
.end method

.method public setOnscreenKeyboardVisible(ZLcom/badlogic/gdx/Input$OnscreenKeyboardType;)V
    .registers 5
    .param p1, "visible"  # Z
    .param p2, "type"  # Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    .line 622
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->handle:Landroid/os/Handler;

    new-instance v1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$4;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;ZLcom/badlogic/gdx/Input$OnscreenKeyboardType;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 641
    return-void
.end method

.method unregisterSensorListeners()V
    .registers 4

    .line 804
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_3b

    .line 805
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerListener:Landroid/hardware/SensorEventListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 806
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 807
    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerListener:Landroid/hardware/SensorEventListener;

    .line 809
    :cond_12
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->gyroscopeListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_1f

    .line 810
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->gyroscopeListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 811
    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->gyroscopeListener:Landroid/hardware/SensorEventListener;

    .line 813
    :cond_1f
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_2c

    .line 814
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 815
    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorListener:Landroid/hardware/SensorEventListener;

    .line 817
    :cond_2c
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->compassListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_39

    .line 818
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->compassListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 819
    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->compassListener:Landroid/hardware/SensorEventListener;

    .line 821
    :cond_39
    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    .line 823
    :cond_3b
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidInput"

    const-string v2, "sensor listener tear down"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    return-void
.end method

.method public vibrate(I)V
    .registers 6
    .param p1, "milliseconds"  # I

    .line 645
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_12

    .line 646
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->vibrator:Landroid/os/Vibrator;

    int-to-long v1, p1

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_18

    .line 648
    :cond_12
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->vibrator:Landroid/os/Vibrator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 649
    :goto_18
    return-void
.end method

.method public vibrate([JI)V
    .registers 5
    .param p1, "pattern"  # [J
    .param p2, "repeat"  # I

    .line 653
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_10

    .line 654
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->vibrator:Landroid/os/Vibrator;

    invoke-static {p1, p2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_15

    .line 656
    :cond_10
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 657
    :goto_15
    return-void
.end method
