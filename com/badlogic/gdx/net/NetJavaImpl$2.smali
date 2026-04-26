.class Lcom/badlogic/gdx/net/NetJavaImpl$2;
.super Ljava/lang/Object;
.source "NetJavaImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/net/NetJavaImpl;->sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/net/NetJavaImpl;

.field final synthetic val$connection:Ljava/net/HttpURLConnection;

.field final synthetic val$doingOutPut:Z

.field final synthetic val$httpRequest:Lcom/badlogic/gdx/Net$HttpRequest;

.field final synthetic val$httpResponseListener:Lcom/badlogic/gdx/Net$HttpResponseListener;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/net/NetJavaImpl;ZLcom/badlogic/gdx/Net$HttpRequest;Ljava/net/HttpURLConnection;Lcom/badlogic/gdx/Net$HttpResponseListener;)V
    .registers 6
    .param p1, "this$0"  # Lcom/badlogic/gdx/net/NetJavaImpl;

    .line 195
    iput-object p1, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->this$0:Lcom/badlogic/gdx/net/NetJavaImpl;

    iput-boolean p2, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->val$doingOutPut:Z

    iput-object p3, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->val$httpRequest:Lcom/badlogic/gdx/Net$HttpRequest;

    iput-object p4, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->val$connection:Ljava/net/HttpURLConnection;

    iput-object p5, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->val$httpResponseListener:Lcom/badlogic/gdx/Net$HttpResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 200
    :try_start_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->val$doingOutPut:Z

    if-eqz v0, :cond_40

    .line 202
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->val$httpRequest:Lcom/badlogic/gdx/Net$HttpRequest;

    invoke-virtual {v0}, Lcom/badlogic/gdx/Net$HttpRequest;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "contentAsString":Ljava/lang/String;
    if-eqz v0, :cond_26

    .line 204
    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->val$connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const-string v3, "UTF8"

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_6e

    .line 206
    .local v1, "writer":Ljava/io/OutputStreamWriter;
    :try_start_19
    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_21

    .line 208
    :try_start_1c
    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 209
    nop

    .line 210
    .end local v1  # "writer":Ljava/io/OutputStreamWriter;
    goto :goto_40

    .line 208
    .restart local v1  # "writer":Ljava/io/OutputStreamWriter;
    :catchall_21
    move-exception v2

    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    .line 211
    .end local v1  # "writer":Ljava/io/OutputStreamWriter;
    :cond_26
    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->val$httpRequest:Lcom/badlogic/gdx/Net$HttpRequest;

    invoke-virtual {v1}, Lcom/badlogic/gdx/Net$HttpRequest;->getContentStream()Ljava/io/InputStream;

    move-result-object v1

    .line 212
    .local v1, "contentAsStream":Ljava/io/InputStream;
    if-eqz v1, :cond_40

    .line 213
    iget-object v2, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->val$connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_34} :catch_6e

    .line 215
    .local v2, "os":Ljava/io/OutputStream;
    :try_start_34
    invoke-static {v1, v2}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3b

    .line 217
    :try_start_37
    invoke-static {v2}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 218
    goto :goto_40

    .line 217
    :catchall_3b
    move-exception v3

    invoke-static {v2}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v3

    .line 223
    .end local v0  # "contentAsString":Ljava/lang/String;
    .end local v1  # "contentAsStream":Ljava/io/InputStream;
    .end local v2  # "os":Ljava/io/OutputStream;
    :cond_40
    :goto_40
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->val$connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 225
    new-instance v0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;

    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->val$connection:Ljava/net/HttpURLConnection;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;-><init>(Ljava/net/HttpURLConnection;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4c} :catch_6e

    .line 227
    .local v0, "clientResponse":Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;
    :try_start_4c
    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->this$0:Lcom/badlogic/gdx/net/NetJavaImpl;

    iget-object v2, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->val$httpRequest:Lcom/badlogic/gdx/Net$HttpRequest;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/net/NetJavaImpl;->getFromListeners(Lcom/badlogic/gdx/Net$HttpRequest;)Lcom/badlogic/gdx/Net$HttpResponseListener;

    move-result-object v1

    .line 229
    .local v1, "listener":Lcom/badlogic/gdx/Net$HttpResponseListener;
    if-eqz v1, :cond_59

    .line 230
    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Net$HttpResponseListener;->handleHttpResponse(Lcom/badlogic/gdx/Net$HttpResponse;)V

    .line 232
    :cond_59
    iget-object v2, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->this$0:Lcom/badlogic/gdx/net/NetJavaImpl;

    iget-object v3, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->val$httpRequest:Lcom/badlogic/gdx/Net$HttpRequest;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/net/NetJavaImpl;->removeFromConnectionsAndListeners(Lcom/badlogic/gdx/Net$HttpRequest;)V
    :try_end_60
    .catchall {:try_start_4c .. :try_end_60} :catchall_67

    .line 234
    .end local v1  # "listener":Lcom/badlogic/gdx/Net$HttpResponseListener;
    :try_start_60
    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->val$connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 235
    nop

    .line 243
    .end local v0  # "clientResponse":Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;
    goto :goto_81

    .line 234
    .restart local v0  # "clientResponse":Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;
    :catchall_67
    move-exception v1

    iget-object v2, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->val$connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_6e} :catch_6e

    .line 236
    .end local v0  # "clientResponse":Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;
    :catch_6e
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->val$connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 239
    :try_start_74
    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->val$httpResponseListener:Lcom/badlogic/gdx/Net$HttpResponseListener;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Net$HttpResponseListener;->failed(Ljava/lang/Throwable;)V
    :try_end_79
    .catchall {:try_start_74 .. :try_end_79} :catchall_82

    .line 241
    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->this$0:Lcom/badlogic/gdx/net/NetJavaImpl;

    iget-object v2, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->val$httpRequest:Lcom/badlogic/gdx/Net$HttpRequest;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/net/NetJavaImpl;->removeFromConnectionsAndListeners(Lcom/badlogic/gdx/Net$HttpRequest;)V

    .line 242
    nop

    .line 244
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_81
    return-void

    .line 241
    .restart local v0  # "e":Ljava/lang/Exception;
    :catchall_82
    move-exception v1

    iget-object v2, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->this$0:Lcom/badlogic/gdx/net/NetJavaImpl;

    iget-object v3, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->val$httpRequest:Lcom/badlogic/gdx/Net$HttpRequest;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/net/NetJavaImpl;->removeFromConnectionsAndListeners(Lcom/badlogic/gdx/Net$HttpRequest;)V

    throw v1
.end method
