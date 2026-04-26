.class public Lcom/badlogic/gdx/Net$HttpRequest;
.super Ljava/lang/Object;
.source "Net.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/Net;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpRequest"
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private contentLength:J

.field private contentStream:Ljava/io/InputStream;

.field private followRedirects:Z

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private httpMethod:Ljava/lang/String;

.field private includeCredentials:Z

.field private timeOut:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->timeOut:I

    .line 198
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/Net$HttpRequest;->followRedirects:Z

    .line 200
    iput-boolean v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->includeCredentials:Z

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->headers:Ljava/util/Map;

    .line 204
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "httpMethod"  # Ljava/lang/String;

    .line 209
    invoke-direct {p0}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>()V

    .line 210
    iput-object p1, p0, Lcom/badlogic/gdx/Net$HttpRequest;->httpMethod:Ljava/lang/String;

    .line 211
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .registers 2

    .line 289
    iget-object v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .line 299
    iget-wide v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->contentLength:J

    return-wide v0
.end method

.method public getContentStream()Ljava/io/InputStream;
    .registers 2

    .line 294
    iget-object v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->contentStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getFollowRedirects()Z
    .registers 2

    .line 309
    iget-boolean v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->followRedirects:Z

    return v0
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getIncludeCredentials()Z
    .registers 2

    .line 314
    iget-boolean v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->includeCredentials:Z

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .registers 2

    .line 279
    iget-object v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->httpMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeOut()I
    .registers 2

    .line 274
    iget v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->timeOut:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 284
    iget-object v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public reset()V
    .registers 3

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->httpMethod:Ljava/lang/String;

    .line 320
    iput-object v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->url:Ljava/lang/String;

    .line 321
    iget-object v1, p0, Lcom/badlogic/gdx/Net$HttpRequest;->headers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 322
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/Net$HttpRequest;->timeOut:I

    .line 324
    iput-object v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->content:Ljava/lang/String;

    .line 325
    iput-object v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->contentStream:Ljava/io/InputStream;

    .line 326
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->contentLength:J

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->followRedirects:Z

    .line 329
    return-void
.end method

.method public setContent(Ljava/io/InputStream;J)V
    .registers 4
    .param p1, "contentStream"  # Ljava/io/InputStream;
    .param p2, "contentLength"  # J

    .line 237
    iput-object p1, p0, Lcom/badlogic/gdx/Net$HttpRequest;->contentStream:Ljava/io/InputStream;

    .line 238
    iput-wide p2, p0, Lcom/badlogic/gdx/Net$HttpRequest;->contentLength:J

    .line 239
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 2
    .param p1, "content"  # Ljava/lang/String;

    .line 231
    iput-object p1, p0, Lcom/badlogic/gdx/Net$HttpRequest;->content:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setFollowRedirects(Z)V
    .registers 4
    .param p1, "followRedirects"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 253
    if-nez p1, :cond_15

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->WebGL:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v0, v1, :cond_d

    goto :goto_15

    .line 256
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Following redirects can\'t be disabled using the GWT/WebGL backend!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_15
    :goto_15
    iput-boolean p1, p0, Lcom/badlogic/gdx/Net$HttpRequest;->followRedirects:Z

    .line 258
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "value"  # Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    return-void
.end method

.method public setIncludeCredentials(Z)V
    .registers 2
    .param p1, "includeCredentials"  # Z

    .line 263
    iput-boolean p1, p0, Lcom/badlogic/gdx/Net$HttpRequest;->includeCredentials:Z

    .line 264
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .registers 2
    .param p1, "httpMethod"  # Ljava/lang/String;

    .line 268
    iput-object p1, p0, Lcom/badlogic/gdx/Net$HttpRequest;->httpMethod:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public setTimeOut(I)V
    .registers 2
    .param p1, "timeOut"  # I

    .line 245
    iput p1, p0, Lcom/badlogic/gdx/Net$HttpRequest;->timeOut:I

    .line 246
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"  # Ljava/lang/String;

    .line 216
    iput-object p1, p0, Lcom/badlogic/gdx/Net$HttpRequest;->url:Ljava/lang/String;

    .line 217
    return-void
.end method
