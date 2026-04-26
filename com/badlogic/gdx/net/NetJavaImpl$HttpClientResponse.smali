.class Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;
.super Ljava/lang/Object;
.source "NetJavaImpl.java"

# interfaces
.implements Lcom/badlogic/gdx/Net$HttpResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/net/NetJavaImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HttpClientResponse"
.end annotation


# instance fields
.field private final connection:Ljava/net/HttpURLConnection;

.field private status:Lcom/badlogic/gdx/net/HttpStatus;


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .registers 5
    .param p1, "connection"  # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->connection:Ljava/net/HttpURLConnection;

    .line 55
    :try_start_5
    new-instance v0, Lcom/badlogic/gdx/net/HttpStatus;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/net/HttpStatus;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->status:Lcom/badlogic/gdx/net/HttpStatus;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_11

    .line 58
    goto :goto_1a

    .line 56
    :catch_11
    move-exception v0

    .line 57
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/badlogic/gdx/net/HttpStatus;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/net/HttpStatus;-><init>(I)V

    iput-object v1, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->status:Lcom/badlogic/gdx/net/HttpStatus;

    .line 59
    .end local v0  # "e":Ljava/io/IOException;
    :goto_1a
    return-void
.end method

.method private getInputStream()Ljava/io/InputStream;
    .registers 3

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 120
    :catch_7
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getResult()[B
    .registers 4

    .line 63
    invoke-direct {p0}, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 66
    .local v0, "input":Ljava/io/InputStream;
    if-nez v0, :cond_9

    .line 67
    sget-object v1, Lcom/badlogic/gdx/utils/StreamUtils;->EMPTY_BYTES:[B

    return-object v1

    .line 71
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStreamToByteArray(Ljava/io/InputStream;I)[B

    move-result-object v1
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_13} :catch_19
    .catchall {:try_start_9 .. :try_end_13} :catchall_17

    .line 75
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 71
    return-object v1

    .line 75
    :catchall_17
    move-exception v1

    goto :goto_20

    .line 72
    :catch_19
    move-exception v1

    .line 73
    .local v1, "e":Ljava/io/IOException;
    :try_start_1a
    sget-object v2, Lcom/badlogic/gdx/utils/StreamUtils;->EMPTY_BYTES:[B
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_17

    .line 75
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 73
    return-object v2

    .line 75
    .end local v1  # "e":Ljava/io/IOException;
    :goto_20
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public getResultAsStream()Ljava/io/InputStream;
    .registers 2

    .line 99
    invoke-direct {p0}, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getResultAsString()Ljava/lang/String;
    .registers 5

    .line 81
    invoke-direct {p0}, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 84
    .local v0, "input":Ljava/io/InputStream;
    const-string v1, ""

    if-nez v0, :cond_9

    .line 85
    return-object v1

    .line 89
    :cond_9
    :try_start_9
    iget-object v2, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    const-string v3, "UTF8"

    invoke-static {v0, v2, v3}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStreamToString(Ljava/io/InputStream;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_15} :catch_1e
    .catchall {:try_start_9 .. :try_end_15} :catchall_19

    .line 93
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 89
    return-object v1

    .line 93
    :catchall_19
    move-exception v1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    .line 90
    :catch_1e
    move-exception v2

    .line 91
    .local v2, "e":Ljava/io/IOException;
    nop

    .line 93
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 91
    return-object v1
.end method

.method public getStatus()Lcom/badlogic/gdx/net/HttpStatus;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->status:Lcom/badlogic/gdx/net/HttpStatus;

    return-object v0
.end method
