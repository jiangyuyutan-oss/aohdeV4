.class Lcom/badlogic/gdx/backends/android/AndroidGraphics$1;
.super Ljava/lang/Object;
.source "AndroidGraphics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/AndroidGraphics;->pause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/AndroidGraphics;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidGraphics;)V
    .registers 2
    .param p1, "this$0"  # Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    .line 357
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics$1;->this$0:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 360
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics$1;->this$0:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    iget-boolean v0, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->pause:Z

    if-nez v0, :cond_7

    .line 362
    return-void

    .line 367
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics$1;->this$0:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 368
    return-void
.end method
