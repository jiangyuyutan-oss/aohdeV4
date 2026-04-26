.class public Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;
.super Ljava/lang/Object;
.source "NetJavaServerSocketImpl.java"

# interfaces
.implements Lcom/badlogic/gdx/net/ServerSocket;


# instance fields
.field private protocol:Lcom/badlogic/gdx/Net$Protocol;

.field private server:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/Net$Protocol;ILcom/badlogic/gdx/net/ServerSocketHints;)V
    .registers 5
    .param p1, "protocol"  # Lcom/badlogic/gdx/Net$Protocol;
    .param p2, "port"  # I
    .param p3, "hints"  # Lcom/badlogic/gdx/net/ServerSocketHints;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;-><init>(Lcom/badlogic/gdx/Net$Protocol;Ljava/lang/String;ILcom/badlogic/gdx/net/ServerSocketHints;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/Net$Protocol;Ljava/lang/String;ILcom/badlogic/gdx/net/ServerSocketHints;)V
    .registers 9
    .param p1, "protocol"  # Lcom/badlogic/gdx/Net$Protocol;
    .param p2, "hostname"  # Ljava/lang/String;
    .param p3, "port"  # I
    .param p4, "hints"  # Lcom/badlogic/gdx/net/ServerSocketHints;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;->protocol:Lcom/badlogic/gdx/Net$Protocol;

    .line 45
    :try_start_5
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;->server:Ljava/net/ServerSocket;

    .line 46
    if-eqz p4, :cond_2e

    .line 47
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;->server:Ljava/net/ServerSocket;

    iget v1, p4, Lcom/badlogic/gdx/net/ServerSocketHints;->performancePrefConnectionTime:I

    iget v2, p4, Lcom/badlogic/gdx/net/ServerSocketHints;->performancePrefLatency:I

    iget v3, p4, Lcom/badlogic/gdx/net/ServerSocketHints;->performancePrefBandwidth:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/net/ServerSocket;->setPerformancePreferences(III)V

    .line 49
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;->server:Ljava/net/ServerSocket;

    iget-boolean v1, p4, Lcom/badlogic/gdx/net/ServerSocketHints;->reuseAddress:Z

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 50
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;->server:Ljava/net/ServerSocket;

    iget v1, p4, Lcom/badlogic/gdx/net/ServerSocketHints;->acceptTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;->server:Ljava/net/ServerSocket;

    iget v1, p4, Lcom/badlogic/gdx/net/ServerSocketHints;->receiveBufferSize:I

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReceiveBufferSize(I)V

    .line 56
    :cond_2e
    if-eqz p2, :cond_36

    .line 57
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .local v0, "address":Ljava/net/InetSocketAddress;
    goto :goto_3b

    .line 59
    .end local v0  # "address":Ljava/net/InetSocketAddress;
    :cond_36
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p3}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 62
    .restart local v0  # "address":Ljava/net/InetSocketAddress;
    :goto_3b
    if-eqz p4, :cond_45

    .line 63
    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;->server:Ljava/net/ServerSocket;

    iget v2, p4, Lcom/badlogic/gdx/net/ServerSocketHints;->backlog:I

    invoke-virtual {v1, v0, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    goto :goto_4a

    .line 65
    :cond_45
    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;->server:Ljava/net/ServerSocket;

    invoke-virtual {v1, v0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_4a} :catch_4c

    .line 69
    .end local v0  # "address":Ljava/net/InetSocketAddress;
    :goto_4a
    nop

    .line 70
    return-void

    .line 67
    :catch_4c
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create a server socket at port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public accept(Lcom/badlogic/gdx/net/SocketHints;)Lcom/badlogic/gdx/net/Socket;
    .registers 5
    .param p1, "hints"  # Lcom/badlogic/gdx/net/SocketHints;

    .line 80
    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;

    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;->server:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/badlogic/gdx/net/NetJavaSocketImpl;-><init>(Ljava/net/Socket;Lcom/badlogic/gdx/net/SocketHints;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 81
    :catch_c
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Error accepting socket."

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public dispose()V
    .registers 4

    .line 88
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;->server:Ljava/net/ServerSocket;

    if-eqz v0, :cond_16

    .line 90
    :try_start_4
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;->server:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;->server:Ljava/net/ServerSocket;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 94
    goto :goto_16

    .line 92
    :catch_d
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Error closing server."

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 96
    .end local v0  # "e":Ljava/lang/Exception;
    :cond_16
    :goto_16
    return-void
.end method

.method public getProtocol()Lcom/badlogic/gdx/Net$Protocol;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;->protocol:Lcom/badlogic/gdx/Net$Protocol;

    return-object v0
.end method
