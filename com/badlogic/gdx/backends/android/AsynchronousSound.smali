.class public Lcom/badlogic/gdx/backends/android/AsynchronousSound;
.super Ljava/lang/Object;
.source "AsynchronousSound.java"

# interfaces
.implements Lcom/badlogic/gdx/audio/Sound;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final sound:Lcom/badlogic/gdx/audio/Sound;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/audio/Sound;Landroid/os/Handler;)V
    .registers 3
    .param p1, "sound"  # Lcom/badlogic/gdx/audio/Sound;
    .param p2, "handler"  # Landroid/os/Handler;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound;->sound:Lcom/badlogic/gdx/audio/Sound;

    .line 13
    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound;->handler:Landroid/os/Handler;

    .line 14
    return-void
.end method

.method static synthetic access$000(Lcom/badlogic/gdx/backends/android/AsynchronousSound;)Lcom/badlogic/gdx/audio/Sound;
    .registers 2
    .param p0, "x0"  # Lcom/badlogic/gdx/backends/android/AsynchronousSound;

    .line 6
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound;->sound:Lcom/badlogic/gdx/audio/Sound;

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound;->sound:Lcom/badlogic/gdx/audio/Sound;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Sound;->dispose()V

    .line 100
    return-void
.end method

.method public loop()J
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/badlogic/gdx/backends/android/AsynchronousSound$4;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/backends/android/AsynchronousSound$4;-><init>(Lcom/badlogic/gdx/backends/android/AsynchronousSound;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public loop(F)J
    .registers 4
    .param p1, "volume"  # F

    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/badlogic/gdx/backends/android/AsynchronousSound$5;

    invoke-direct {v1, p0, p1}, Lcom/badlogic/gdx/backends/android/AsynchronousSound$5;-><init>(Lcom/badlogic/gdx/backends/android/AsynchronousSound;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public loop(FFF)J
    .registers 6
    .param p1, "volume"  # F
    .param p2, "pitch"  # F
    .param p3, "pan"  # F

    .line 73
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/badlogic/gdx/backends/android/AsynchronousSound$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/badlogic/gdx/backends/android/AsynchronousSound$6;-><init>(Lcom/badlogic/gdx/backends/android/AsynchronousSound;FFF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public pause()V
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound;->sound:Lcom/badlogic/gdx/audio/Sound;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Sound;->pause()V

    .line 90
    return-void
.end method

.method public pause(J)V
    .registers 5
    .param p1, "soundId"  # J

    .line 109
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Asynchronous audio doesn\'t support sound id based operations."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public play()J
    .registers 3

    .line 18
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/badlogic/gdx/backends/android/AsynchronousSound$1;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/backends/android/AsynchronousSound$1;-><init>(Lcom/badlogic/gdx/backends/android/AsynchronousSound;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public play(F)J
    .registers 4
    .param p1, "volume"  # F

    .line 29
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/badlogic/gdx/backends/android/AsynchronousSound$2;

    invoke-direct {v1, p0, p1}, Lcom/badlogic/gdx/backends/android/AsynchronousSound$2;-><init>(Lcom/badlogic/gdx/backends/android/AsynchronousSound;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public play(FFF)J
    .registers 6
    .param p1, "volume"  # F
    .param p2, "pitch"  # F
    .param p3, "pan"  # F

    .line 40
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/badlogic/gdx/backends/android/AsynchronousSound$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/badlogic/gdx/backends/android/AsynchronousSound$3;-><init>(Lcom/badlogic/gdx/backends/android/AsynchronousSound;FFF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public resume()V
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound;->sound:Lcom/badlogic/gdx/audio/Sound;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Sound;->resume()V

    .line 95
    return-void
.end method

.method public resume(J)V
    .registers 5
    .param p1, "soundId"  # J

    .line 114
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Asynchronous audio doesn\'t support sound id based operations."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLooping(JZ)V
    .registers 6
    .param p1, "soundId"  # J
    .param p3, "looping"  # Z

    .line 119
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Asynchronous audio doesn\'t support sound id based operations."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPan(JFF)V
    .registers 7
    .param p1, "soundId"  # J
    .param p3, "pan"  # F
    .param p4, "volume"  # F

    .line 134
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Asynchronous audio doesn\'t support sound id based operations."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPitch(JF)V
    .registers 6
    .param p1, "soundId"  # J
    .param p3, "pitch"  # F

    .line 124
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Asynchronous audio doesn\'t support sound id based operations."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVolume(JF)V
    .registers 6
    .param p1, "soundId"  # J
    .param p3, "volume"  # F

    .line 129
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Asynchronous audio doesn\'t support sound id based operations."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound;->sound:Lcom/badlogic/gdx/audio/Sound;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Sound;->stop()V

    .line 85
    return-void
.end method

.method public stop(J)V
    .registers 5
    .param p1, "soundId"  # J

    .line 104
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Asynchronous audio doesn\'t support sound id based operations."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
