.class Lcom/badlogic/gdx/backends/android/AndroidDaydream$1;
.super Ljava/lang/Object;
.source "AndroidDaydream.java"

# interfaces
.implements Lcom/badlogic/gdx/LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/AndroidDaydream;->init(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/AndroidDaydream;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidDaydream;)V
    .registers 2
    .param p1, "this$0"  # Lcom/badlogic/gdx/backends/android/AndroidDaydream;

    .line 123
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream$1;->this$0:Lcom/badlogic/gdx/backends/android/AndroidDaydream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 3

    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream$1;->this$0:Lcom/badlogic/gdx/backends/android/AndroidDaydream;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-interface {v0}, Lcom/badlogic/gdx/backends/android/AndroidAudio;->dispose()V

    .line 138
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream$1;->this$0:Lcom/badlogic/gdx/backends/android/AndroidDaydream;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    .line 139
    return-void
.end method

.method public pause()V
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream$1;->this$0:Lcom/badlogic/gdx/backends/android/AndroidDaydream;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-interface {v0}, Lcom/badlogic/gdx/backends/android/AndroidAudio;->pause()V

    .line 133
    return-void
.end method

.method public resume()V
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream$1;->this$0:Lcom/badlogic/gdx/backends/android/AndroidDaydream;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-interface {v0}, Lcom/badlogic/gdx/backends/android/AndroidAudio;->resume()V

    .line 128
    return-void
.end method
