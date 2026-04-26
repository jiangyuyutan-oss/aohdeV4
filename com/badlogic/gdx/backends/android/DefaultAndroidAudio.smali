.class public Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;
.super Ljava/lang/Object;
.source "DefaultAndroidAudio.java"

# interfaces
.implements Lcom/badlogic/gdx/backends/android/AndroidAudio;


# instance fields
.field private final manager:Landroid/media/AudioManager;

.field private final musics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/backends/android/AndroidMusic;",
            ">;"
        }
    .end annotation
.end field

.field private final soundPool:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "config"  # Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->musics:Ljava/util/List;

    .line 51
    iget-boolean v0, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->disableAudio:Z

    if-nez v0, :cond_4f

    .line 52
    nop

    .line 53
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 54
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 55
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 57
    .local v0, "audioAttrib":Landroid/media/AudioAttributes;
    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v1

    iget v2, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->maxSimultaneousSounds:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->soundPool:Landroid/media/SoundPool;

    .line 58
    .end local v0  # "audioAttrib":Landroid/media/AudioAttributes;
    nop

    .line 61
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->manager:Landroid/media/AudioManager;

    .line 62
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_54

    .line 63
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    goto :goto_54

    .line 66
    :cond_4f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->soundPool:Landroid/media/SoundPool;

    .line 67
    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->manager:Landroid/media/AudioManager;

    .line 69
    :cond_54
    :goto_54
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 5

    .line 218
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->soundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_5

    .line 219
    return-void

    .line 221
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->musics:Ljava/util/List;

    monitor-enter v0

    .line 223
    :try_start_8
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->musics:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 224
    .local v1, "musicsCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/backends/android/AndroidMusic;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/backends/android/AndroidMusic;

    .line 225
    .local v3, "music":Lcom/badlogic/gdx/backends/android/AndroidMusic;
    invoke-virtual {v3}, Lcom/badlogic/gdx/backends/android/AndroidMusic;->dispose()V

    .line 226
    .end local v3  # "music":Lcom/badlogic/gdx/backends/android/AndroidMusic;
    goto :goto_13

    .line 227
    .end local v1  # "musicsCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/backends/android/AndroidMusic;>;"
    :cond_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2a

    .line 228
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 229
    return-void

    .line 227
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public newAudioDevice(IZ)Lcom/badlogic/gdx/audio/AudioDevice;
    .registers 5
    .param p1, "samplingRate"  # I
    .param p2, "isMono"  # Z

    .line 104
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_a

    .line 107
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;-><init>(IZ)V

    return-object v0

    .line 105
    :cond_a
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Android audio is not enabled by the application config."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newAudioRecorder(IZ)Lcom/badlogic/gdx/audio/AudioRecorder;
    .registers 5
    .param p1, "samplingRate"  # I
    .param p2, "isMono"  # Z

    .line 209
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_a

    .line 212
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidAudioRecorder;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/backends/android/AndroidAudioRecorder;-><init>(IZ)V

    return-object v0

    .line 210
    :cond_a
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Android audio is not enabled by the application config."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;
    .registers 11
    .param p1, "file"  # Lcom/badlogic/gdx/files/FileHandle;

    .line 113
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_9b

    .line 116
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;

    .line 118
    .local v0, "aHandle":Lcom/badlogic/gdx/backends/android/AndroidFileHandle;
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 120
    .local v1, "mediaPlayer":Landroid/media/MediaPlayer;
    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->type()Lcom/badlogic/gdx/Files$FileType;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    if-ne v2, v3, :cond_61

    .line 122
    :try_start_14
    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    move-object v8, v2

    .line 123
    .local v8, "descriptor":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 124
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 125
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 126
    new-instance v2, Lcom/badlogic/gdx/backends/android/AndroidMusic;

    invoke-direct {v2, p0, v1}, Lcom/badlogic/gdx/backends/android/AndroidMusic;-><init>(Lcom/badlogic/gdx/backends/android/AndroidAudio;Landroid/media/MediaPlayer;)V

    .line 127
    .local v2, "music":Lcom/badlogic/gdx/backends/android/AndroidMusic;
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->musics:Ljava/util/List;

    monitor-enter v3
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_37} :catch_41

    .line 128
    :try_start_37
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->musics:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    monitor-exit v3

    .line 130
    return-object v2

    .line 129
    :catchall_3e
    move-exception v4

    monitor-exit v3
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_3e

    .end local v0  # "aHandle":Lcom/badlogic/gdx/backends/android/AndroidFileHandle;
    .end local v1  # "mediaPlayer":Landroid/media/MediaPlayer;
    .end local p1  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_40
    throw v4
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_41} :catch_41

    .line 131
    .end local v2  # "music":Lcom/badlogic/gdx/backends/android/AndroidMusic;
    .end local v8  # "descriptor":Landroid/content/res/AssetFileDescriptor;
    .restart local v0  # "aHandle":Lcom/badlogic/gdx/backends/android/AndroidFileHandle;
    .restart local v1  # "mediaPlayer":Landroid/media/MediaPlayer;
    .restart local p1  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :catch_41
    move-exception v2

    .line 132
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading audio file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nNote: Internal audio files must be placed in the assets directory."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 137
    .end local v2  # "ex":Ljava/lang/Exception;
    :cond_61
    :try_start_61
    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->file()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 139
    new-instance v2, Lcom/badlogic/gdx/backends/android/AndroidMusic;

    invoke-direct {v2, p0, v1}, Lcom/badlogic/gdx/backends/android/AndroidMusic;-><init>(Lcom/badlogic/gdx/backends/android/AndroidAudio;Landroid/media/MediaPlayer;)V

    .line 140
    .local v2, "music":Lcom/badlogic/gdx/backends/android/AndroidMusic;
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->musics:Ljava/util/List;

    monitor-enter v3
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_77} :catch_81

    .line 141
    :try_start_77
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->musics:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    monitor-exit v3

    .line 143
    return-object v2

    .line 142
    :catchall_7e
    move-exception v4

    monitor-exit v3
    :try_end_80
    .catchall {:try_start_77 .. :try_end_80} :catchall_7e

    .end local v0  # "aHandle":Lcom/badlogic/gdx/backends/android/AndroidFileHandle;
    .end local v1  # "mediaPlayer":Landroid/media/MediaPlayer;
    .end local p1  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_80
    throw v4
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_81} :catch_81

    .line 144
    .end local v2  # "music":Lcom/badlogic/gdx/backends/android/AndroidMusic;
    .restart local v0  # "aHandle":Lcom/badlogic/gdx/backends/android/AndroidFileHandle;
    .restart local v1  # "mediaPlayer":Landroid/media/MediaPlayer;
    .restart local p1  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :catch_81
    move-exception v2

    .line 145
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading audio file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 114
    .end local v0  # "aHandle":Lcom/badlogic/gdx/backends/android/AndroidFileHandle;
    .end local v1  # "mediaPlayer":Landroid/media/MediaPlayer;
    .end local v2  # "ex":Ljava/lang/Exception;
    :cond_9b
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Android audio is not enabled by the application config."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newMusic(Ljava/io/FileDescriptor;)Lcom/badlogic/gdx/audio/Music;
    .registers 6
    .param p1, "fd"  # Ljava/io/FileDescriptor;

    .line 159
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_2a

    .line 163
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 166
    .local v0, "mediaPlayer":Landroid/media/MediaPlayer;
    :try_start_9
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 167
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 169
    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidMusic;

    invoke-direct {v1, p0, v0}, Lcom/badlogic/gdx/backends/android/AndroidMusic;-><init>(Lcom/badlogic/gdx/backends/android/AndroidAudio;Landroid/media/MediaPlayer;)V

    .line 170
    .local v1, "music":Lcom/badlogic/gdx/backends/android/AndroidMusic;
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->musics:Ljava/util/List;

    monitor-enter v2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_17} :catch_21

    .line 171
    :try_start_17
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->musics:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    monitor-exit v2

    .line 173
    return-object v1

    .line 172
    :catchall_1e
    move-exception v3

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_1e

    .end local v0  # "mediaPlayer":Landroid/media/MediaPlayer;
    .end local p1  # "fd":Ljava/io/FileDescriptor;
    :try_start_20
    throw v3
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_21} :catch_21

    .line 174
    .end local v1  # "music":Lcom/badlogic/gdx/backends/android/AndroidMusic;
    .restart local v0  # "mediaPlayer":Landroid/media/MediaPlayer;
    .restart local p1  # "fd":Ljava/io/FileDescriptor;
    :catch_21
    move-exception v1

    .line 175
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "Error loading audio from FileDescriptor"

    invoke-direct {v2, v3, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 160
    .end local v0  # "mediaPlayer":Landroid/media/MediaPlayer;
    .end local v1  # "ex":Ljava/lang/Exception;
    :cond_2a
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Android audio is not enabled by the application config."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newSound(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Sound;
    .registers 10
    .param p1, "file"  # Lcom/badlogic/gdx/files/FileHandle;

    .line 182
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_79

    .line 186
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;

    .line 187
    .local v0, "aHandle":Lcom/badlogic/gdx/backends/android/AndroidFileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->type()Lcom/badlogic/gdx/Files$FileType;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    const/4 v3, 0x1

    const-string v4, "Error loading audio file: "

    if-ne v1, v2, :cond_47

    .line 189
    :try_start_12
    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 190
    .local v1, "descriptor":Landroid/content/res/AssetFileDescriptor;
    new-instance v2, Lcom/badlogic/gdx/backends/android/AndroidSound;

    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->soundPool:Landroid/media/SoundPool;

    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->manager:Landroid/media/AudioManager;

    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v7, v1, v3}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v3

    invoke-direct {v2, v5, v6, v3}, Lcom/badlogic/gdx/backends/android/AndroidSound;-><init>(Landroid/media/SoundPool;Landroid/media/AudioManager;I)V

    .line 191
    .local v2, "androidSound":Lcom/badlogic/gdx/backends/android/AndroidSound;
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_28} :catch_29

    .line 195
    .end local v1  # "descriptor":Landroid/content/res/AssetFileDescriptor;
    goto :goto_60

    .line 192
    .end local v2  # "androidSound":Lcom/badlogic/gdx/backends/android/AndroidSound;
    :catch_29
    move-exception v1

    .line 193
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nNote: Internal audio files must be placed in the assets directory."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 198
    .end local v1  # "ex":Ljava/io/IOException;
    :cond_47
    :try_start_47
    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidSound;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->soundPool:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->manager:Landroid/media/AudioManager;

    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->file()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {v1, v2, v5, v3}, Lcom/badlogic/gdx/backends/android/AndroidSound;-><init>(Landroid/media/SoundPool;Landroid/media/AudioManager;I)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_5e} :catch_61

    move-object v2, v1

    .line 201
    .restart local v2  # "androidSound":Lcom/badlogic/gdx/backends/android/AndroidSound;
    nop

    .line 203
    :goto_60
    return-object v2

    .line 199
    .end local v2  # "androidSound":Lcom/badlogic/gdx/backends/android/AndroidSound;
    :catch_61
    move-exception v1

    .line 200
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 183
    .end local v0  # "aHandle":Lcom/badlogic/gdx/backends/android/AndroidFileHandle;
    .end local v1  # "ex":Ljava/lang/Exception;
    :cond_79
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Android audio is not enabled by the application config."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyMusicDisposed(Lcom/badlogic/gdx/backends/android/AndroidMusic;)V
    .registers 4
    .param p1, "music"  # Lcom/badlogic/gdx/backends/android/AndroidMusic;

    .line 233
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->musics:Ljava/util/List;

    monitor-enter v0

    .line 234
    :try_start_3
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->musics:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 235
    monitor-exit v0

    .line 236
    return-void

    .line 235
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public pause()V
    .registers 5

    .line 73
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->soundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_5

    .line 74
    return-void

    .line 76
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->musics:Ljava/util/List;

    monitor-enter v0

    .line 77
    :try_start_8
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->musics:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/backends/android/AndroidMusic;

    .line 78
    .local v2, "music":Lcom/badlogic/gdx/backends/android/AndroidMusic;
    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidMusic;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 79
    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidMusic;->pause()V

    .line 80
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/badlogic/gdx/backends/android/AndroidMusic;->wasPlaying:Z

    goto :goto_2a

    .line 82
    :cond_27
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/badlogic/gdx/backends/android/AndroidMusic;->wasPlaying:Z

    .line 83
    .end local v2  # "music":Lcom/badlogic/gdx/backends/android/AndroidMusic;
    :goto_2a
    goto :goto_e

    .line 84
    :cond_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_32

    .line 85
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoPause()V

    .line 86
    return-void

    .line 84
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public resume()V
    .registers 4

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->soundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_5

    .line 91
    return-void

    .line 93
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->musics:Ljava/util/List;

    monitor-enter v0

    .line 94
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    :try_start_9
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->musics:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 95
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->musics:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/backends/android/AndroidMusic;

    iget-boolean v2, v2, Lcom/badlogic/gdx/backends/android/AndroidMusic;->wasPlaying:Z

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->musics:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/backends/android/AndroidMusic;

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidMusic;->play()V

    .line 94
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 97
    .end local v1  # "i":I
    :cond_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_32

    .line 98
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoResume()V

    .line 99
    return-void

    .line 97
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method
