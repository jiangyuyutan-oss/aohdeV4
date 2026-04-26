.class public Lcom/badlogic/gdx/input/RemoteInput;
.super Ljava/lang/Object;
.source "RemoteInput.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/badlogic/gdx/Input;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;,
        Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;,
        Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;,
        Lcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;
    }
.end annotation


# static fields
.field public static DEFAULT_PORT:I = 0x0

.field private static final MAX_TOUCHES:I = 0x14


# instance fields
.field private accel:[F

.field private compass:[F

.field private connected:Z

.field deltaX:[I

.field deltaY:[I

.field private gyrate:[F

.field public final ips:[Ljava/lang/String;

.field isTouched:[Z

.field justPressedKeys:[Z

.field justTouched:Z

.field keyCount:I

.field keyJustPressed:Z

.field keys:[Z

.field private listener:Lcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;

.field private multiTouch:Z

.field private final port:I

.field processor:Lcom/badlogic/gdx/InputProcessor;

.field private remoteHeight:F

.field private remoteWidth:F

.field private serverSocket:Ljava/net/ServerSocket;

.field touchX:[I

.field touchY:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 188
    const/16 v0, 0x1ffe

    sput v0, Lcom/badlogic/gdx/input/RemoteInput;->DEFAULT_PORT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 213
    sget v0, Lcom/badlogic/gdx/input/RemoteInput;->DEFAULT_PORT:I

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/input/RemoteInput;-><init>(I)V

    .line 214
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "port"  # I

    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/input/RemoteInput;-><init>(ILcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;)V

    .line 222
    return-void
.end method

.method public constructor <init>(ILcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;)V
    .registers 8
    .param p1, "port"  # I
    .param p2, "listener"  # Lcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->accel:[F

    .line 191
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->gyrate:[F

    .line 192
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->compass:[F

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->multiTouch:Z

    .line 194
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteWidth:F

    .line 195
    iput v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteHeight:F

    .line 196
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->connected:Z

    .line 198
    iput v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->keyCount:I

    .line 199
    const/16 v1, 0x100

    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput;->keys:[Z

    .line 200
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->keyJustPressed:Z

    .line 201
    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->justPressedKeys:[Z

    .line 202
    const/16 v1, 0x14

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput;->deltaX:[I

    .line 203
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput;->deltaY:[I

    .line 204
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput;->touchX:[I

    .line 205
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput;->touchY:[I

    .line 206
    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->isTouched:[Z

    .line 207
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->justTouched:Z

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    .line 225
    iput-object p2, p0, Lcom/badlogic/gdx/input/RemoteInput;->listener:Lcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;

    .line 227
    :try_start_45
    iput p1, p0, Lcom/badlogic/gdx/input/RemoteInput;->port:I

    .line 228
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->serverSocket:Ljava/net/ServerSocket;

    .line 229
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 230
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 231
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 232
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    .line 233
    .local v1, "allByName":[Ljava/net/InetAddress;
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput;->ips:[Ljava/lang/String;

    .line 234
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6c
    array-length v3, v1

    if-ge v2, v3, :cond_7c

    .line 235
    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput;->ips:[Ljava/lang/String;

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_79} :catch_7e

    .line 234
    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    .line 239
    .end local v0  # "thread":Ljava/lang/Thread;
    .end local v1  # "allByName":[Ljava/net/InetAddress;
    .end local v2  # "i":I
    :cond_7c
    nop

    .line 240
    return-void

    .line 237
    :catch_7e
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t open listening socket at port \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;)V
    .registers 3
    .param p1, "listener"  # Lcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;

    .line 217
    sget v0, Lcom/badlogic/gdx/input/RemoteInput;->DEFAULT_PORT:I

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/input/RemoteInput;-><init>(ILcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;)V

    .line 218
    return-void
.end method


# virtual methods
.method public cancelVibrate()V
    .registers 1

    .line 480
    return-void
.end method

.method public getAccelerometerX()F
    .registers 3

    .line 336
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->accel:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getAccelerometerY()F
    .registers 3

    .line 341
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->accel:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getAccelerometerZ()F
    .registers 3

    .line 346
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->accel:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getAzimuth()F
    .registers 3

    .line 484
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->compass:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getCurrentEventTime()J
    .registers 3

    .line 597
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDeltaX()I
    .registers 3

    .line 572
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->deltaX:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getDeltaX(I)I
    .registers 3
    .param p1, "pointer"  # I

    .line 577
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->deltaX:[I

    aget v0, v0, p1

    return v0
.end method

.method public getDeltaY()I
    .registers 3

    .line 582
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->deltaY:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getDeltaY(I)I
    .registers 3
    .param p1, "pointer"  # I

    .line 587
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->deltaY:[I

    aget v0, v0, p1

    return v0
.end method

.method public getGyroscopeX()F
    .registers 3

    .line 351
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->gyrate:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getGyroscopeY()F
    .registers 3

    .line 356
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->gyrate:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getGyroscopeZ()F
    .registers 3

    .line 361
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->gyrate:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getIPs()[Ljava/lang/String;
    .registers 2

    .line 539
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->ips:[Ljava/lang/String;

    return-object v0
.end method

.method public getInputProcessor()Lcom/badlogic/gdx/InputProcessor;
    .registers 2

    .line 534
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    return-object v0
.end method

.method public getMaxPointers()I
    .registers 2

    .line 366
    const/16 v0, 0x14

    return v0
.end method

.method public getNativeOrientation()Lcom/badlogic/gdx/Input$Orientation;
    .registers 2

    .line 557
    sget-object v0, Lcom/badlogic/gdx/Input$Orientation;->Landscape:Lcom/badlogic/gdx/Input$Orientation;

    return-object v0
.end method

.method public getPitch()F
    .registers 3

    .line 489
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->compass:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getPressure()F
    .registers 2

    .line 406
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/input/RemoteInput;->getPressure(I)F

    move-result v0

    return v0
.end method

.method public getPressure(I)F
    .registers 3
    .param p1, "pointer"  # I

    .line 411
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/input/RemoteInput;->isTouched(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/high16 v0, 0x3f800000  # 1.0f

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getRoll()F
    .registers 3

    .line 494
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->compass:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getRotation()I
    .registers 2

    .line 552
    const/4 v0, 0x0

    return v0
.end method

.method public getRotationMatrix([F)V
    .registers 2
    .param p1, "matrix"  # [F

    .line 604
    return-void
.end method

.method public getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "listener"  # Lcom/badlogic/gdx/Input$TextInputListener;
    .param p2, "title"  # Ljava/lang/String;
    .param p3, "text"  # Ljava/lang/String;
    .param p4, "hint"  # Ljava/lang/String;

    .line 451
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getInput()Lcom/badlogic/gdx/Input;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/Input;->getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method public getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/Input$OnscreenKeyboardType;)V
    .registers 13
    .param p1, "listener"  # Lcom/badlogic/gdx/Input$TextInputListener;
    .param p2, "title"  # Ljava/lang/String;
    .param p3, "text"  # Ljava/lang/String;
    .param p4, "hint"  # Ljava/lang/String;
    .param p5, "type"  # Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    .line 456
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getInput()Lcom/badlogic/gdx/Input;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/Input;->getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/Input$OnscreenKeyboardType;)V

    .line 457
    return-void
.end method

.method public getX()I
    .registers 3

    .line 371
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->touchX:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getX(I)I
    .registers 3
    .param p1, "pointer"  # I

    .line 376
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->touchX:[I

    aget v0, v0, p1

    return v0
.end method

.method public getY()I
    .registers 3

    .line 381
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->touchY:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getY(I)I
    .registers 3
    .param p1, "pointer"  # I

    .line 386
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->touchY:[I

    aget v0, v0, p1

    return v0
.end method

.method public isButtonJustPressed(I)Z
    .registers 3
    .param p1, "button"  # I

    .line 424
    if-nez p1, :cond_8

    iget-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->justTouched:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isButtonPressed(I)Z
    .registers 5
    .param p1, "button"  # I

    .line 416
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    return v0

    .line 417
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput;->isTouched:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_15

    .line 418
    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput;->isTouched:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_12

    const/4 v0, 0x1

    return v0

    .line 417
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 419
    .end local v1  # "i":I
    :cond_15
    return v0
.end method

.method public isCatchBackKey()Z
    .registers 2

    .line 504
    const/4 v0, 0x0

    return v0
.end method

.method public isCatchKey(I)Z
    .registers 3
    .param p1, "keycode"  # I

    .line 524
    const/4 v0, 0x0

    return v0
.end method

.method public isCatchMenuKey()Z
    .registers 2

    .line 514
    const/4 v0, 0x0

    return v0
.end method

.method public isConnected()Z
    .registers 2

    .line 331
    iget-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->connected:Z

    return v0
.end method

.method public isCursorCatched()Z
    .registers 2

    .line 567
    const/4 v0, 0x0

    return v0
.end method

.method public isKeyJustPressed(I)Z
    .registers 3
    .param p1, "key"  # I

    .line 440
    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    .line 441
    iget-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->keyJustPressed:Z

    return v0

    .line 443
    :cond_6
    if-ltz p1, :cond_12

    const/16 v0, 0xff

    if-le p1, v0, :cond_d

    goto :goto_12

    .line 446
    :cond_d
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->justPressedKeys:[Z

    aget-boolean v0, v0, p1

    return v0

    .line 444
    :cond_12
    :goto_12
    const/4 v0, 0x0

    return v0
.end method

.method public isKeyPressed(I)Z
    .registers 4
    .param p1, "key"  # I

    .line 429
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_a

    .line 430
    iget v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->keyCount:I

    if-lez v0, :cond_9

    const/4 v1, 0x1

    :cond_9
    return v1

    .line 432
    :cond_a
    if-ltz p1, :cond_16

    const/16 v0, 0xff

    if-le p1, v0, :cond_11

    goto :goto_16

    .line 435
    :cond_11
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->keys:[Z

    aget-boolean v0, v0, p1

    return v0

    .line 433
    :cond_16
    :goto_16
    return v1
.end method

.method public isPeripheralAvailable(Lcom/badlogic/gdx/Input$Peripheral;)Z
    .registers 4
    .param p1, "peripheral"  # Lcom/badlogic/gdx/Input$Peripheral;

    .line 544
    sget-object v0, Lcom/badlogic/gdx/Input$Peripheral;->Accelerometer:Lcom/badlogic/gdx/Input$Peripheral;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_6

    return v1

    .line 545
    :cond_6
    sget-object v0, Lcom/badlogic/gdx/Input$Peripheral;->Compass:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v0, :cond_b

    return v1

    .line 546
    :cond_b
    sget-object v0, Lcom/badlogic/gdx/Input$Peripheral;->MultitouchScreen:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v0, :cond_12

    iget-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->multiTouch:Z

    return v0

    .line 547
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public isTouched()Z
    .registers 3

    .line 391
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->isTouched:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isTouched(I)Z
    .registers 3
    .param p1, "pointer"  # I

    .line 401
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->isTouched:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public justTouched()Z
    .registers 2

    .line 396
    iget-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->justTouched:Z

    return v0
.end method

.method public run()V
    .registers 11

    .line 246
    nop

    :goto_1
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->connected:Z

    .line 247
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->listener:Lcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->listener:Lcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;

    invoke-interface {v1}, Lcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;->onDisconnected()V

    .line 249
    :cond_d
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listening, port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/badlogic/gdx/input/RemoteInput;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 250
    const/4 v1, 0x0

    .line 252
    .local v1, "socket":Ljava/net/Socket;
    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    move-object v1, v2

    .line 253
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 254
    const/16 v3, 0xbb8

    invoke-virtual {v1, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 255
    iput-boolean v2, p0, Lcom/badlogic/gdx/input/RemoteInput;->connected:Z

    .line 256
    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput;->listener:Lcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;

    if-eqz v3, :cond_43

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput;->listener:Lcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;

    invoke-interface {v3}, Lcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;->onConnected()V

    .line 258
    :cond_43
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 259
    .local v3, "in":Ljava/io/DataInputStream;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v4

    iput-boolean v4, p0, Lcom/badlogic/gdx/input/RemoteInput;->multiTouch:Z

    .line 261
    :goto_52
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 262
    .local v4, "event":I
    const/4 v5, 0x0

    .line 263
    .local v5, "keyEvent":Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;
    const/4 v6, 0x0

    .line 264
    .local v6, "touchEvent":Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;
    const/4 v7, 0x2

    packed-switch v4, :pswitch_data_19a

    goto/16 :goto_187

    .line 280
    :pswitch_5e  #0x9
    iget-object v8, p0, Lcom/badlogic/gdx/input/RemoteInput;->gyrate:[F

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v9

    aput v9, v8, v0

    .line 281
    iget-object v8, p0, Lcom/badlogic/gdx/input/RemoteInput;->gyrate:[F

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v9

    aput v9, v8, v2

    .line 282
    iget-object v8, p0, Lcom/badlogic/gdx/input/RemoteInput;->gyrate:[F

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v9

    aput v9, v8, v7

    .line 283
    goto/16 :goto_187

    .line 276
    :pswitch_78  #0x8
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v7

    iput v7, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteWidth:F

    .line 277
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v7

    iput v7, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteHeight:F

    .line 278
    goto/16 :goto_187

    .line 271
    :pswitch_86  #0x7
    iget-object v8, p0, Lcom/badlogic/gdx/input/RemoteInput;->compass:[F

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v9

    aput v9, v8, v0

    .line 272
    iget-object v8, p0, Lcom/badlogic/gdx/input/RemoteInput;->compass:[F

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v9

    aput v9, v8, v2

    .line 273
    iget-object v8, p0, Lcom/badlogic/gdx/input/RemoteInput;->compass:[F

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v9

    aput v9, v8, v7

    .line 274
    goto/16 :goto_187

    .line 266
    :pswitch_a0  #0x6
    iget-object v8, p0, Lcom/badlogic/gdx/input/RemoteInput;->accel:[F

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v9

    aput v9, v8, v0

    .line 267
    iget-object v8, p0, Lcom/badlogic/gdx/input/RemoteInput;->accel:[F

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v9

    aput v9, v8, v2

    .line 268
    iget-object v8, p0, Lcom/badlogic/gdx/input/RemoteInput;->accel:[F

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v9

    aput v9, v8, v7

    .line 269
    goto/16 :goto_187

    .line 314
    :pswitch_ba  #0x5
    new-instance v8, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    invoke-direct {v8, p0}, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;-><init>(Lcom/badlogic/gdx/input/RemoteInput;)V

    move-object v6, v8

    .line 315
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteWidth:F

    div-float/2addr v8, v9

    sget-object v9, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v9}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v6, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->x:I

    .line 316
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteHeight:F

    div-float/2addr v8, v9

    sget-object v9, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v9}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v6, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->y:I

    .line 317
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    iput v8, v6, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    .line 318
    iput v7, v6, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->type:I

    goto/16 :goto_187

    .line 307
    :pswitch_f0  #0x4
    new-instance v7, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    invoke-direct {v7, p0}, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;-><init>(Lcom/badlogic/gdx/input/RemoteInput;)V

    move-object v6, v7

    .line 308
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteWidth:F

    div-float/2addr v7, v8

    sget-object v8, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v8}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->x:I

    .line 309
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteHeight:F

    div-float/2addr v7, v8

    sget-object v8, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v8}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->y:I

    .line 310
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v6, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    .line 311
    iput v2, v6, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->type:I

    .line 312
    goto :goto_187

    .line 300
    :pswitch_125  #0x3
    new-instance v7, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    invoke-direct {v7, p0}, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;-><init>(Lcom/badlogic/gdx/input/RemoteInput;)V

    move-object v6, v7

    .line 301
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteWidth:F

    div-float/2addr v7, v8

    sget-object v8, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v8}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->x:I

    .line 302
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteHeight:F

    div-float/2addr v7, v8

    sget-object v8, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v8}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->y:I

    .line 303
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v6, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    .line 304
    iput v0, v6, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->type:I

    .line 305
    goto :goto_187

    .line 295
    :pswitch_15a  #0x2
    new-instance v8, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    invoke-direct {v8, p0}, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;-><init>(Lcom/badlogic/gdx/input/RemoteInput;)V

    move-object v5, v8

    .line 296
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readChar()C

    move-result v8

    iput-char v8, v5, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyChar:C

    .line 297
    iput v7, v5, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->type:I

    .line 298
    goto :goto_187

    .line 290
    :pswitch_169  #0x1
    new-instance v7, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    invoke-direct {v7, p0}, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;-><init>(Lcom/badlogic/gdx/input/RemoteInput;)V

    move-object v5, v7

    .line 291
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v5, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    .line 292
    iput v2, v5, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->type:I

    .line 293
    goto :goto_187

    .line 285
    :pswitch_178  #0x0
    new-instance v7, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    invoke-direct {v7, p0}, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;-><init>(Lcom/badlogic/gdx/input/RemoteInput;)V

    move-object v5, v7

    .line 286
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v5, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    .line 287
    iput v0, v5, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->type:I

    .line 288
    nop

    .line 322
    :goto_187
    sget-object v7, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v8, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;

    invoke-direct {v8, p0, v6, v5}, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;-><init>(Lcom/badlogic/gdx/input/RemoteInput;Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;)V

    invoke-interface {v7, v8}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_191
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_191} :catch_193

    .line 323
    .end local v4  # "event":I
    .end local v5  # "keyEvent":Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;
    .end local v6  # "touchEvent":Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;
    goto/16 :goto_52

    .line 324
    .end local v1  # "socket":Ljava/net/Socket;
    .end local v3  # "in":Ljava/io/DataInputStream;
    :catch_193
    move-exception v0

    .line 325
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 326
    .end local v0  # "e":Ljava/io/IOException;
    goto/16 :goto_1

    nop

    :pswitch_data_19a
    .packed-switch 0x0
        :pswitch_178  #00000000
        :pswitch_169  #00000001
        :pswitch_15a  #00000002
        :pswitch_125  #00000003
        :pswitch_f0  #00000004
        :pswitch_ba  #00000005
        :pswitch_a0  #00000006
        :pswitch_86  #00000007
        :pswitch_78  #00000008
        :pswitch_5e  #00000009
    .end packed-switch
.end method

.method public setCatchBackKey(Z)V
    .registers 2
    .param p1, "catchBack"  # Z

    .line 500
    return-void
.end method

.method public setCatchKey(IZ)V
    .registers 3
    .param p1, "keycode"  # I
    .param p2, "catchKey"  # Z

    .line 520
    return-void
.end method

.method public setCatchMenuKey(Z)V
    .registers 2
    .param p1, "catchMenu"  # Z

    .line 510
    return-void
.end method

.method public setCursorCatched(Z)V
    .registers 2
    .param p1, "catched"  # Z

    .line 563
    return-void
.end method

.method public setCursorPosition(II)V
    .registers 3
    .param p1, "x"  # I
    .param p2, "y"  # I

    .line 592
    return-void
.end method

.method public setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V
    .registers 2
    .param p1, "processor"  # Lcom/badlogic/gdx/InputProcessor;

    .line 529
    iput-object p1, p0, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    .line 530
    return-void
.end method

.method public setOnscreenKeyboardVisible(Z)V
    .registers 2
    .param p1, "visible"  # Z

    .line 461
    return-void
.end method

.method public setOnscreenKeyboardVisible(ZLcom/badlogic/gdx/Input$OnscreenKeyboardType;)V
    .registers 3
    .param p1, "visible"  # Z
    .param p2, "type"  # Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    .line 465
    return-void
.end method

.method public vibrate(I)V
    .registers 2
    .param p1, "milliseconds"  # I

    .line 470
    return-void
.end method

.method public vibrate([JI)V
    .registers 3
    .param p1, "pattern"  # [J
    .param p2, "repeat"  # I

    .line 475
    return-void
.end method
