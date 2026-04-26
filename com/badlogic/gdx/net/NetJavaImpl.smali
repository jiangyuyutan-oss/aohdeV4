.class public Lcom/badlogic/gdx/net/NetJavaImpl;
.super Ljava/lang/Object;
.source "NetJavaImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;
    }
.end annotation


# instance fields
.field final connections:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Lcom/badlogic/gdx/Net$HttpRequest;",
            "Ljava/net/HttpURLConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final executorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field final listeners:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Lcom/badlogic/gdx/Net$HttpRequest;",
            "Lcom/badlogic/gdx/Net$HttpResponseListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 131
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/net/NetJavaImpl;-><init>(I)V

    .line 132
    return-void
.end method

.method public constructor <init>(I)V
    .registers 14
    .param p1, "maxThreads"  # I

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const v0, 0x7fffffff

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    .line 136
    .local v0, "isCachedPool":Z
    :goto_d
    new-instance v11, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_13

    move v4, v2

    goto :goto_14

    :cond_13
    move v4, p1

    :goto_14
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    if-eqz v0, :cond_1e

    new-instance v3, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v3}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    goto :goto_23

    :cond_1e
    new-instance v3, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    :goto_23
    move-object v9, v3

    check-cast v9, Ljava/util/concurrent/BlockingQueue;

    new-instance v10, Lcom/badlogic/gdx/net/NetJavaImpl$1;

    invoke-direct {v10, p0}, Lcom/badlogic/gdx/net/NetJavaImpl$1;-><init>(Lcom/badlogic/gdx/net/NetJavaImpl;)V

    const-wide/16 v6, 0x3c

    move-object v3, v11

    move v5, p1

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v11, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 149
    iget-object v3, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_39

    goto :goto_3a

    :cond_39
    move v1, v2

    :goto_3a
    invoke-virtual {v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 150
    new-instance v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->connections:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 151
    new-instance v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->listeners:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 152
    return-void
.end method


# virtual methods
.method public cancelHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;)V
    .registers 3
    .param p1, "httpRequest"  # Lcom/badlogic/gdx/Net$HttpRequest;

    .line 257
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/net/NetJavaImpl;->getFromListeners(Lcom/badlogic/gdx/Net$HttpRequest;)Lcom/badlogic/gdx/Net$HttpResponseListener;

    move-result-object v0

    .line 259
    .local v0, "httpResponseListener":Lcom/badlogic/gdx/Net$HttpResponseListener;
    if-eqz v0, :cond_c

    .line 260
    invoke-interface {v0}, Lcom/badlogic/gdx/Net$HttpResponseListener;->cancelled()V

    .line 261
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/net/NetJavaImpl;->removeFromConnectionsAndListeners(Lcom/badlogic/gdx/Net$HttpRequest;)V

    .line 263
    :cond_c
    return-void
.end method

.method declared-synchronized getFromListeners(Lcom/badlogic/gdx/Net$HttpRequest;)Lcom/badlogic/gdx/Net$HttpResponseListener;
    .registers 3
    .param p1, "httpRequest"  # Lcom/badlogic/gdx/Net$HttpRequest;

    monitor-enter p0

    .line 277
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->listeners:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/Net$HttpResponseListener;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 278
    .local v0, "httpResponseListener":Lcom/badlogic/gdx/Net$HttpResponseListener;
    monitor-exit p0

    return-object v0

    .line 276
    .end local v0  # "httpResponseListener":Lcom/badlogic/gdx/Net$HttpResponseListener;
    .end local p0  # "this":Lcom/badlogic/gdx/net/NetJavaImpl;
    .end local p1  # "httpRequest":Lcom/badlogic/gdx/Net$HttpRequest;
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized putIntoConnectionsAndListeners(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;Ljava/net/HttpURLConnection;)V
    .registers 5
    .param p1, "httpRequest"  # Lcom/badlogic/gdx/Net$HttpRequest;
    .param p2, "httpResponseListener"  # Lcom/badlogic/gdx/Net$HttpResponseListener;
    .param p3, "connection"  # Ljava/net/HttpURLConnection;

    monitor-enter p0

    .line 272
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->connections:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1, p3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->listeners:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 274
    monitor-exit p0

    return-void

    .line 271
    .end local p0  # "this":Lcom/badlogic/gdx/net/NetJavaImpl;
    .end local p1  # "httpRequest":Lcom/badlogic/gdx/Net$HttpRequest;
    .end local p2  # "httpResponseListener":Lcom/badlogic/gdx/Net$HttpResponseListener;
    .end local p3  # "connection":Ljava/net/HttpURLConnection;
    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized removeFromConnectionsAndListeners(Lcom/badlogic/gdx/Net$HttpRequest;)V
    .registers 3
    .param p1, "httpRequest"  # Lcom/badlogic/gdx/Net$HttpRequest;

    monitor-enter p0

    .line 266
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->connections:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->listeners:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 268
    monitor-exit p0

    return-void

    .line 265
    .end local p0  # "this":Lcom/badlogic/gdx/net/NetJavaImpl;
    .end local p1  # "httpRequest":Lcom/badlogic/gdx/Net$HttpRequest;
    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V
    .registers 16
    .param p1, "httpRequest"  # Lcom/badlogic/gdx/Net$HttpRequest;
    .param p2, "httpResponseListener"  # Lcom/badlogic/gdx/Net$HttpResponseListener;

    .line 155
    const-string v0, ""

    const-string v1, "HEAD"

    invoke-virtual {p1}, Lcom/badlogic/gdx/Net$HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_15

    .line 156
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "can\'t process a HTTP request without URL set"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/badlogic/gdx/Net$HttpResponseListener;->failed(Ljava/lang/Throwable;)V

    .line 157
    return-void

    .line 161
    :cond_15
    :try_start_15
    invoke-virtual {p1}, Lcom/badlogic/gdx/Net$HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "method":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_23

    move v3, v4

    goto :goto_24

    :cond_23
    move v3, v5

    .line 166
    .local v3, "doInput":Z
    :goto_24
    const-string v6, "POST"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3f

    const-string v6, "PUT"

    .line 167
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3f

    const-string v6, "PATCH"

    .line 168
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3d

    goto :goto_3f

    :cond_3d
    move v4, v5

    goto :goto_40

    :cond_3f
    :goto_3f
    nop

    .line 170
    .local v4, "doingOutPut":Z
    :goto_40
    const-string v5, "GET"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_59

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    goto :goto_59

    .line 176
    :cond_4f
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/badlogic/gdx/Net$HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .local v0, "url":Ljava/net/URL;
    goto :goto_95

    .line 171
    .end local v0  # "url":Ljava/net/URL;
    :cond_59
    :goto_59
    move-object v1, v0

    .line 172
    .local v1, "queryString":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/badlogic/gdx/Net$HttpRequest;->getContent()Ljava/lang/String;

    move-result-object v5

    .line 173
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_7a

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "?"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 174
    :cond_7a
    new-instance v0, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/badlogic/gdx/Net$HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 175
    .end local v1  # "queryString":Ljava/lang/String;
    .end local v5  # "value":Ljava/lang/String;
    .restart local v0  # "url":Ljava/net/URL;
    nop

    .line 179
    :goto_95
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 180
    .local v1, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 181
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 182
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1}, Lcom/badlogic/gdx/Net$HttpRequest;->getFollowRedirects()Z

    move-result v5

    invoke-static {v5}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 185
    invoke-virtual {p0, p1, p2, v1}, Lcom/badlogic/gdx/net/NetJavaImpl;->putIntoConnectionsAndListeners(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;Ljava/net/HttpURLConnection;)V

    .line 188
    invoke-virtual {p1}, Lcom/badlogic/gdx/Net$HttpRequest;->getHeaders()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_ba
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 189
    .local v6, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .end local v6  # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_ba

    .line 192
    :cond_d6
    invoke-virtual {p1}, Lcom/badlogic/gdx/Net$HttpRequest;->getTimeOut()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 193
    invoke-virtual {p1}, Lcom/badlogic/gdx/Net$HttpRequest;->getTimeOut()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 195
    iget-object v11, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v12, Lcom/badlogic/gdx/net/NetJavaImpl$2;

    move-object v5, v12

    move-object v6, p0

    move v7, v4

    move-object v8, p1

    move-object v9, v1

    move-object v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/badlogic/gdx/net/NetJavaImpl$2;-><init>(Lcom/badlogic/gdx/net/NetJavaImpl;ZLcom/badlogic/gdx/Net$HttpRequest;Ljava/net/HttpURLConnection;Lcom/badlogic/gdx/Net$HttpResponseListener;)V

    invoke-virtual {v11, v12}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_f4} :catch_f6

    .line 253
    nop

    .line 254
    .end local v0  # "url":Ljava/net/URL;
    .end local v1  # "connection":Ljava/net/HttpURLConnection;
    .end local v2  # "method":Ljava/lang/String;
    .end local v3  # "doInput":Z
    .end local v4  # "doingOutPut":Z
    return-void

    .line 246
    :catch_f6
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    :try_start_f7
    invoke-interface {p2, v0}, Lcom/badlogic/gdx/Net$HttpResponseListener;->failed(Ljava/lang/Throwable;)V
    :try_end_fa
    .catchall {:try_start_f7 .. :try_end_fa} :catchall_ff

    .line 250
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/net/NetJavaImpl;->removeFromConnectionsAndListeners(Lcom/badlogic/gdx/Net$HttpRequest;)V

    .line 251
    nop

    .line 252
    return-void

    .line 250
    :catchall_ff
    move-exception v1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/net/NetJavaImpl;->removeFromConnectionsAndListeners(Lcom/badlogic/gdx/Net$HttpRequest;)V

    throw v1
.end method
