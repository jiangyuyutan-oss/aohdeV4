.class public final Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;
.super Lcom/badlogic/gdx/backends/android/AndroidGraphics;
.source "AndroidGraphicsLiveWallpaper.java"


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V
    .registers 5
    .param p1, "lwp"  # Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;
    .param p2, "config"  # Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;
    .param p3, "resolutionStrategy"  # Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;Z)V

    .line 36
    return-void
.end method


# virtual methods
.method protected createGLSurfaceView(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;
    .registers 13
    .param p1, "application"  # Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;
    .param p2, "resolutionStrategy"  # Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    .line 56
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->checkGL20()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 58
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->getEglConfigChooser()Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    move-result-object v0

    .line 59
    .local v0, "configChooser":Landroid/opengl/GLSurfaceView$EGLConfigChooser;
    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper$1;

    invoke-interface {p1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, p2}, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper$1;-><init>(Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;Landroid/content/Context;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V

    .line 66
    .local v1, "view":Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;
    if-eqz v0, :cond_19

    .line 67
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    goto :goto_35

    .line 69
    :cond_19
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v4, v2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->r:I

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v5, v2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->g:I

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v6, v2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->b:I

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v7, v2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->a:I

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v8, v2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->depth:I

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v9, v2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->stencil:I

    move-object v3, v1

    invoke-virtual/range {v3 .. v9}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->setEGLConfigChooser(IIIIII)V

    .line 70
    :goto_35
    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 71
    return-object v1

    .line 56
    .end local v0  # "configChooser":Landroid/opengl/GLSurfaceView$EGLConfigChooser;
    .end local v1  # "view":Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;
    :cond_39
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Libgdx requires OpenGL ES 2.0"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getSurfaceHolder()Landroid/view/SurfaceHolder;
    .registers 3

    .line 45
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->service:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->sync:[I

    monitor-enter v0

    .line 46
    :try_start_9
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    check-cast v1, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->service:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    invoke-virtual {v1}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 47
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_15

    throw v1
.end method

.method protected logManagedCachesStatus()V
    .registers 2

    .line 210
    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 211
    invoke-super {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->logManagedCachesStatus()V

    .line 213
    :cond_7
    return-void
.end method

.method public onDestroyGLSurfaceView()V
    .registers 4

    .line 77
    const-string v0, "WallpaperService"

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->view:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    if-eqz v1, :cond_1e

    .line 80
    :try_start_6
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->view:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    invoke-virtual {v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->onDetachedFromWindow()V

    .line 81
    sget-boolean v1, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->DEBUG:Z

    if-eqz v1, :cond_14

    .line 82
    const-string v1, " > AndroidLiveWallpaper - onDestroy() stopped GLThread managed by GLSurfaceView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_15

    .line 90
    :cond_14
    goto :goto_1e

    .line 84
    :catchall_15
    move-exception v1

    .line 87
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "failed to destroy GLSurfaceView\'s thread! GLSurfaceView.onDetachedFromWindow impl changed since API lvl 16!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    .end local v1  # "t":Ljava/lang/Throwable;
    :cond_1e
    :goto_1e
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 13
    .param p1, "gl"  # Ljavax/microedition/khronos/opengles/GL10;

    .line 113
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 115
    .local v0, "time":J
    iget-boolean v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->resume:Z

    if-nez v2, :cond_14

    .line 116
    iget-wide v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->lastFrameTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const v3, 0x4e6e6b28  # 1.0E9f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->deltaTime:F

    goto :goto_17

    .line 118
    :cond_14
    const/4 v2, 0x0

    iput v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->deltaTime:F

    .line 120
    :goto_17
    iput-wide v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->lastFrameTime:J

    .line 122
    const/4 v2, 0x0

    .line 123
    .local v2, "lrunning":Z
    const/4 v3, 0x0

    .line 124
    .local v3, "lpause":Z
    const/4 v4, 0x0

    .line 125
    .local v4, "ldestroy":Z
    const/4 v5, 0x0

    .line 127
    .local v5, "lresume":Z
    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->synch:Ljava/lang/Object;

    monitor-enter v6

    .line 128
    :try_start_20
    iget-boolean v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->running:Z

    move v2, v7

    .line 129
    iget-boolean v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->pause:Z

    move v3, v7

    .line 130
    iget-boolean v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->destroy:Z

    move v4, v7

    .line 131
    iget-boolean v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->resume:Z

    move v5, v7

    .line 133
    iget-boolean v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->resume:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_38

    .line 134
    iput-boolean v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->resume:Z

    .line 135
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->synch:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 138
    :cond_38
    iget-boolean v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->pause:Z

    if-eqz v7, :cond_43

    .line 139
    iput-boolean v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->pause:Z

    .line 140
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->synch:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 143
    :cond_43
    iget-boolean v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->destroy:Z

    if-eqz v7, :cond_4e

    .line 144
    iput-boolean v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->destroy:Z

    .line 145
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->synch:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 147
    :cond_4e
    monitor-exit v6
    :try_end_4f
    .catchall {:try_start_20 .. :try_end_4f} :catchall_10f

    .line 149
    if-eqz v5, :cond_63

    .line 151
    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v6}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/badlogic/gdx/ApplicationListener;->resume()V

    .line 152
    sget-object v6, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v7, "AndroidGraphics"

    const-string v9, "resumed"

    invoke-interface {v6, v7, v9}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_63
    if-eqz v2, :cond_cd

    .line 162
    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v6}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v6

    monitor-enter v6

    .line 163
    :try_start_6c
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v7}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getExecutedRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 164
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v7}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getExecutedRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v7

    iget-object v9, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v9}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 165
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v7}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 167
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_8e
    iget-object v9, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v9}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getExecutedRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v9

    iget v9, v9, Lcom/badlogic/gdx/utils/Array;->size:I
    :try_end_96
    .catchall {:try_start_6c .. :try_end_96} :catchall_ca

    if-ge v7, v9, :cond_af

    .line 169
    :try_start_98
    iget-object v9, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v9}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getExecutedRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Runnable;

    invoke-interface {v9}, Ljava/lang/Runnable;->run()V
    :try_end_a7
    .catchall {:try_start_98 .. :try_end_a7} :catchall_a8

    .line 172
    goto :goto_ac

    .line 170
    :catchall_a8
    move-exception v9

    .line 171
    .local v9, "t":Ljava/lang/Throwable;
    :try_start_a9
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 167
    .end local v9  # "t":Ljava/lang/Throwable;
    :goto_ac
    add-int/lit8 v7, v7, 0x1

    goto :goto_8e

    .line 174
    .end local v7  # "i":I
    :cond_af
    monitor-exit v6
    :try_end_b0
    .catchall {:try_start_a9 .. :try_end_b0} :catchall_ca

    .line 180
    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v6}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object v6

    invoke-interface {v6}, Lcom/badlogic/gdx/backends/android/AndroidInput;->processEvents()V

    .line 181
    iget-wide v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->frameId:J

    const-wide/16 v9, 0x1

    add-long/2addr v6, v9

    iput-wide v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->frameId:J

    .line 182
    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v6}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/badlogic/gdx/ApplicationListener;->render()V

    goto :goto_cd

    .line 174
    :catchall_ca
    move-exception v7

    :try_start_cb
    monitor-exit v6
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_ca

    throw v7

    .line 186
    :cond_cd
    :goto_cd
    if-eqz v3, :cond_e1

    .line 187
    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v6}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/badlogic/gdx/ApplicationListener;->pause()V

    .line 189
    sget-object v6, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v7, "AndroidGraphics"

    const-string v9, "paused"

    invoke-interface {v6, v7, v9}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_e1
    if-eqz v4, :cond_f5

    .line 194
    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v6}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/badlogic/gdx/ApplicationListener;->dispose()V

    .line 196
    sget-object v6, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v7, "AndroidGraphics"

    const-string v9, "destroyed"

    invoke-interface {v6, v7, v9}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_f5
    iget-wide v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->frameStart:J

    sub-long v6, v0, v6

    const-wide/32 v9, 0x3b9aca00

    cmp-long v6, v6, v9

    if-lez v6, :cond_108

    .line 200
    iget v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->frames:I

    iput v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->fps:I

    .line 201
    iput v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->frames:I

    .line 202
    iput-wide v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->frameStart:J

    .line 204
    :cond_108
    iget v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->frames:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->frames:I

    .line 205
    return-void

    .line 147
    :catchall_10f
    move-exception v7

    :try_start_110
    monitor-exit v6
    :try_end_111
    .catchall {:try_start_110 .. :try_end_111} :catchall_10f

    throw v7
.end method

.method resume()V
    .registers 6

    .line 96
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->synch:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->running:Z

    .line 98
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->resume:Z

    .line 100
    :goto_8
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->resume:Z
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_22

    if-eqz v1, :cond_20

    .line 102
    :try_start_c
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->requestRendering()V

    .line 103
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->synch:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_14} :catch_15
    .catchall {:try_start_c .. :try_end_14} :catchall_22

    .line 106
    :goto_14
    goto :goto_8

    .line 104
    :catch_15
    move-exception v1

    .line 105
    .local v1, "ignored":Ljava/lang/InterruptedException;
    :try_start_16
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "AndroidGraphics"

    const-string v4, "waiting for resume synchronization failed!"

    invoke-interface {v2, v3, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1  # "ignored":Ljava/lang/InterruptedException;
    goto :goto_14

    .line 108
    :cond_20
    monitor-exit v0

    .line 109
    return-void

    .line 108
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_22

    throw v1
.end method
