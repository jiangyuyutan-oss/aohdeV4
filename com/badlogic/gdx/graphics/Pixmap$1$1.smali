.class Lcom/badlogic/gdx/graphics/Pixmap$1$1;
.super Ljava/lang/Object;
.source "Pixmap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/graphics/Pixmap$1;->handleHttpResponse(Lcom/badlogic/gdx/Net$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/graphics/Pixmap$1;

.field final synthetic val$result:[B


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap$1;[B)V
    .registers 3
    .param p1, "this$0"  # Lcom/badlogic/gdx/graphics/Pixmap$1;

    .line 188
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/Pixmap$1$1;->this$0:Lcom/badlogic/gdx/graphics/Pixmap$1;

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/Pixmap$1$1;->val$result:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 192
    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Pixmap$1$1;->val$result:[B

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/Pixmap$1$1;->val$result:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>([BII)V

    .line 193
    .local v0, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Pixmap$1$1;->this$0:Lcom/badlogic/gdx/graphics/Pixmap$1;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/Pixmap$1;->val$responseListener:Lcom/badlogic/gdx/graphics/Pixmap$DownloadPixmapResponseListener;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/Pixmap$DownloadPixmapResponseListener;->downloadComplete(Lcom/badlogic/gdx/graphics/Pixmap;)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    .line 196
    .end local v0  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    goto :goto_19

    .line 194
    :catchall_13
    move-exception v0

    .line 195
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Pixmap$1$1;->this$0:Lcom/badlogic/gdx/graphics/Pixmap$1;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/Pixmap$1;->failed(Ljava/lang/Throwable;)V

    .line 197
    .end local v0  # "t":Ljava/lang/Throwable;
    :goto_19
    return-void
.end method
