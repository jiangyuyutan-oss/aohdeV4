.class public Lcom/badlogic/gdx/backends/android/AndroidMusic;
.super Ljava/lang/Object;
.source "AndroidMusic.java"

# interfaces
.implements Lcom/badlogic/gdx/audio/Music;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field private final audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

.field private isPrepared:Z

.field protected onCompletionListener:Lcom/badlogic/gdx/audio/Music$OnCompletionListener;

.field private player:Landroid/media/MediaPlayer;

.field private volume:F

.field protected wasPlaying:Z


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidAudio;Landroid/media/MediaPlayer;)V
    .registers 4
    .param p1, "audio"  # Lcom/badlogic/gdx/backends/android/AndroidAudio;
    .param p2, "player"  # Landroid/media/MediaPlayer;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->isPrepared:Z

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->wasPlaying:Z

    .line 31
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->volume:F

    .line 35
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    .line 36
    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->onCompletionListener:Lcom/badlogic/gdx/audio/Music$OnCompletionListener;

    .line 38
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 39
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 6

    .line 43
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    return-void

    .line 45
    :cond_5
    const/4 v0, 0x0

    :try_start_6
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_15

    .line 49
    :goto_b
    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    .line 50
    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->onCompletionListener:Lcom/badlogic/gdx/audio/Music$OnCompletionListener;

    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-interface {v0, p0}, Lcom/badlogic/gdx/backends/android/AndroidAudio;->notifyMusicDisposed(Lcom/badlogic/gdx/backends/android/AndroidMusic;)V

    .line 52
    goto :goto_20

    .line 46
    :catchall_15
    move-exception v1

    .line 47
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_16
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "AndroidMusic"

    const-string v4, "error while disposing AndroidMusic instance, non-fatal"

    invoke-interface {v2, v3, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_21

    .end local v1  # "t":Ljava/lang/Throwable;
    goto :goto_b

    .line 53
    :goto_20
    return-void

    .line 49
    :catchall_21
    move-exception v1

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    .line 50
    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->onCompletionListener:Lcom/badlogic/gdx/audio/Music$OnCompletionListener;

    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-interface {v0, p0}, Lcom/badlogic/gdx/backends/android/AndroidAudio;->notifyMusicDisposed(Lcom/badlogic/gdx/backends/android/AndroidMusic;)V

    throw v1
.end method

.method public getDuration()F
    .registers 3

    .line 183
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 184
    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000  # 1000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getPosition()F
    .registers 3

    .line 178
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 179
    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000  # 1000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getVolume()F
    .registers 2

    .line 132
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->volume:F

    return v0
.end method

.method public isLooping()Z
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 59
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 60
    :catch_d
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    return v1
.end method

.method public isPlaying()Z
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 71
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 72
    :catch_d
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    return v1
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4
    .param p1, "mp"  # Landroid/media/MediaPlayer;

    .line 194
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->onCompletionListener:Lcom/badlogic/gdx/audio/Music$OnCompletionListener;

    if-eqz v0, :cond_e

    .line 195
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidMusic$1;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/backends/android/AndroidMusic$1;-><init>(Lcom/badlogic/gdx/backends/android/AndroidMusic;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    .line 202
    :cond_e
    return-void
.end method

.method public pause()V
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    return-void

    .line 83
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 84
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_13

    .line 89
    :cond_12
    goto :goto_17

    .line 86
    :catch_13
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->wasPlaying:Z

    .line 91
    return-void
.end method

.method public play()V
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    return-void

    .line 97
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_2c

    if-eqz v0, :cond_e

    return-void

    .line 102
    :cond_e
    nop

    .line 105
    :try_start_f
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->isPrepared:Z

    if-nez v0, :cond_1b

    .line 106
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->isPrepared:Z

    .line 109
    :cond_1b
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_20
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_20} :catch_26
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_20} :catch_21

    goto :goto_2a

    .line 112
    :catch_21
    move-exception v0

    .line 113
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2b

    .line 110
    .end local v0  # "e":Ljava/io/IOException;
    :catch_26
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 114
    .end local v0  # "e":Ljava/lang/IllegalStateException;
    :goto_2a
    nop

    .line 115
    :goto_2b
    return-void

    .line 98
    :catch_2c
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    return-void
.end method

.method public setLooping(Z)V
    .registers 3
    .param p1, "isLooping"  # Z

    .line 119
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    return-void

    .line 120
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 121
    return-void
.end method

.method public setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V
    .registers 2
    .param p1, "listener"  # Lcom/badlogic/gdx/audio/Music$OnCompletionListener;

    .line 189
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->onCompletionListener:Lcom/badlogic/gdx/audio/Music$OnCompletionListener;

    .line 190
    return-void
.end method

.method public setPan(FF)V
    .registers 8
    .param p1, "pan"  # F
    .param p2, "volume"  # F

    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    return-void

    .line 138
    :cond_5
    move v0, p2

    .line 139
    .local v0, "leftVolume":F
    move v1, p2

    .line 141
    .local v1, "rightVolume":F
    const/4 v2, 0x0

    cmpg-float v3, p1, v2

    const/high16 v4, 0x3f800000  # 1.0f

    if-gez v3, :cond_15

    .line 142
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v4, v2

    mul-float/2addr v1, v4

    goto :goto_1f

    .line 143
    :cond_15
    cmpl-float v2, p1, v2

    if-lez v2, :cond_1f

    .line 144
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v4, v2

    mul-float/2addr v0, v4

    .line 147
    :cond_1f
    :goto_1f
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 148
    iput p2, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->volume:F

    .line 149
    return-void
.end method

.method public setPosition(F)V
    .registers 4
    .param p1, "position"  # F

    .line 162
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    return-void

    .line 164
    :cond_5
    :try_start_5
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->isPrepared:Z

    if-nez v0, :cond_11

    .line 165
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->isPrepared:Z

    .line 168
    :cond_11
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    const/high16 v1, 0x447a0000  # 1000.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_1a} :catch_20
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1a} :catch_1b

    goto :goto_24

    .line 171
    :catch_1b
    move-exception v0

    .line 172
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_25

    .line 169
    .end local v0  # "e":Ljava/io/IOException;
    :catch_20
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 173
    .end local v0  # "e":Ljava/lang/IllegalStateException;
    :goto_24
    nop

    .line 174
    :goto_25
    return-void
.end method

.method public setVolume(F)V
    .registers 3
    .param p1, "volume"  # F

    .line 125
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    return-void

    .line 126
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 127
    iput p1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->volume:F

    .line 128
    return-void
.end method

.method public stop()V
    .registers 3

    .line 153
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    return-void

    .line 154
    :cond_5
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->isPrepared:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 155
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 157
    :cond_f
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 158
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->isPrepared:Z

    .line 159
    return-void
.end method
