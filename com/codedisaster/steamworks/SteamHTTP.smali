.class public Lcom/codedisaster/steamworks/SteamHTTP;
.super Lcom/codedisaster/steamworks/SteamInterface;
.source "SteamHTTP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;,
        Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;
    }
.end annotation


# instance fields
.field private final isServer:Z


# direct methods
.method public constructor <init>(Lcom/codedisaster/steamworks/SteamHTTPCallback;)V
    .registers 5
    .param p1, "callback"  # Lcom/codedisaster/steamworks/SteamHTTPCallback;

    .line 108
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTPCallbackAdapter;

    invoke-direct {v0, p1}, Lcom/codedisaster/steamworks/SteamHTTPCallbackAdapter;-><init>(Lcom/codedisaster/steamworks/SteamHTTPCallback;)V

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamHTTPNative;->createCallback(Lcom/codedisaster/steamworks/SteamHTTPCallbackAdapter;)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/codedisaster/steamworks/SteamHTTP;-><init>(ZJ)V

    .line 109
    return-void
.end method

.method constructor <init>(ZJ)V
    .registers 4
    .param p1, "isServer"  # Z
    .param p2, "callback"  # J

    .line 112
    invoke-direct {p0, p2, p3}, Lcom/codedisaster/steamworks/SteamInterface;-><init>(J)V

    .line 113
    iput-boolean p1, p0, Lcom/codedisaster/steamworks/SteamHTTP;->isServer:Z

    .line 114
    return-void
.end method


# virtual methods
.method public createHTTPRequest(Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;
    .registers 6
    .param p1, "requestMethod"  # Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;
    .param p2, "absoluteURL"  # Ljava/lang/String;

    .line 117
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;

    iget-boolean v1, p0, Lcom/codedisaster/steamworks/SteamHTTP;->isServer:Z

    invoke-virtual {p1}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;->ordinal()I

    move-result v2

    invoke-static {v1, v2, p2}, Lcom/codedisaster/steamworks/SteamHTTPNative;->createHTTPRequest(ZILjava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;-><init>(J)V

    return-object v0
.end method

.method public bridge synthetic dispose()V
    .registers 1

    .line 5
    invoke-super {p0}, Lcom/codedisaster/steamworks/SteamInterface;->dispose()V

    return-void
.end method

.method public getHTTPResponseBodyData(Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;Ljava/nio/ByteBuffer;)Z
    .registers 10
    .param p1, "request"  # Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;
    .param p2, "data"  # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    .line 169
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 173
    iget-boolean v1, p0, Lcom/codedisaster/steamworks/SteamHTTP;->isServer:Z

    iget-wide v2, p1, Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;->handle:J

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/codedisaster/steamworks/SteamHTTPNative;->getHTTPResponseBodyData(ZJLjava/nio/ByteBuffer;II)Z

    move-result v0

    return v0

    .line 170
    :cond_18
    new-instance v0, Lcom/codedisaster/steamworks/SteamException;

    const-string v1, "Direct buffer required!"

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHTTPResponseBodySize(Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;)I
    .registers 5
    .param p1, "request"  # Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;

    .line 164
    iget-boolean v0, p0, Lcom/codedisaster/steamworks/SteamHTTP;->isServer:Z

    iget-wide v1, p1, Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;->handle:J

    invoke-static {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTPNative;->getHTTPResponseBodySize(ZJ)I

    move-result v0

    return v0
.end method

.method public getHTTPResponseHeaderSize(Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;Ljava/lang/String;)I
    .registers 6
    .param p1, "request"  # Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;
    .param p2, "headerName"  # Ljava/lang/String;

    .line 149
    iget-boolean v0, p0, Lcom/codedisaster/steamworks/SteamHTTP;->isServer:Z

    iget-wide v1, p1, Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;->handle:J

    invoke-static {v0, v1, v2, p2}, Lcom/codedisaster/steamworks/SteamHTTPNative;->getHTTPResponseHeaderSize(ZJLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getHTTPResponseHeaderValue(Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;Ljava/lang/String;Ljava/nio/ByteBuffer;)Z
    .registers 12
    .param p1, "request"  # Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;
    .param p2, "headerName"  # Ljava/lang/String;
    .param p3, "value"  # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    .line 155
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 159
    iget-boolean v1, p0, Lcom/codedisaster/steamworks/SteamHTTP;->isServer:Z

    iget-wide v2, p1, Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;->handle:J

    .line 160
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    .line 159
    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Lcom/codedisaster/steamworks/SteamHTTPNative;->getHTTPResponseHeaderValue(ZJLjava/lang/String;Ljava/nio/ByteBuffer;II)Z

    move-result v0

    return v0

    .line 156
    :cond_19
    new-instance v0, Lcom/codedisaster/steamworks/SteamException;

    const-string v1, "Direct buffer required!"

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHTTPStreamingResponseBodyData(Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;ILjava/nio/ByteBuffer;)Z
    .registers 12
    .param p1, "request"  # Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;
    .param p2, "bodyDataOffset"  # I
    .param p3, "data"  # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    .line 179
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 183
    iget-boolean v1, p0, Lcom/codedisaster/steamworks/SteamHTTP;->isServer:Z

    iget-wide v2, p1, Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;->handle:J

    .line 184
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    .line 183
    move v4, p2

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Lcom/codedisaster/steamworks/SteamHTTPNative;->getHTTPStreamingResponseBodyData(ZJILjava/nio/ByteBuffer;II)Z

    move-result v0

    return v0

    .line 180
    :cond_19
    new-instance v0, Lcom/codedisaster/steamworks/SteamException;

    const-string v1, "Direct buffer required!"

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public releaseHTTPRequest(Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;)Z
    .registers 5
    .param p1, "request"  # Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;

    .line 188
    iget-boolean v0, p0, Lcom/codedisaster/steamworks/SteamHTTP;->isServer:Z

    iget-wide v1, p1, Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;->handle:J

    invoke-static {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTPNative;->releaseHTTPRequest(ZJ)Z

    move-result v0

    return v0
.end method

.method public sendHTTPRequest(Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;)Lcom/codedisaster/steamworks/SteamAPICall;
    .registers 8
    .param p1, "request"  # Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;

    .line 141
    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-boolean v1, p0, Lcom/codedisaster/steamworks/SteamHTTP;->isServer:Z

    iget-wide v2, p0, Lcom/codedisaster/steamworks/SteamHTTP;->callback:J

    iget-wide v4, p1, Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;->handle:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/codedisaster/steamworks/SteamHTTPNative;->sendHTTPRequest(ZJJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public sendHTTPRequestAndStreamResponse(Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;)Lcom/codedisaster/steamworks/SteamAPICall;
    .registers 6
    .param p1, "request"  # Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;

    .line 145
    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-boolean v1, p0, Lcom/codedisaster/steamworks/SteamHTTP;->isServer:Z

    iget-wide v2, p1, Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;->handle:J

    invoke-static {v1, v2, v3}, Lcom/codedisaster/steamworks/SteamHTTPNative;->sendHTTPRequestAndStreamResponse(ZJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public setHTTPRequestContextValue(Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;J)Z
    .registers 7
    .param p1, "request"  # Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;
    .param p2, "contextValue"  # J

    .line 121
    iget-boolean v0, p0, Lcom/codedisaster/steamworks/SteamHTTP;->isServer:Z

    iget-wide v1, p1, Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;->handle:J

    invoke-static {v0, v1, v2, p2, p3}, Lcom/codedisaster/steamworks/SteamHTTPNative;->setHTTPRequestContextValue(ZJJ)Z

    move-result v0

    return v0
.end method

.method public setHTTPRequestGetOrPostParameter(Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "request"  # Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;
    .param p2, "paramName"  # Ljava/lang/String;
    .param p3, "paramValue"  # Ljava/lang/String;

    .line 137
    iget-boolean v0, p0, Lcom/codedisaster/steamworks/SteamHTTP;->isServer:Z

    iget-wide v1, p1, Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;->handle:J

    invoke-static {v0, v1, v2, p2, p3}, Lcom/codedisaster/steamworks/SteamHTTPNative;->setHTTPRequestGetOrPostParameter(ZJLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setHTTPRequestHeaderValue(Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "request"  # Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;
    .param p2, "headerName"  # Ljava/lang/String;
    .param p3, "headerValue"  # Ljava/lang/String;

    .line 131
    iget-boolean v0, p0, Lcom/codedisaster/steamworks/SteamHTTP;->isServer:Z

    iget-wide v1, p1, Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;->handle:J

    invoke-static {v0, v1, v2, p2, p3}, Lcom/codedisaster/steamworks/SteamHTTPNative;->setHTTPRequestHeaderValue(ZJLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setHTTPRequestNetworkActivityTimeout(Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;I)Z
    .registers 6
    .param p1, "request"  # Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;
    .param p2, "timeoutSeconds"  # I

    .line 125
    iget-boolean v0, p0, Lcom/codedisaster/steamworks/SteamHTTP;->isServer:Z

    iget-wide v1, p1, Lcom/codedisaster/steamworks/SteamHTTPRequestHandle;->handle:J

    invoke-static {v0, v1, v2, p2}, Lcom/codedisaster/steamworks/SteamHTTPNative;->setHTTPRequestNetworkActivityTimeout(ZJI)Z

    move-result v0

    return v0
.end method
