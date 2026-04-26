.class Lcom/codedisaster/steamworks/SteamUtilsCallbackAdapter;
.super Lcom/codedisaster/steamworks/SteamCallbackAdapter;
.source "SteamUtilsCallbackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codedisaster/steamworks/SteamCallbackAdapter<",
        "Lcom/codedisaster/steamworks/SteamUtilsCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private messageHook:Lcom/codedisaster/steamworks/SteamAPIWarningMessageHook;


# direct methods
.method constructor <init>(Lcom/codedisaster/steamworks/SteamUtilsCallback;)V
    .registers 2
    .param p1, "callback"  # Lcom/codedisaster/steamworks/SteamUtilsCallback;

    .line 9
    invoke-direct {p0, p1}, Lcom/codedisaster/steamworks/SteamCallbackAdapter;-><init>(Ljava/lang/Object;)V

    .line 10
    return-void
.end method


# virtual methods
.method onSteamShutdown()V
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUtilsCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUtilsCallback;

    invoke-interface {v0}, Lcom/codedisaster/steamworks/SteamUtilsCallback;->onSteamShutdown()V

    .line 24
    return-void
.end method

.method onWarningMessage(ILjava/lang/String;)V
    .registers 4
    .param p1, "severity"  # I
    .param p2, "message"  # Ljava/lang/String;

    .line 17
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUtilsCallbackAdapter;->messageHook:Lcom/codedisaster/steamworks/SteamAPIWarningMessageHook;

    if-eqz v0, :cond_9

    .line 18
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUtilsCallbackAdapter;->messageHook:Lcom/codedisaster/steamworks/SteamAPIWarningMessageHook;

    invoke-interface {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamAPIWarningMessageHook;->onWarningMessage(ILjava/lang/String;)V

    .line 20
    :cond_9
    return-void
.end method

.method setWarningMessageHook(Lcom/codedisaster/steamworks/SteamAPIWarningMessageHook;)V
    .registers 2
    .param p1, "messageHook"  # Lcom/codedisaster/steamworks/SteamAPIWarningMessageHook;

    .line 13
    iput-object p1, p0, Lcom/codedisaster/steamworks/SteamUtilsCallbackAdapter;->messageHook:Lcom/codedisaster/steamworks/SteamAPIWarningMessageHook;

    .line 14
    return-void
.end method
