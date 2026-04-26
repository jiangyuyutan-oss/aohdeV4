.class Lcom/badlogic/gdx/backends/android/AsynchronousSound$4;
.super Ljava/lang/Object;
.source "AsynchronousSound.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/AsynchronousSound;->loop()J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/AsynchronousSound;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AsynchronousSound;)V
    .registers 2
    .param p1, "this$0"  # Lcom/badlogic/gdx/backends/android/AsynchronousSound;

    .line 51
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound$4;->this$0:Lcom/badlogic/gdx/backends/android/AsynchronousSound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound$4;->this$0:Lcom/badlogic/gdx/backends/android/AsynchronousSound;

    invoke-static {v0}, Lcom/badlogic/gdx/backends/android/AsynchronousSound;->access$000(Lcom/badlogic/gdx/backends/android/AsynchronousSound;)Lcom/badlogic/gdx/audio/Sound;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Sound;->loop()J

    .line 55
    return-void
.end method
