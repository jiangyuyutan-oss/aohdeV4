.class Lcom/codedisaster/steamworks/SteamHTTPCallbackAdapter;
.super Lcom/codedisaster/steamworks/SteamCallbackAdapter;
.source "SteamHTTPCallbackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codedisaster/steamworks/SteamCallbackAdapter<",
        "Lcom/codedisaster/steamworks/SteamHTTPCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/codedisaster/steamworks/SteamHTTPCallback;)V
    .registers 2
    .param p1, "callback"  # Lcom/codedisaster/steamworks/SteamHTTPCallback;

    .line 7
    invoke-direct {p0, p1}, Lcom/codedisaster/steamworks/SteamCallbackAdapter;-><init>(Ljava/lang/Object;)V

    .line 8
    return-void
.end method


# virtual methods
.method onHTTPRequestCompleted(JJZII)V
    .registers 16
    .param p1, "request"  # J
    .param p3, "contextValue"  # J
    .param p5, "requestSuccessful"  # Z
    .param p6, "statusCode"  # I
    .param p7, "bodySize"  # I

    .line 13
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamHTTPCallbackAdapter;->callback:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/codedisaster/steamworks/SteamHTTPCallback;

    new-instance v2, Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;

    invoke-direct {v2, p1, p2}, Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;-><init>(J)V

    .line 14
    invoke-static {p6}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->byValue(I)Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-result-object v6

    .line 13
    move-wide v3, p3

    move v5, p5

    move v7, p7

    invoke-interface/range {v1 .. v7}, Lcom/codedisaster/steamworks/SteamHTTPCallback;->onHTTPRequestCompleted(Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;JZLcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;I)V

    .line 15
    return-void
.end method

.method onHTTPRequestDataReceived(JJII)V
    .registers 14
    .param p1, "request"  # J
    .param p3, "contextValue"  # J
    .param p5, "offset"  # I
    .param p6, "bytesReceived"  # I

    .line 22
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamHTTPCallbackAdapter;->callback:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/codedisaster/steamworks/SteamHTTPCallback;

    new-instance v2, Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;

    invoke-direct {v2, p1, p2}, Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;-><init>(J)V

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-interface/range {v1 .. v6}, Lcom/codedisaster/steamworks/SteamHTTPCallback;->onHTTPRequestDataReceived(Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;JII)V

    .line 23
    return-void
.end method

.method onHTTPRequestHeadersReceived(JJ)V
    .registers 7
    .param p1, "request"  # J
    .param p3, "contextValue"  # J

    .line 18
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamHTTPCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamHTTPCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;-><init>(J)V

    invoke-interface {v0, v1, p3, p4}, Lcom/codedisaster/steamworks/SteamHTTPCallback;->onHTTPRequestHeadersReceived(Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;J)V

    .line 19
    return-void
.end method
