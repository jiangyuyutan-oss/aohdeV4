.class public Lcom/badlogic/gdx/backends/android/AndroidNet;
.super Ljava/lang/Object;
.source "AndroidNet.java"

# interfaces
.implements Lcom/badlogic/gdx/Net;


# instance fields
.field final app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

.field netJavaImpl:Lcom/badlogic/gdx/net/NetJavaImpl;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V
    .registers 5
    .param p1, "app"  # Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;
    .param p2, "configuration"  # Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidNet;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    .line 44
    new-instance v0, Lcom/badlogic/gdx/net/NetJavaImpl;

    iget v1, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->maxNetThreads:I

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/net/NetJavaImpl;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidNet;->netJavaImpl:Lcom/badlogic/gdx/net/NetJavaImpl;

    .line 45
    return-void
.end method


# virtual methods
.method public cancelHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;)V
    .registers 3
    .param p1, "httpRequest"  # Lcom/badlogic/gdx/Net$HttpRequest;

    .line 54
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidNet;->netJavaImpl:Lcom/badlogic/gdx/net/NetJavaImpl;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/net/NetJavaImpl;->cancelHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;)V

    .line 55
    return-void
.end method

.method public newClientSocket(Lcom/badlogic/gdx/Net$Protocol;Ljava/lang/String;ILcom/badlogic/gdx/net/SocketHints;)Lcom/badlogic/gdx/net/Socket;
    .registers 6
    .param p1, "protocol"  # Lcom/badlogic/gdx/Net$Protocol;
    .param p2, "host"  # Ljava/lang/String;
    .param p3, "port"  # I
    .param p4, "hints"  # Lcom/badlogic/gdx/net/SocketHints;

    .line 69
    new-instance v0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/net/NetJavaSocketImpl;-><init>(Lcom/badlogic/gdx/Net$Protocol;Ljava/lang/String;ILcom/badlogic/gdx/net/SocketHints;)V

    return-object v0
.end method

.method public newServerSocket(Lcom/badlogic/gdx/Net$Protocol;ILcom/badlogic/gdx/net/ServerSocketHints;)Lcom/badlogic/gdx/net/ServerSocket;
    .registers 5
    .param p1, "protocol"  # Lcom/badlogic/gdx/Net$Protocol;
    .param p2, "port"  # I
    .param p3, "hints"  # Lcom/badlogic/gdx/net/ServerSocketHints;

    .line 64
    new-instance v0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;-><init>(Lcom/badlogic/gdx/Net$Protocol;ILcom/badlogic/gdx/net/ServerSocketHints;)V

    return-object v0
.end method

.method public newServerSocket(Lcom/badlogic/gdx/Net$Protocol;Ljava/lang/String;ILcom/badlogic/gdx/net/ServerSocketHints;)Lcom/badlogic/gdx/net/ServerSocket;
    .registers 6
    .param p1, "protocol"  # Lcom/badlogic/gdx/Net$Protocol;
    .param p2, "hostname"  # Ljava/lang/String;
    .param p3, "port"  # I
    .param p4, "hints"  # Lcom/badlogic/gdx/net/ServerSocketHints;

    .line 59
    new-instance v0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;-><init>(Lcom/badlogic/gdx/Net$Protocol;Ljava/lang/String;ILcom/badlogic/gdx/net/ServerSocketHints;)V

    return-object v0
.end method

.method public openURI(Ljava/lang/String;)Z
    .registers 5
    .param p1, "URI"  # Ljava/lang/String;

    .line 74
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 76
    .local v0, "uri":Landroid/net/Uri;
    :try_start_4
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 78
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidNet;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v2}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_1a

    .line 79
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 81
    :cond_1a
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidNet;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v2, v1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->startActivity(Landroid/content/Intent;)V
    :try_end_1f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_1f} :catch_21

    .line 82
    const/4 v2, 0x1

    return v2

    .line 83
    .end local v1  # "intent":Landroid/content/Intent;
    :catch_21
    move-exception v1

    .line 84
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x0

    return v2
.end method

.method public sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V
    .registers 4
    .param p1, "httpRequest"  # Lcom/badlogic/gdx/Net$HttpRequest;
    .param p2, "httpResponseListener"  # Lcom/badlogic/gdx/Net$HttpResponseListener;

    .line 49
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidNet;->netJavaImpl:Lcom/badlogic/gdx/net/NetJavaImpl;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/net/NetJavaImpl;->sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V

    .line 50
    return-void
.end method
