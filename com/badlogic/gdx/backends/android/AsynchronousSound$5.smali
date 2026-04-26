.class Lcom/badlogic/gdx/backends/android/AsynchronousSound$5;
.super Ljava/lang/Object;
.source "AsynchronousSound.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/AsynchronousSound;->loop(F)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/AsynchronousSound;

.field final synthetic val$volume:F


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AsynchronousSound;F)V
    .registers 3
    .param p1, "this$0"  # Lcom/badlogic/gdx/backends/android/AsynchronousSound;

    .line 62
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound$5;->this$0:Lcom/badlogic/gdx/backends/android/AsynchronousSound;

    iput p2, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound$5;->val$volume:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound$5;->this$0:Lcom/badlogic/gdx/backends/android/AsynchronousSound;

    invoke-static {v0}, Lcom/badlogic/gdx/backends/android/AsynchronousSound;->access$000(Lcom/badlogic/gdx/backends/android/AsynchronousSound;)Lcom/badlogic/gdx/audio/Sound;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound$5;->val$volume:F

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Sound;->loop(F)J

    .line 66
    return-void
.end method
