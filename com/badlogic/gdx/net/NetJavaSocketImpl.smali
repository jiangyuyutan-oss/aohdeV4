.class public Lcom/badlogic/gdx/net/NetJavaSocketImpl;
.super Ljava/lang/Object;
.source "NetJavaSocketImpl.java"

# interfaces
.implements Lcom/badlogic/gdx/net/Socket;


# instance fields
.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/Net$Protocol;Ljava/lang/String;ILcom/badlogic/gdx/net/SocketHints;)V
    .registers 9
    .param p1, "protocol"  # Lcom/badlogic/gdx/Net$Protocol;
    .param p2, "host"  # Ljava/lang/String;
    .param p3, "port"  # I
    .param p4, "hints"  # Lcom/badlogic/gdx/net/SocketHints;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    :try_start_3
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    .line 39
    invoke-direct {p0, p4}, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->applyHints(Lcom/badlogic/gdx/net/SocketHints;)V

    .line 42
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 43
    .local v0, "address":Ljava/net/InetSocketAddress;
    if-eqz p4, :cond_1c

    .line 44
    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    iget v2, p4, Lcom/badlogic/gdx/net/SocketHints;->connectTimeout:I

    invoke-virtual {v1, v0, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    goto :goto_21

    .line 46
    :cond_1c
    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v1, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_21} :catch_23

    .line 50
    .end local v0  # "address":Ljava/net/InetSocketAddress;
    :goto_21
    nop

    .line 51
    return-void

    .line 48
    :catch_23
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error making a socket connection to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/net/Socket;Lcom/badlogic/gdx/net/SocketHints;)V
    .registers 3
    .param p1, "socket"  # Ljava/net/Socket;
    .param p2, "hints"  # Lcom/badlogic/gdx/net/SocketHints;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    .line 55
    invoke-direct {p0, p2}, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->applyHints(Lcom/badlogic/gdx/net/SocketHints;)V

    .line 56
    return-void
.end method

.method private applyHints(Lcom/badlogic/gdx/net/SocketHints;)V
    .registers 6
    .param p1, "hints"  # Lcom/badlogic/gdx/net/SocketHints;

    .line 59
    if-eqz p1, :cond_4a

    .line 61
    :try_start_2
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    iget v1, p1, Lcom/badlogic/gdx/net/SocketHints;->performancePrefConnectionTime:I

    iget v2, p1, Lcom/badlogic/gdx/net/SocketHints;->performancePrefLatency:I

    iget v3, p1, Lcom/badlogic/gdx/net/SocketHints;->performancePrefBandwidth:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/net/Socket;->setPerformancePreferences(III)V

    .line 63
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    iget v1, p1, Lcom/badlogic/gdx/net/SocketHints;->trafficClass:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTrafficClass(I)V

    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    iget-boolean v1, p1, Lcom/badlogic/gdx/net/SocketHints;->tcpNoDelay:Z

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    iget-boolean v1, p1, Lcom/badlogic/gdx/net/SocketHints;->keepAlive:Z

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 66
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    iget v1, p1, Lcom/badlogic/gdx/net/SocketHints;->sendBufferSize:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 67
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    iget v1, p1, Lcom/badlogic/gdx/net/SocketHints;->receiveBufferSize:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    iget-boolean v1, p1, Lcom/badlogic/gdx/net/SocketHints;->linger:Z

    iget v2, p1, Lcom/badlogic/gdx/net/SocketHints;->lingerDuration:I

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    iget v1, p1, Lcom/badlogic/gdx/net/SocketHints;->socketTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_40} :catch_41

    .line 72
    goto :goto_4a

    .line 70
    :catch_41
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Error setting socket hints."

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 74
    .end local v0  # "e":Ljava/lang/Exception;
    :cond_4a
    :goto_4a
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 4

    .line 110
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_16

    .line 112
    :try_start_4
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 116
    goto :goto_16

    .line 114
    :catch_d
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Error closing socket."

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 118
    .end local v0  # "e":Ljava/lang/Exception;
    :cond_16
    :goto_16
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 4

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 89
    :catch_7
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Error getting input stream from socket."

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 4

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 98
    :catch_7
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Error getting output stream from socket."

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getRemoteAddress()Ljava/lang/String;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_b

    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    return v0

    .line 81
    :cond_b
    const/4 v0, 0x0

    return v0
.end method
