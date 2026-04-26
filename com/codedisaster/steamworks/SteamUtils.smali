.class public Lcom/codedisaster/steamworks/SteamUtils;
.super Lcom/codedisaster/steamworks/SteamInterface;
.source "SteamUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;,
        Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;,
        Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;
    }
.end annotation


# instance fields
.field private final callbackAdapter:Lcom/codedisaster/steamworks/SteamUtilsCallbackAdapter;


# direct methods
.method public constructor <init>(Lcom/codedisaster/steamworks/SteamUtilsCallback;)V
    .registers 4
    .param p1, "callback"  # Lcom/codedisaster/steamworks/SteamUtilsCallback;

    .line 48
    invoke-direct {p0}, Lcom/codedisaster/steamworks/SteamInterface;-><init>()V

    .line 49
    new-instance v0, Lcom/codedisaster/steamworks/SteamUtilsCallbackAdapter;

    invoke-direct {v0, p1}, Lcom/codedisaster/steamworks/SteamUtilsCallbackAdapter;-><init>(Lcom/codedisaster/steamworks/SteamUtilsCallback;)V

    iput-object v0, p0, Lcom/codedisaster/steamworks/SteamUtils;->callbackAdapter:Lcom/codedisaster/steamworks/SteamUtilsCallbackAdapter;

    .line 50
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUtils;->callbackAdapter:Lcom/codedisaster/steamworks/SteamUtilsCallbackAdapter;

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamUtilsNative;->createCallback(Lcom/codedisaster/steamworks/SteamUtilsCallbackAdapter;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/codedisaster/steamworks/SteamUtils;->setCallback(J)V

    .line 51
    return-void
.end method


# virtual methods
.method public dismissFloatingGamepadTextInput()Z
    .registers 2

    .line 123
    invoke-static {}, Lcom/codedisaster/steamworks/SteamUtilsNative;->dismissFloatingGamepadTextInput()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic dispose()V
    .registers 1

    .line 5
    invoke-super {p0}, Lcom/codedisaster/steamworks/SteamInterface;->dispose()V

    return-void
.end method

.method public getAPICallFailureReason(Lcom/codedisaster/steamworks/SteamAPICall;)Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;
    .registers 4
    .param p1, "handle"  # Lcom/codedisaster/steamworks/SteamAPICall;

    .line 99
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamAPICall;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamUtilsNative;->getAPICallFailureReason(J)I

    move-result v0

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;->byValue(I)Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;

    move-result-object v0

    return-object v0
.end method

.method public getAppID()I
    .registers 2

    .line 87
    invoke-static {}, Lcom/codedisaster/steamworks/SteamUtilsNative;->getAppID()I

    move-result v0

    return v0
.end method

.method public getConnectedUniverse()Lcom/codedisaster/steamworks/SteamUniverse;
    .registers 2

    .line 62
    invoke-static {}, Lcom/codedisaster/steamworks/SteamUtilsNative;->getConnectedUniverse()I

    move-result v0

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamUniverse;->byValue(I)Lcom/codedisaster/steamworks/SteamUniverse;

    move-result-object v0

    return-object v0
.end method

.method public getImageHeight(I)I
    .registers 3
    .param p1, "image"  # I

    .line 74
    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamUtilsNative;->getImageHeight(I)I

    move-result v0

    return v0
.end method

.method public getImageRGBA(ILjava/nio/ByteBuffer;)Z
    .registers 5
    .param p1, "image"  # I
    .param p2, "dest"  # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0, p2}, Lcom/codedisaster/steamworks/SteamUtils;->checkBuffer(Ljava/nio/Buffer;)V

    .line 83
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {p1, p2, v0, v1}, Lcom/codedisaster/steamworks/SteamUtilsNative;->getImageRGBA(ILjava/nio/ByteBuffer;II)Z

    move-result v0

    return v0
.end method

.method public getImageSize(I[I)Z
    .registers 4
    .param p1, "image"  # I
    .param p2, "size"  # [I

    .line 78
    invoke-static {p1, p2}, Lcom/codedisaster/steamworks/SteamUtilsNative;->getImageSize(I[I)Z

    move-result v0

    return v0
.end method

.method public getImageWidth(I)I
    .registers 3
    .param p1, "image"  # I

    .line 70
    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamUtilsNative;->getImageWidth(I)I

    move-result v0

    return v0
.end method

.method public getSecondsSinceAppActive()I
    .registers 2

    .line 54
    invoke-static {}, Lcom/codedisaster/steamworks/SteamUtilsNative;->getSecondsSinceAppActive()I

    move-result v0

    return v0
.end method

.method public getSecondsSinceComputerActive()I
    .registers 2

    .line 58
    invoke-static {}, Lcom/codedisaster/steamworks/SteamUtilsNative;->getSecondsSinceComputerActive()I

    move-result v0

    return v0
.end method

.method public getServerRealTime()I
    .registers 2

    .line 66
    invoke-static {}, Lcom/codedisaster/steamworks/SteamUtilsNative;->getServerRealTime()I

    move-result v0

    return v0
.end method

.method public isAPICallCompleted(Lcom/codedisaster/steamworks/SteamAPICall;[Z)Z
    .registers 5
    .param p1, "handle"  # Lcom/codedisaster/steamworks/SteamAPICall;
    .param p2, "result"  # [Z

    .line 95
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamAPICall;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUtilsNative;->isAPICallCompleted(J[Z)Z

    move-result v0

    return v0
.end method

.method public isOverlayEnabled()Z
    .registers 2

    .line 108
    invoke-static {}, Lcom/codedisaster/steamworks/SteamUtilsNative;->isOverlayEnabled()Z

    move-result v0

    return v0
.end method

.method public isSteamRunningOnSteamDeck()Z
    .registers 2

    .line 112
    invoke-static {}, Lcom/codedisaster/steamworks/SteamUtilsNative;->isSteamRunningOnSteamDeck()Z

    move-result v0

    return v0
.end method

.method public setOverlayNotificationPosition(Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;)V
    .registers 3
    .param p1, "position"  # Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;

    .line 91
    invoke-virtual {p1}, Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamUtilsNative;->setOverlayNotificationPosition(I)V

    .line 92
    return-void
.end method

.method public setWarningMessageHook(Lcom/codedisaster/steamworks/SteamAPIWarningMessageHook;)V
    .registers 5
    .param p1, "messageHook"  # Lcom/codedisaster/steamworks/SteamAPIWarningMessageHook;

    .line 103
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUtils;->callbackAdapter:Lcom/codedisaster/steamworks/SteamUtilsCallbackAdapter;

    invoke-virtual {v0, p1}, Lcom/codedisaster/steamworks/SteamUtilsCallbackAdapter;->setWarningMessageHook(Lcom/codedisaster/steamworks/SteamAPIWarningMessageHook;)V

    .line 104
    iget-wide v0, p0, Lcom/codedisaster/steamworks/SteamUtils;->callback:J

    if-eqz p1, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    invoke-static {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUtilsNative;->enableWarningMessageHook(JZ)V

    .line 105
    return-void
.end method

.method public showFloatingGamepadTextInput(Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;IIII)Z
    .registers 7
    .param p1, "keyboardMode"  # Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;
    .param p2, "textFieldXPosition"  # I
    .param p3, "textFieldYPosition"  # I
    .param p4, "textFieldWidth"  # I
    .param p5, "textFieldHeight"  # I

    .line 118
    invoke-virtual {p1}, Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;->ordinal()I

    move-result v0

    invoke-static {v0, p2, p3, p4, p5}, Lcom/codedisaster/steamworks/SteamUtilsNative;->showFloatingGamepadTextInput(IIIII)Z

    move-result v0

    return v0
.end method
