.class public Lcom/codedisaster/steamworks/SteamController;
.super Lcom/codedisaster/steamworks/SteamInterface;
.source "SteamController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codedisaster/steamworks/SteamController$LEDFlag;,
        Lcom/codedisaster/steamworks/SteamController$InputType;,
        Lcom/codedisaster/steamworks/SteamController$XboxOrigin;,
        Lcom/codedisaster/steamworks/SteamController$ActionOrigin;,
        Lcom/codedisaster/steamworks/SteamController$SourceMode;,
        Lcom/codedisaster/steamworks/SteamController$Source;,
        Lcom/codedisaster/steamworks/SteamController$Pad;
    }
.end annotation


# static fields
.field public static final STEAM_CONTROLLER_HANDLE_ALL_CONTROLLERS:J = -0x1L

.field public static final STEAM_CONTROLLER_MAX_ANALOG_ACTIONS:I = 0x10

.field public static final STEAM_CONTROLLER_MAX_ANALOG_ACTION_DATA:F = 1.0f

.field public static final STEAM_CONTROLLER_MAX_COUNT:I = 0x10

.field public static final STEAM_CONTROLLER_MAX_DIGITAL_ACTIONS:I = 0x80

.field public static final STEAM_CONTROLLER_MAX_ORIGINS:I = 0x8

.field public static final STEAM_CONTROLLER_MIN_ANALOG_ACTION_DATA:F = -1.0f


# instance fields
.field private final actionOrigins:[I

.field private final controllerHandles:[J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 526
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/codedisaster/steamworks/SteamInterface;-><init>(J)V

    .line 522
    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/codedisaster/steamworks/SteamController;->controllerHandles:[J

    .line 523
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/codedisaster/steamworks/SteamController;->actionOrigins:[I

    .line 527
    return-void
.end method


# virtual methods
.method public activateActionSet(Lcom/codedisaster/steamworks/SteamControllerHandle;Lcom/codedisaster/steamworks/SteamControllerActionSetHandle;)V
    .registers 7
    .param p1, "controller"  # Lcom/codedisaster/steamworks/SteamControllerHandle;
    .param p2, "actionSet"  # Lcom/codedisaster/steamworks/SteamControllerActionSetHandle;

    .line 564
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamControllerHandle;->handle:J

    iget-wide v2, p2, Lcom/codedisaster/steamworks/SteamControllerActionSetHandle;->handle:J

    invoke-static {v0, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamControllerNative;->activateActionSet(JJ)V

    .line 565
    return-void
.end method

.method public bridge synthetic dispose()V
    .registers 1

    .line 3
    invoke-super {p0}, Lcom/codedisaster/steamworks/SteamInterface;->dispose()V

    return-void
.end method

.method public getActionSetHandle(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamControllerActionSetHandle;
    .registers 5
    .param p1, "actionSetName"  # Ljava/lang/String;

    .line 560
    new-instance v0, Lcom/codedisaster/steamworks/SteamControllerActionSetHandle;

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamControllerNative;->getActionSetHandle(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamControllerActionSetHandle;-><init>(J)V

    return-object v0
.end method

.method public getAnalogActionData(Lcom/codedisaster/steamworks/SteamControllerHandle;Lcom/codedisaster/steamworks/SteamControllerAnalogActionHandle;Lcom/codedisaster/steamworks/SteamControllerAnalogActionData;)V
    .registers 8
    .param p1, "controller"  # Lcom/codedisaster/steamworks/SteamControllerHandle;
    .param p2, "analogAction"  # Lcom/codedisaster/steamworks/SteamControllerAnalogActionHandle;
    .param p3, "analoglActionData"  # Lcom/codedisaster/steamworks/SteamControllerAnalogActionData;

    .line 609
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamControllerHandle;->handle:J

    iget-wide v2, p2, Lcom/codedisaster/steamworks/SteamControllerAnalogActionHandle;->handle:J

    invoke-static {v0, v1, v2, v3, p3}, Lcom/codedisaster/steamworks/SteamControllerNative;->getAnalogActionData(JJLcom/codedisaster/steamworks/SteamControllerAnalogActionData;)V

    .line 610
    return-void
.end method

.method public getAnalogActionHandle(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamControllerAnalogActionHandle;
    .registers 5
    .param p1, "actionName"  # Ljava/lang/String;

    .line 602
    new-instance v0, Lcom/codedisaster/steamworks/SteamControllerAnalogActionHandle;

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamControllerNative;->getAnalogActionHandle(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamControllerAnalogActionHandle;-><init>(J)V

    return-object v0
.end method

.method public getAnalogActionOrigins(Lcom/codedisaster/steamworks/SteamControllerHandle;Lcom/codedisaster/steamworks/SteamControllerActionSetHandle;Lcom/codedisaster/steamworks/SteamControllerAnalogActionHandle;[Lcom/codedisaster/steamworks/SteamController$ActionOrigin;)I
    .registers 14
    .param p1, "controller"  # Lcom/codedisaster/steamworks/SteamControllerHandle;
    .param p2, "actionSet"  # Lcom/codedisaster/steamworks/SteamControllerActionSetHandle;
    .param p3, "analogAction"  # Lcom/codedisaster/steamworks/SteamControllerAnalogActionHandle;
    .param p4, "originsOut"  # [Lcom/codedisaster/steamworks/SteamController$ActionOrigin;

    .line 617
    array-length v0, p4

    const/16 v1, 0x8

    if-lt v0, v1, :cond_22

    .line 621
    iget-wide v2, p1, Lcom/codedisaster/steamworks/SteamControllerHandle;->handle:J

    iget-wide v4, p2, Lcom/codedisaster/steamworks/SteamControllerActionSetHandle;->handle:J

    iget-wide v6, p3, Lcom/codedisaster/steamworks/SteamControllerAnalogActionHandle;->handle:J

    iget-object v8, p0, Lcom/codedisaster/steamworks/SteamController;->actionOrigins:[I

    invoke-static/range {v2 .. v8}, Lcom/codedisaster/steamworks/SteamControllerNative;->getAnalogActionOrigins(JJJ[I)I

    move-result v0

    .line 624
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v0, :cond_21

    .line 625
    iget-object v2, p0, Lcom/codedisaster/steamworks/SteamController;->actionOrigins:[I

    aget v2, v2, v1

    invoke-static {v2}, Lcom/codedisaster/steamworks/SteamController$ActionOrigin;->byOrdinal(I)Lcom/codedisaster/steamworks/SteamController$ActionOrigin;

    move-result-object v2

    aput-object v2, p4, v1

    .line 624
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 628
    .end local v1  # "i":I
    :cond_21
    return v0

    .line 618
    .end local v0  # "count":I
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array size must be at least STEAM_CONTROLLER_MAX_ORIGINS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConnectedControllers([Lcom/codedisaster/steamworks/SteamControllerHandle;)I
    .registers 8
    .param p1, "handlesOut"  # [Lcom/codedisaster/steamworks/SteamControllerHandle;

    .line 542
    array-length v0, p1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1d

    .line 546
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamController;->controllerHandles:[J

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamControllerNative;->getConnectedControllers([J)I

    move-result v0

    .line 548
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_1c

    .line 549
    new-instance v2, Lcom/codedisaster/steamworks/SteamControllerHandle;

    iget-object v3, p0, Lcom/codedisaster/steamworks/SteamController;->controllerHandles:[J

    aget-wide v4, v3, v1

    invoke-direct {v2, v4, v5}, Lcom/codedisaster/steamworks/SteamControllerHandle;-><init>(J)V

    aput-object v2, p1, v1

    .line 548
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 552
    .end local v1  # "i":I
    :cond_1c
    return v0

    .line 543
    .end local v0  # "count":I
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array size must be at least STEAM_CONTROLLER_MAX_COUNT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getControllerForGamepadIndex(I)Lcom/codedisaster/steamworks/SteamControllerHandle;
    .registers 5
    .param p1, "index"  # I

    .line 662
    new-instance v0, Lcom/codedisaster/steamworks/SteamControllerHandle;

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamControllerNative;->getControllerForGamepadIndex(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamControllerHandle;-><init>(J)V

    return-object v0
.end method

.method public getCurrentActionSet(Lcom/codedisaster/steamworks/SteamControllerHandle;)Lcom/codedisaster/steamworks/SteamControllerActionSetHandle;
    .registers 5
    .param p1, "controller"  # Lcom/codedisaster/steamworks/SteamControllerHandle;

    .line 568
    new-instance v0, Lcom/codedisaster/steamworks/SteamControllerActionSetHandle;

    iget-wide v1, p1, Lcom/codedisaster/steamworks/SteamControllerHandle;->handle:J

    invoke-static {v1, v2}, Lcom/codedisaster/steamworks/SteamControllerNative;->getCurrentActionSet(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamControllerActionSetHandle;-><init>(J)V

    return-object v0
.end method

.method public getDigitalActionData(Lcom/codedisaster/steamworks/SteamControllerHandle;Lcom/codedisaster/steamworks/SteamControllerDigitalActionHandle;Lcom/codedisaster/steamworks/SteamControllerDigitalActionData;)V
    .registers 8
    .param p1, "controller"  # Lcom/codedisaster/steamworks/SteamControllerHandle;
    .param p2, "digitalAction"  # Lcom/codedisaster/steamworks/SteamControllerDigitalActionHandle;
    .param p3, "digitalActionData"  # Lcom/codedisaster/steamworks/SteamControllerDigitalActionData;

    .line 579
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamControllerHandle;->handle:J

    iget-wide v2, p2, Lcom/codedisaster/steamworks/SteamControllerDigitalActionHandle;->handle:J

    invoke-static {v0, v1, v2, v3, p3}, Lcom/codedisaster/steamworks/SteamControllerNative;->getDigitalActionData(JJLcom/codedisaster/steamworks/SteamControllerDigitalActionData;)V

    .line 580
    return-void
.end method

.method public getDigitalActionHandle(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamControllerDigitalActionHandle;
    .registers 5
    .param p1, "actionName"  # Ljava/lang/String;

    .line 572
    new-instance v0, Lcom/codedisaster/steamworks/SteamControllerDigitalActionHandle;

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamControllerNative;->getDigitalActionHandle(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamControllerDigitalActionHandle;-><init>(J)V

    return-object v0
.end method

.method public getDigitalActionOrigins(Lcom/codedisaster/steamworks/SteamControllerHandle;Lcom/codedisaster/steamworks/SteamControllerActionSetHandle;Lcom/codedisaster/steamworks/SteamControllerDigitalActionHandle;[Lcom/codedisaster/steamworks/SteamController$ActionOrigin;)I
    .registers 14
    .param p1, "controller"  # Lcom/codedisaster/steamworks/SteamControllerHandle;
    .param p2, "actionSet"  # Lcom/codedisaster/steamworks/SteamControllerActionSetHandle;
    .param p3, "digitalAction"  # Lcom/codedisaster/steamworks/SteamControllerDigitalActionHandle;
    .param p4, "originsOut"  # [Lcom/codedisaster/steamworks/SteamController$ActionOrigin;

    .line 587
    array-length v0, p4

    const/16 v1, 0x8

    if-lt v0, v1, :cond_22

    .line 591
    iget-wide v2, p1, Lcom/codedisaster/steamworks/SteamControllerHandle;->handle:J

    iget-wide v4, p2, Lcom/codedisaster/steamworks/SteamControllerActionSetHandle;->handle:J

    iget-wide v6, p3, Lcom/codedisaster/steamworks/SteamControllerDigitalActionHandle;->handle:J

    iget-object v8, p0, Lcom/codedisaster/steamworks/SteamController;->actionOrigins:[I

    invoke-static/range {v2 .. v8}, Lcom/codedisaster/steamworks/SteamControllerNative;->getDigitalActionOrigins(JJJ[I)I

    move-result v0

    .line 594
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v0, :cond_21

    .line 595
    iget-object v2, p0, Lcom/codedisaster/steamworks/SteamController;->actionOrigins:[I

    aget v2, v2, v1

    invoke-static {v2}, Lcom/codedisaster/steamworks/SteamController$ActionOrigin;->byOrdinal(I)Lcom/codedisaster/steamworks/SteamController$ActionOrigin;

    move-result-object v2

    aput-object v2, p4, v1

    .line 594
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 598
    .end local v1  # "i":I
    :cond_21
    return v0

    .line 588
    .end local v0  # "count":I
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array size must be at least STEAM_CONTROLLER_MAX_ORIGINS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGamepadIndexForController(Lcom/codedisaster/steamworks/SteamControllerHandle;)I
    .registers 4
    .param p1, "controller"  # Lcom/codedisaster/steamworks/SteamControllerHandle;

    .line 658
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamControllerHandle;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamControllerNative;->getGamepadIndexForController(J)I

    move-result v0

    return v0
.end method

.method public getGlyphForActionOrigin(Lcom/codedisaster/steamworks/SteamController$ActionOrigin;)Ljava/lang/String;
    .registers 3
    .param p1, "origin"  # Lcom/codedisaster/steamworks/SteamController$ActionOrigin;

    .line 674
    invoke-virtual {p1}, Lcom/codedisaster/steamworks/SteamController$ActionOrigin;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamControllerNative;->getGlyphForActionOrigin(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputTypeForHandle(Lcom/codedisaster/steamworks/SteamControllerHandle;)Lcom/codedisaster/steamworks/SteamController$InputType;
    .registers 4
    .param p1, "controller"  # Lcom/codedisaster/steamworks/SteamControllerHandle;

    .line 678
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamControllerHandle;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamControllerNative;->getInputTypeForHandle(J)I

    move-result v0

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamController$InputType;->byOrdinal(I)Lcom/codedisaster/steamworks/SteamController$InputType;

    move-result-object v0

    return-object v0
.end method

.method public getMotionData(Lcom/codedisaster/steamworks/SteamControllerHandle;Lcom/codedisaster/steamworks/SteamControllerMotionData;)V
    .registers 6
    .param p1, "controller"  # Lcom/codedisaster/steamworks/SteamControllerHandle;
    .param p2, "motionData"  # Lcom/codedisaster/steamworks/SteamControllerMotionData;

    .line 666
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamControllerHandle;->handle:J

    iget-object v2, p2, Lcom/codedisaster/steamworks/SteamControllerMotionData;->data:[F

    invoke-static {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamControllerNative;->getMotionData(J[F)V

    .line 667
    return-void
.end method

.method public getStringForActionOrigin(Lcom/codedisaster/steamworks/SteamController$ActionOrigin;)Ljava/lang/String;
    .registers 3
    .param p1, "origin"  # Lcom/codedisaster/steamworks/SteamController$ActionOrigin;

    .line 670
    invoke-virtual {p1}, Lcom/codedisaster/steamworks/SteamController$ActionOrigin;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamControllerNative;->getStringForActionOrigin(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()Z
    .registers 2

    .line 530
    invoke-static {}, Lcom/codedisaster/steamworks/SteamControllerNative;->init()Z

    move-result v0

    return v0
.end method

.method public runFrame()V
    .registers 1

    .line 538
    invoke-static {}, Lcom/codedisaster/steamworks/SteamControllerNative;->runFrame()V

    .line 539
    return-void
.end method

.method public setLEDColor(Lcom/codedisaster/steamworks/SteamControllerHandle;IIILcom/codedisaster/steamworks/SteamController$LEDFlag;)V
    .registers 12
    .param p1, "controller"  # Lcom/codedisaster/steamworks/SteamControllerHandle;
    .param p2, "colorR"  # I
    .param p3, "colorG"  # I
    .param p4, "colorB"  # I
    .param p5, "flags"  # Lcom/codedisaster/steamworks/SteamController$LEDFlag;

    .line 653
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamControllerHandle;->handle:J

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    and-int/lit16 v3, p3, 0xff

    int-to-byte v3, v3

    and-int/lit16 v4, p4, 0xff

    int-to-byte v4, v4

    .line 654
    invoke-virtual {p5}, Lcom/codedisaster/steamworks/SteamController$LEDFlag;->ordinal()I

    move-result v5

    .line 653
    invoke-static/range {v0 .. v5}, Lcom/codedisaster/steamworks/SteamControllerNative;->setLEDColor(JBBBI)V

    .line 655
    return-void
.end method

.method public showBindingPanel(Lcom/codedisaster/steamworks/SteamControllerHandle;)Z
    .registers 4
    .param p1, "controller"  # Lcom/codedisaster/steamworks/SteamControllerHandle;

    .line 556
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamControllerHandle;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamControllerNative;->showBindingPanel(J)Z

    move-result v0

    return v0
.end method

.method public shutdown()Z
    .registers 2

    .line 534
    invoke-static {}, Lcom/codedisaster/steamworks/SteamControllerNative;->shutdown()Z

    move-result v0

    return v0
.end method

.method public stopAnalogActionMomentum(Lcom/codedisaster/steamworks/SteamControllerHandle;Lcom/codedisaster/steamworks/SteamControllerAnalogActionHandle;)V
    .registers 7
    .param p1, "controller"  # Lcom/codedisaster/steamworks/SteamControllerHandle;
    .param p2, "analogAction"  # Lcom/codedisaster/steamworks/SteamControllerAnalogActionHandle;

    .line 634
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamControllerHandle;->handle:J

    iget-wide v2, p2, Lcom/codedisaster/steamworks/SteamControllerAnalogActionHandle;->handle:J

    invoke-static {v0, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamControllerNative;->stopAnalogActionMomentum(JJ)V

    .line 635
    return-void
.end method

.method public triggerHapticPulse(Lcom/codedisaster/steamworks/SteamControllerHandle;Lcom/codedisaster/steamworks/SteamController$Pad;I)V
    .registers 7
    .param p1, "controller"  # Lcom/codedisaster/steamworks/SteamControllerHandle;
    .param p2, "targetPad"  # Lcom/codedisaster/steamworks/SteamController$Pad;
    .param p3, "durationMicroSec"  # I

    .line 638
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamControllerHandle;->handle:J

    invoke-virtual {p2}, Lcom/codedisaster/steamworks/SteamController$Pad;->ordinal()I

    move-result v2

    invoke-static {v0, v1, v2, p3}, Lcom/codedisaster/steamworks/SteamControllerNative;->triggerHapticPulse(JII)V

    .line 639
    return-void
.end method

.method public triggerRepeatedHapticPulse(Lcom/codedisaster/steamworks/SteamControllerHandle;Lcom/codedisaster/steamworks/SteamController$Pad;IIII)V
    .registers 14
    .param p1, "controller"  # Lcom/codedisaster/steamworks/SteamControllerHandle;
    .param p2, "targetPad"  # Lcom/codedisaster/steamworks/SteamController$Pad;
    .param p3, "durationMicroSec"  # I
    .param p4, "offMicroSec"  # I
    .param p5, "repeat"  # I
    .param p6, "flags"  # I

    .line 644
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamControllerHandle;->handle:J

    invoke-virtual {p2}, Lcom/codedisaster/steamworks/SteamController$Pad;->ordinal()I

    move-result v2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/codedisaster/steamworks/SteamControllerNative;->triggerRepeatedHapticPulse(JIIIII)V

    .line 646
    return-void
.end method

.method public triggerVibration(Lcom/codedisaster/steamworks/SteamControllerHandle;SS)V
    .registers 6
    .param p1, "controller"  # Lcom/codedisaster/steamworks/SteamControllerHandle;
    .param p2, "leftSpeed"  # S
    .param p3, "rightSpeed"  # S

    .line 649
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamControllerHandle;->handle:J

    invoke-static {v0, v1, p2, p3}, Lcom/codedisaster/steamworks/SteamControllerNative;->triggerVibration(JSS)V

    .line 650
    return-void
.end method
