.class public Lcom/badlogic/gdx/backends/android/AndroidGraphics;
.super Lcom/badlogic/gdx/AbstractGraphics;
.source "AndroidGraphics.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/backends/android/AndroidGraphics$AndroidMonitor;,
        Lcom/badlogic/gdx/backends/android/AndroidGraphics$AndroidDisplayMode;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AndroidGraphics"

.field static volatile enforceContinuousRendering:Z


# instance fields
.field app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

.field private bufferFormat:Lcom/badlogic/gdx/Graphics$BufferFormat;

.field protected final config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

.field volatile created:Z

.field protected deltaTime:F

.field private density:F

.field volatile destroy:Z

.field eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field extensions:Ljava/lang/String;

.field protected fps:I

.field protected frameId:J

.field protected frameStart:J

.field protected frames:I

.field gl20:Lcom/badlogic/gdx/graphics/GL20;

.field gl30:Lcom/badlogic/gdx/graphics/GL30;

.field glVersion:Lcom/badlogic/gdx/graphics/glutils/GLVersion;

.field height:I

.field private isContinuous:Z

.field protected lastFrameTime:J

.field volatile pause:Z

.field private ppcX:F

.field private ppcY:F

.field private ppiX:F

.field private ppiY:F

.field volatile resume:Z

.field volatile running:Z

.field safeInsetBottom:I

.field safeInsetLeft:I

.field safeInsetRight:I

.field safeInsetTop:I

.field synch:Ljava/lang/Object;

.field value:[I

.field final view:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

.field width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->enforceContinuousRendering:Z

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V
    .registers 5
    .param p1, "application"  # Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;
    .param p2, "config"  # Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;
    .param p3, "resolutionStrategy"  # Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    .line 98
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;Z)V

    .line 99
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;Z)V
    .registers 15
    .param p1, "application"  # Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;
    .param p2, "config"  # Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;
    .param p3, "resolutionStrategy"  # Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;
    .param p4, "focusableView"  # Z

    .line 102
    invoke-direct {p0}, Lcom/badlogic/gdx/AbstractGraphics;-><init>()V

    .line 73
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->lastFrameTime:J

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->deltaTime:F

    .line 75
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->frameStart:J

    .line 76
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->frameId:J

    .line 77
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->frames:I

    .line 80
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->created:Z

    .line 81
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->running:Z

    .line 82
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->pause:Z

    .line 83
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->resume:Z

    .line 84
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->destroy:Z

    .line 86
    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->ppiX:F

    .line 87
    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->ppiY:F

    .line 88
    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->ppcX:F

    .line 89
    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->ppcY:F

    .line 90
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->density:F

    .line 93
    new-instance v0, Lcom/badlogic/gdx/Graphics$BufferFormat;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/badlogic/gdx/Graphics$BufferFormat;-><init>(IIIIIIIZ)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->bufferFormat:Lcom/badlogic/gdx/Graphics$BufferFormat;

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->isContinuous:Z

    .line 333
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->value:[I

    .line 342
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->synch:Ljava/lang/Object;

    .line 103
    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    .line 104
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    .line 105
    invoke-virtual {p0, p1, p3}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->createGLSurfaceView(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    .line 106
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->preserveEGLContextOnPause()V

    .line 107
    if-eqz p4, :cond_6a

    .line 108
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->setFocusable(Z)V

    .line 109
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->setFocusableInTouchMode(Z)V

    .line 111
    :cond_6a
    return-void
.end method

.method private getAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .registers 8
    .param p1, "egl"  # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"  # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"  # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p4, "attrib"  # I
    .param p5, "defValue"  # I

    .line 336
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->value:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 337
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->value:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    .line 339
    :cond_e
    return p5
.end method


# virtual methods
.method protected checkGL20()Z
    .registers 20

    .line 158
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 159
    .local v0, "egl":Ljavax/microedition/khronos/egl/EGL10;
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v7

    .line 161
    .local v7, "display":Ljavax/microedition/khronos/egl/EGLDisplay;
    const/4 v1, 0x2

    new-array v8, v1, [I

    .line 162
    .local v8, "version":[I
    invoke-interface {v0, v7, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 164
    const/16 v18, 0x4

    .line 165
    .local v18, "EGL_OPENGL_ES2_BIT":I
    const/16 v15, 0x3040

    const/16 v17, 0x3038

    const/16 v9, 0x3024

    const/4 v10, 0x4

    const/16 v11, 0x3023

    const/4 v12, 0x4

    const/16 v13, 0x3022

    const/4 v14, 0x4

    move/from16 v16, v18

    filled-new-array/range {v9 .. v17}, [I

    move-result-object v3

    .line 168
    .local v3, "configAttribs":[I
    const/16 v1, 0xa

    new-array v9, v1, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 169
    .local v9, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    const/4 v10, 0x1

    new-array v11, v10, [I

    .line 170
    .local v11, "num_config":[I
    const/16 v5, 0xa

    move-object v1, v0

    move-object v2, v7

    move-object v4, v9

    move-object v6, v11

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 171
    invoke-interface {v0, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 172
    const/4 v1, 0x0

    aget v2, v11, v1

    if-lez v2, :cond_40

    goto :goto_41

    :cond_40
    move v10, v1

    :goto_41
    return v10
.end method

.method public clearManagedCaches()V
    .registers 2

    .line 536
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/Mesh;->clearAllMeshes(Lcom/badlogic/gdx/Application;)V

    .line 537
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/Texture;->clearAllTextures(Lcom/badlogic/gdx/Application;)V

    .line 538
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/Cubemap;->clearAllCubemaps(Lcom/badlogic/gdx/Application;)V

    .line 539
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/TextureArray;->clearAllTextureArrays(Lcom/badlogic/gdx/Application;)V

    .line 540
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->clearAllShaderPrograms(Lcom/badlogic/gdx/Application;)V

    .line 541
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->clearAllFrameBuffers(Lcom/badlogic/gdx/Application;)V

    .line 543
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->logManagedCachesStatus()V

    .line 544
    return-void
.end method

.method protected createGLSurfaceView(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;
    .registers 14
    .param p1, "application"  # Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;
    .param p2, "resolutionStrategy"  # Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    .line 118
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->checkGL20()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 120
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getEglConfigChooser()Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    move-result-object v0

    .line 121
    .local v0, "configChooser":Landroid/opengl/GLSurfaceView$EGLConfigChooser;
    new-instance v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    invoke-interface {p1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget-boolean v3, v3, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useGL30:Z

    if-eqz v3, :cond_18

    const/4 v3, 0x3

    goto :goto_19

    :cond_18
    const/4 v3, 0x2

    :goto_19
    invoke-direct {v1, v2, p2, v3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;-><init>(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;I)V

    .line 122
    .local v1, "view":Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;
    if-eqz v0, :cond_22

    .line 123
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    goto :goto_3e

    .line 125
    :cond_22
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v5, v2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->r:I

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v6, v2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->g:I

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v7, v2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->b:I

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v8, v2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->a:I

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v9, v2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->depth:I

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v10, v2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->stencil:I

    move-object v4, v1

    invoke-virtual/range {v4 .. v10}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->setEGLConfigChooser(IIIIII)V

    .line 126
    :goto_3e
    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 127
    return-object v1

    .line 118
    .end local v0  # "configChooser":Landroid/opengl/GLSurfaceView$EGLConfigChooser;
    .end local v1  # "view":Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;
    :cond_42
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Libgdx requires OpenGL ES 2.0"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method destroy()V
    .registers 6

    .line 390
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->synch:Ljava/lang/Object;

    monitor-enter v0

    .line 391
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->running:Z

    .line 392
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->destroy:Z

    .line 394
    :goto_9
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->destroy:Z
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_20

    if-eqz v1, :cond_1e

    .line 396
    :try_start_d
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->synch:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_12} :catch_13
    .catchall {:try_start_d .. :try_end_12} :catchall_20

    .line 399
    :goto_12
    goto :goto_9

    .line 397
    :catch_13
    move-exception v1

    .line 398
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_14
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "AndroidGraphics"

    const-string v4, "waiting for destroy synchronization failed!"

    invoke-interface {v2, v3, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1  # "ex":Ljava/lang/InterruptedException;
    goto :goto_12

    .line 401
    :cond_1e
    monitor-exit v0

    .line 402
    return-void

    .line 401
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public getBackBufferHeight()I
    .registers 2

    .line 235
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->height:I

    return v0
.end method

.method public getBackBufferWidth()I
    .registers 2

    .line 230
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->width:I

    return v0
.end method

.method public getBufferFormat()Lcom/badlogic/gdx/Graphics$BufferFormat;
    .registers 2

    .line 695
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->bufferFormat:Lcom/badlogic/gdx/Graphics$BufferFormat;

    return-object v0
.end method

.method public getDeltaTime()F
    .registers 2

    .line 514
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->deltaTime:F

    return v0
.end method

.method public getDensity()F
    .registers 2

    .line 580
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->density:F

    return v0
.end method

.method public getDisplayMode()Lcom/badlogic/gdx/Graphics$DisplayMode;
    .registers 9

    .line 688
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 689
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 690
    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidGraphics$AndroidDisplayMode;

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/backends/android/AndroidGraphics$AndroidDisplayMode;-><init>(Lcom/badlogic/gdx/backends/android/AndroidGraphics;IIII)V

    return-object v1
.end method

.method public getDisplayMode(Lcom/badlogic/gdx/Graphics$Monitor;)Lcom/badlogic/gdx/Graphics$DisplayMode;
    .registers 3
    .param p1, "monitor"  # Lcom/badlogic/gdx/Graphics$Monitor;

    .line 615
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getDisplayMode()Lcom/badlogic/gdx/Graphics$DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayModes()[Lcom/badlogic/gdx/Graphics$DisplayMode;
    .registers 4

    .line 620
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/badlogic/gdx/Graphics$DisplayMode;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getDisplayMode()Lcom/badlogic/gdx/Graphics$DisplayMode;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getDisplayModes(Lcom/badlogic/gdx/Graphics$Monitor;)[Lcom/badlogic/gdx/Graphics$DisplayMode;
    .registers 3
    .param p1, "monitor"  # Lcom/badlogic/gdx/Graphics$Monitor;

    .line 610
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getDisplayModes()[Lcom/badlogic/gdx/Graphics$DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method protected getEglConfigChooser()Landroid/opengl/GLSurfaceView$EGLConfigChooser;
    .registers 10

    .line 143
    new-instance v8, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v1, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->r:I

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v2, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->g:I

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v3, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->b:I

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v4, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v5, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->depth:I

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v6, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->stencil:I

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v7, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->numSamples:I

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;-><init>(IIIIIII)V

    return-object v8
.end method

.method public getFrameId()J
    .registers 3

    .line 508
    iget-wide v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->frameId:J

    return-wide v0
.end method

.method public getFramesPerSecond()I
    .registers 2

    .line 532
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->fps:I

    return v0
.end method

.method public getGL20()Lcom/badlogic/gdx/graphics/GL20;
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    return-object v0
.end method

.method public getGL30()Lcom/badlogic/gdx/graphics/GL30;
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    return-object v0
.end method

.method public getGLVersion()Lcom/badlogic/gdx/graphics/glutils/GLVersion;
    .registers 2

    .line 526
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->glVersion:Lcom/badlogic/gdx/graphics/glutils/GLVersion;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 219
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->height:I

    return v0
.end method

.method public getMonitor()Lcom/badlogic/gdx/Graphics$Monitor;
    .registers 2

    .line 600
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getPrimaryMonitor()Lcom/badlogic/gdx/Graphics$Monitor;

    move-result-object v0

    return-object v0
.end method

.method public getMonitors()[Lcom/badlogic/gdx/Graphics$Monitor;
    .registers 4

    .line 605
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/badlogic/gdx/Graphics$Monitor;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getPrimaryMonitor()Lcom/badlogic/gdx/Graphics$Monitor;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getPpcX()F
    .registers 2

    .line 570
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->ppcX:F

    return v0
.end method

.method public getPpcY()F
    .registers 2

    .line 575
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->ppcY:F

    return v0
.end method

.method public getPpiX()F
    .registers 2

    .line 560
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->ppiX:F

    return v0
.end method

.method public getPpiY()F
    .registers 2

    .line 565
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->ppiY:F

    return v0
.end method

.method public getPrimaryMonitor()Lcom/badlogic/gdx/Graphics$Monitor;
    .registers 4

    .line 595
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics$AndroidMonitor;

    const/4 v1, 0x0

    const-string v2, "Primary Monitor"

    invoke-direct {v0, p0, v1, v1, v2}, Lcom/badlogic/gdx/backends/android/AndroidGraphics$AndroidMonitor;-><init>(Lcom/badlogic/gdx/backends/android/AndroidGraphics;IILjava/lang/String;)V

    return-object v0
.end method

.method public getSafeInsetBottom()I
    .registers 2

    .line 657
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->safeInsetBottom:I

    return v0
.end method

.method public getSafeInsetLeft()I
    .registers 2

    .line 647
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->safeInsetLeft:I

    return v0
.end method

.method public getSafeInsetRight()I
    .registers 2

    .line 662
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->safeInsetRight:I

    return v0
.end method

.method public getSafeInsetTop()I
    .registers 2

    .line 652
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->safeInsetTop:I

    return v0
.end method

.method public getType()Lcom/badlogic/gdx/Graphics$GraphicsType;
    .registers 2

    .line 520
    sget-object v0, Lcom/badlogic/gdx/Graphics$GraphicsType;->AndroidGL:Lcom/badlogic/gdx/Graphics$GraphicsType;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .line 555
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 225
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->width:I

    return v0
.end method

.method public isContinuousRendering()Z
    .registers 2

    .line 724
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->isContinuous:Z

    return v0
.end method

.method public isFullscreen()Z
    .registers 2

    .line 736
    const/4 v0, 0x1

    return v0
.end method

.method public isGL30Available()Z
    .registers 2

    .line 194
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected logConfig(Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 22
    .param p1, "config"  # Ljavax/microedition/khronos/egl/EGLConfig;

    .line 312
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 313
    .local v0, "egl":Ljavax/microedition/khronos/egl/EGL10;
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v7

    .line 314
    .local v7, "display":Ljavax/microedition/khronos/egl/EGLDisplay;
    const/16 v5, 0x3024

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v7

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v15

    .line 315
    .local v15, "r":I
    const/16 v5, 0x3023

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v14

    .line 316
    .local v14, "g":I
    const/16 v5, 0x3022

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v13

    .line 317
    .local v13, "b":I
    const/16 v5, 0x3021

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    .line 318
    .local v12, "a":I
    const/16 v5, 0x3025

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    .line 319
    .local v11, "d":I
    const/16 v5, 0x3026

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    .line 320
    .local v10, "s":I
    const/16 v5, 0x3031

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    .line 321
    const/16 v5, 0x30e1

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    .line 320
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 322
    .local v9, "samples":I
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    if-eqz v1, :cond_51

    const/4 v1, 0x1

    goto :goto_52

    :cond_51
    const/4 v1, 0x0

    .line 324
    .local v1, "coverageSample":Z
    :goto_52
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "framebuffer: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "AndroidGraphics"

    invoke-interface {v2, v5, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "depthbuffer: ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stencilbuffer: ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "samples: ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "coverage sampling: ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    new-instance v2, Lcom/badlogic/gdx/Graphics$BufferFormat;

    move-object v8, v2

    move v3, v9

    .end local v9  # "samples":I
    .local v3, "samples":I
    move v9, v15

    move v4, v10

    .end local v10  # "s":I
    .local v4, "s":I
    move v10, v14

    move v5, v11

    .end local v11  # "d":I
    .local v5, "d":I
    move v11, v13

    move v6, v12

    .end local v12  # "a":I
    .local v6, "a":I
    move/from16 v17, v13

    .end local v13  # "b":I
    .local v17, "b":I
    move v13, v5

    move/from16 v18, v14

    .end local v14  # "g":I
    .local v18, "g":I
    move v14, v4

    move/from16 v19, v15

    .end local v15  # "r":I
    .local v19, "r":I
    move v15, v3

    move/from16 v16, v1

    invoke-direct/range {v8 .. v16}, Lcom/badlogic/gdx/Graphics$BufferFormat;-><init>(IIIIIIIZ)V

    move-object/from16 v8, p0

    iput-object v2, v8, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->bufferFormat:Lcom/badlogic/gdx/Graphics$BufferFormat;

    .line 331
    return-void
.end method

.method protected logManagedCachesStatus()V
    .registers 4

    .line 547
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {}, Lcom/badlogic/gdx/graphics/Mesh;->getManagedStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AndroidGraphics"

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {}, Lcom/badlogic/gdx/graphics/Texture;->getManagedStatus()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {}, Lcom/badlogic/gdx/graphics/Cubemap;->getManagedStatus()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getManagedStatus()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->getManagedStatus()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    return-void
.end method

.method public newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;
    .registers 5
    .param p1, "pixmap"  # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "xHotspot"  # I
    .param p3, "yHotspot"  # I

    .line 742
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 14
    .param p1, "gl"  # Ljavax/microedition/khronos/opengles/GL10;

    .line 406
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 408
    .local v0, "time":J
    iget-boolean v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->resume:Z

    if-nez v2, :cond_14

    .line 409
    iget-wide v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->lastFrameTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const v3, 0x4e6e6b28  # 1.0E9f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->deltaTime:F

    goto :goto_17

    .line 411
    :cond_14
    const/4 v2, 0x0

    iput v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->deltaTime:F

    .line 413
    :goto_17
    iput-wide v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->lastFrameTime:J

    .line 416
    const/4 v2, 0x0

    .line 417
    .local v2, "lrunning":Z
    const/4 v3, 0x0

    .line 418
    .local v3, "lpause":Z
    const/4 v4, 0x0

    .line 419
    .local v4, "ldestroy":Z
    const/4 v5, 0x0

    .line 421
    .local v5, "lresume":Z
    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->synch:Ljava/lang/Object;

    monitor-enter v6

    .line 422
    :try_start_20
    iget-boolean v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->running:Z

    move v2, v7

    .line 423
    iget-boolean v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->pause:Z

    move v3, v7

    .line 424
    iget-boolean v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->destroy:Z

    move v4, v7

    .line 425
    iget-boolean v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->resume:Z

    move v5, v7

    .line 427
    iget-boolean v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->resume:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_33

    .line 428
    iput-boolean v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->resume:Z

    .line 431
    :cond_33
    iget-boolean v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->pause:Z

    if-eqz v7, :cond_3e

    .line 432
    iput-boolean v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->pause:Z

    .line 433
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->synch:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 436
    :cond_3e
    iget-boolean v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->destroy:Z

    if-eqz v7, :cond_49

    .line 437
    iput-boolean v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->destroy:Z

    .line 438
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->synch:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 440
    :cond_49
    monitor-exit v6
    :try_end_4a
    .catchall {:try_start_20 .. :try_end_4a} :catchall_16a

    .line 442
    if-eqz v5, :cond_80

    .line 443
    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v6}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getLifecycleListeners()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v6

    .line 444
    .local v6, "lifecycleListeners":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/LifecycleListener;>;"
    monitor-enter v6

    .line 445
    :try_start_53
    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/badlogic/gdx/LifecycleListener;

    .line 446
    .local v7, "listeners":[Lcom/badlogic/gdx/LifecycleListener;
    const/4 v9, 0x0

    .local v9, "i":I
    iget v10, v6, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v10, "n":I
    :goto_5c
    if-ge v9, v10, :cond_66

    .line 447
    aget-object v11, v7, v9

    invoke-interface {v11}, Lcom/badlogic/gdx/LifecycleListener;->resume()V

    .line 446
    add-int/lit8 v9, v9, 0x1

    goto :goto_5c

    .line 449
    .end local v9  # "i":I
    .end local v10  # "n":I
    :cond_66
    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 450
    .end local v7  # "listeners":[Lcom/badlogic/gdx/LifecycleListener;
    monitor-exit v6
    :try_end_6a
    .catchall {:try_start_53 .. :try_end_6a} :catchall_7d

    .line 451
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v7}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object v7

    invoke-interface {v7}, Lcom/badlogic/gdx/ApplicationListener;->resume()V

    .line 452
    sget-object v7, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v9, "AndroidGraphics"

    const-string v10, "resumed"

    invoke-interface {v7, v9, v10}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_80

    .line 450
    :catchall_7d
    move-exception v7

    :try_start_7e
    monitor-exit v6
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    throw v7

    .line 455
    .end local v6  # "lifecycleListeners":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/LifecycleListener;>;"
    :cond_80
    :goto_80
    if-eqz v2, :cond_ea

    .line 456
    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v6}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v6

    monitor-enter v6

    .line 457
    :try_start_89
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v7}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getExecutedRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 458
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v7}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getExecutedRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v7

    iget-object v9, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v9}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 459
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v7}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 460
    monitor-exit v6
    :try_end_ab
    .catchall {:try_start_89 .. :try_end_ab} :catchall_e7

    .line 462
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_ac
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v7}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getExecutedRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v7

    iget v7, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v7, :cond_cd

    .line 464
    :try_start_b6
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v7}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getExecutedRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V
    :try_end_c5
    .catchall {:try_start_b6 .. :try_end_c5} :catchall_c6

    .line 467
    goto :goto_ca

    .line 465
    :catchall_c6
    move-exception v7

    .line 466
    .local v7, "t":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 462
    .end local v7  # "t":Ljava/lang/Throwable;
    :goto_ca
    add-int/lit8 v6, v6, 0x1

    goto :goto_ac

    .line 469
    .end local v6  # "i":I
    :cond_cd
    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v6}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object v6

    invoke-interface {v6}, Lcom/badlogic/gdx/backends/android/AndroidInput;->processEvents()V

    .line 470
    iget-wide v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->frameId:J

    const-wide/16 v9, 0x1

    add-long/2addr v6, v9

    iput-wide v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->frameId:J

    .line 471
    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v6}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/badlogic/gdx/ApplicationListener;->render()V

    goto :goto_ea

    .line 460
    :catchall_e7
    move-exception v7

    :try_start_e8
    monitor-exit v6
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e7

    throw v7

    .line 474
    :cond_ea
    :goto_ea
    if-eqz v3, :cond_11d

    .line 475
    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v6}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getLifecycleListeners()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v6

    .line 476
    .local v6, "lifecycleListeners":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/LifecycleListener;>;"
    monitor-enter v6

    .line 477
    :try_start_f3
    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/badlogic/gdx/LifecycleListener;

    .line 478
    .local v7, "listeners":[Lcom/badlogic/gdx/LifecycleListener;
    const/4 v9, 0x0

    .restart local v9  # "i":I
    iget v10, v6, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .restart local v10  # "n":I
    :goto_fc
    if-ge v9, v10, :cond_106

    .line 479
    aget-object v11, v7, v9

    invoke-interface {v11}, Lcom/badlogic/gdx/LifecycleListener;->pause()V

    .line 478
    add-int/lit8 v9, v9, 0x1

    goto :goto_fc

    .line 481
    .end local v7  # "listeners":[Lcom/badlogic/gdx/LifecycleListener;
    .end local v9  # "i":I
    .end local v10  # "n":I
    :cond_106
    monitor-exit v6
    :try_end_107
    .catchall {:try_start_f3 .. :try_end_107} :catchall_11a

    .line 482
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v7}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object v7

    invoke-interface {v7}, Lcom/badlogic/gdx/ApplicationListener;->pause()V

    .line 483
    sget-object v7, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v9, "AndroidGraphics"

    const-string v10, "paused"

    invoke-interface {v7, v9, v10}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11d

    .line 481
    :catchall_11a
    move-exception v7

    :try_start_11b
    monitor-exit v6
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_11a

    throw v7

    .line 486
    .end local v6  # "lifecycleListeners":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/LifecycleListener;>;"
    :cond_11d
    :goto_11d
    if-eqz v4, :cond_150

    .line 487
    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v6}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getLifecycleListeners()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v6

    .line 488
    .restart local v6  # "lifecycleListeners":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/LifecycleListener;>;"
    monitor-enter v6

    .line 489
    :try_start_126
    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/badlogic/gdx/LifecycleListener;

    .line 490
    .restart local v7  # "listeners":[Lcom/badlogic/gdx/LifecycleListener;
    const/4 v9, 0x0

    .restart local v9  # "i":I
    iget v10, v6, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .restart local v10  # "n":I
    :goto_12f
    if-ge v9, v10, :cond_139

    .line 491
    aget-object v11, v7, v9

    invoke-interface {v11}, Lcom/badlogic/gdx/LifecycleListener;->dispose()V

    .line 490
    add-int/lit8 v9, v9, 0x1

    goto :goto_12f

    .line 493
    .end local v7  # "listeners":[Lcom/badlogic/gdx/LifecycleListener;
    .end local v9  # "i":I
    .end local v10  # "n":I
    :cond_139
    monitor-exit v6
    :try_end_13a
    .catchall {:try_start_126 .. :try_end_13a} :catchall_14d

    .line 494
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v7}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object v7

    invoke-interface {v7}, Lcom/badlogic/gdx/ApplicationListener;->dispose()V

    .line 495
    sget-object v7, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v9, "AndroidGraphics"

    const-string v10, "destroyed"

    invoke-interface {v7, v9, v10}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_150

    .line 493
    :catchall_14d
    move-exception v7

    :try_start_14e
    monitor-exit v6
    :try_end_14f
    .catchall {:try_start_14e .. :try_end_14f} :catchall_14d

    throw v7

    .line 498
    .end local v6  # "lifecycleListeners":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/LifecycleListener;>;"
    :cond_150
    :goto_150
    iget-wide v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->frameStart:J

    sub-long v6, v0, v6

    const-wide/32 v9, 0x3b9aca00

    cmp-long v6, v6, v9

    if-lez v6, :cond_163

    .line 499
    iget v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->frames:I

    iput v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->fps:I

    .line 500
    iput v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->frames:I

    .line 501
    iput-wide v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->frameStart:J

    .line 503
    :cond_163
    iget v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->frames:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->frames:I

    .line 504
    return-void

    .line 440
    :catchall_16a
    move-exception v7

    :try_start_16b
    monitor-exit v6
    :try_end_16c
    .catchall {:try_start_16b .. :try_end_16c} :catchall_16a

    throw v7
.end method

.method public onPauseGLSurfaceView()V
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    if-eqz v0, :cond_9

    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->onPause()V

    .line 134
    :cond_9
    return-void
.end method

.method public onResumeGLSurfaceView()V
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    if-eqz v0, :cond_9

    .line 138
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->onResume()V

    .line 140
    :cond_9
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 7
    .param p1, "gl"  # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"  # I
    .param p3, "height"  # I

    .line 271
    iput p2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->width:I

    .line 272
    iput p3, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->height:I

    .line 273
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->updatePpi()V

    .line 274
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->updateSafeAreaInsets()V

    .line 275
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->width:I

    iget v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->height:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 276
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->created:Z

    if-nez v0, :cond_2a

    .line 277
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/ApplicationListener;->create()V

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->created:Z

    .line 279
    monitor-enter p0

    .line 280
    :try_start_23
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->running:Z

    .line 281
    monitor-exit p0

    goto :goto_2a

    :catchall_27
    move-exception v0

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_27

    throw v0

    .line 283
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/badlogic/gdx/ApplicationListener;->resize(II)V

    .line 284
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 7
    .param p1, "gl"  # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"  # Ljavax/microedition/khronos/egl/EGLConfig;

    .line 288
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 289
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->setupGL(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 290
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->logConfig(Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 291
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->updatePpi()V

    .line 292
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->updateSafeAreaInsets()V

    .line 294
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/Mesh;->invalidateAllMeshes(Lcom/badlogic/gdx/Application;)V

    .line 295
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/Texture;->invalidateAllTextures(Lcom/badlogic/gdx/Application;)V

    .line 296
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/Cubemap;->invalidateAllCubemaps(Lcom/badlogic/gdx/Application;)V

    .line 297
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/TextureArray;->invalidateAllTextureArrays(Lcom/badlogic/gdx/Application;)V

    .line 298
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->invalidateAllShaderPrograms(Lcom/badlogic/gdx/Application;)V

    .line 299
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->invalidateAllFrameBuffers(Lcom/badlogic/gdx/Application;)V

    .line 301
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->logManagedCachesStatus()V

    .line 303
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 304
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->width:I

    .line 305
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->height:I

    .line 306
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->lastFrameTime:J

    .line 308
    iget v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->width:I

    iget v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->height:I

    const/4 v3, 0x0

    invoke-interface {p1, v3, v3, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 309
    return-void
.end method

.method pause()V
    .registers 6

    .line 352
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->synch:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    :try_start_3
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->running:Z

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 354
    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->running:Z

    .line 355
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->pause:Z

    .line 357
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    new-instance v2, Lcom/badlogic/gdx/backends/android/AndroidGraphics$1;

    invoke-direct {v2, p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics$1;-><init>(Lcom/badlogic/gdx/backends/android/AndroidGraphics;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->queueEvent(Ljava/lang/Runnable;)V

    .line 371
    :goto_19
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->pause:Z
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_46

    if-eqz v1, :cond_44

    .line 375
    :try_start_1d
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->synch:Ljava/lang/Object;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 376
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->pause:Z

    if-eqz v1, :cond_38

    .line 379
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AndroidGraphics"

    const-string v3, "waiting for pause synchronization took too long; assuming deadlock and killing"

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_38} :catch_39
    .catchall {:try_start_1d .. :try_end_38} :catchall_46

    .line 384
    :cond_38
    :goto_38
    goto :goto_19

    .line 382
    :catch_39
    move-exception v1

    .line 383
    .local v1, "ignored":Ljava/lang/InterruptedException;
    :try_start_3a
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "AndroidGraphics"

    const-string v4, "waiting for pause synchronization failed!"

    invoke-interface {v2, v3, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1  # "ignored":Ljava/lang/InterruptedException;
    goto :goto_38

    .line 386
    :cond_44
    monitor-exit v0

    .line 387
    return-void

    .line 386
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3a .. :try_end_48} :catchall_46

    throw v1
.end method

.method protected preserveEGLContextOnPause()V
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->setPreserveEGLContextOnPause(Z)V

    .line 115
    return-void
.end method

.method public requestRendering()V
    .registers 2

    .line 729
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    if-eqz v0, :cond_9

    .line 730
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->requestRender()V

    .line 732
    :cond_9
    return-void
.end method

.method resume()V
    .registers 3

    .line 345
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->synch:Ljava/lang/Object;

    monitor-enter v0

    .line 346
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->running:Z

    .line 347
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->resume:Z

    .line 348
    monitor-exit v0

    .line 349
    return-void

    .line 348
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public setContinuousRendering(Z)V
    .registers 4
    .param p1, "isContinuous"  # Z

    .line 714
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    if-eqz v0, :cond_17

    .line 716
    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->enforceContinuousRendering:Z

    if-nez v0, :cond_d

    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->isContinuous:Z

    .line 717
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->isContinuous:Z

    .line 718
    .local v0, "renderMode":I
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->setRenderMode(I)V

    .line 720
    .end local v0  # "renderMode":I
    :cond_17
    return-void
.end method

.method public setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V
    .registers 2
    .param p1, "cursor"  # Lcom/badlogic/gdx/graphics/Cursor;

    .line 747
    return-void
.end method

.method public setForegroundFPS(I)V
    .registers 2
    .param p1, "fps"  # I

    .line 704
    return-void
.end method

.method public setFullscreenMode(Lcom/badlogic/gdx/Graphics$DisplayMode;)Z
    .registers 3
    .param p1, "displayMode"  # Lcom/badlogic/gdx/Graphics$DisplayMode;

    .line 590
    const/4 v0, 0x0

    return v0
.end method

.method public setGL20(Lcom/badlogic/gdx/graphics/GL20;)V
    .registers 3
    .param p1, "gl20"  # Lcom/badlogic/gdx/graphics/GL20;

    .line 184
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 185
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    if-nez v0, :cond_a

    .line 186
    sput-object p1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    .line 187
    sput-object p1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 189
    :cond_a
    return-void
.end method

.method public setGL30(Lcom/badlogic/gdx/graphics/GL30;)V
    .registers 3
    .param p1, "gl30"  # Lcom/badlogic/gdx/graphics/GL30;

    .line 206
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    .line 207
    if-eqz p1, :cond_10

    .line 208
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 210
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    sput-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    .line 211
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    sput-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 212
    sput-object p1, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    .line 214
    :cond_10
    return-void
.end method

.method public setResizable(Z)V
    .registers 2
    .param p1, "resizable"  # Z

    .line 684
    return-void
.end method

.method public setSystemCursor(Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;)V
    .registers 2
    .param p1, "systemCursor"  # Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    .line 751
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "title"  # Ljava/lang/String;

    .line 673
    return-void
.end method

.method public setUndecorated(Z)V
    .registers 5
    .param p1, "undecorated"  # Z

    .line 677
    move v0, p1

    .line 678
    .local v0, "mask":I
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getApplicationWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFlags(II)V

    .line 679
    return-void
.end method

.method public setVSync(Z)V
    .registers 2
    .param p1, "vsync"  # Z

    .line 700
    return-void
.end method

.method public setWindowedMode(II)Z
    .registers 4
    .param p1, "width"  # I
    .param p2, "height"  # I

    .line 667
    const/4 v0, 0x0

    return v0
.end method

.method protected setupGL(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 11
    .param p1, "gl"  # Ljavax/microedition/khronos/opengles/GL10;

    .line 244
    const/16 v0, 0x1f02

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "versionString":Ljava/lang/String;
    const/16 v2, 0x1f00

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, "vendorString":Ljava/lang/String;
    const/16 v4, 0x1f01

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v5

    .line 247
    .local v5, "rendererString":Ljava/lang/String;
    new-instance v6, Lcom/badlogic/gdx/graphics/glutils/GLVersion;

    sget-object v7, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    invoke-direct {v6, v7, v1, v3, v5}, Lcom/badlogic/gdx/graphics/glutils/GLVersion;-><init>(Lcom/badlogic/gdx/Application$ApplicationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->glVersion:Lcom/badlogic/gdx/graphics/glutils/GLVersion;

    .line 248
    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget-boolean v6, v6, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useGL30:Z

    if-eqz v6, :cond_45

    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->glVersion:Lcom/badlogic/gdx/graphics/glutils/GLVersion;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->getMajorVersion()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_45

    .line 249
    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    if-eqz v6, :cond_2f

    return-void

    .line 250
    :cond_2f
    new-instance v6, Lcom/badlogic/gdx/backends/android/AndroidGL30;

    invoke-direct {v6}, Lcom/badlogic/gdx/backends/android/AndroidGL30;-><init>()V

    iput-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    iput-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 252
    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    sput-object v6, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    .line 253
    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    sput-object v6, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 254
    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    sput-object v6, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    goto :goto_59

    .line 256
    :cond_45
    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-eqz v6, :cond_4a

    return-void

    .line 257
    :cond_4a
    new-instance v6, Lcom/badlogic/gdx/backends/android/AndroidGL20;

    invoke-direct {v6}, Lcom/badlogic/gdx/backends/android/AndroidGL20;-><init>()V

    iput-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 259
    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    sput-object v6, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    .line 260
    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    sput-object v6, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 263
    :goto_59
    sget-object v6, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OGL renderer: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "AndroidGraphics"

    invoke-interface {v6, v7, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OGL vendor: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v7, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OGL version: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v7, v0}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OGL extensions: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x1f03

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v7, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public supportsDisplayModeChange()Z
    .registers 2

    .line 585
    const/4 v0, 0x0

    return v0
.end method

.method public supportsExtension(Ljava/lang/String;)Z
    .registers 4
    .param p1, "extension"  # Ljava/lang/String;

    .line 708
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->extensions:Ljava/lang/String;

    if-nez v0, :cond_e

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0x1f03

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->extensions:Ljava/lang/String;

    .line 709
    :cond_e
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->extensions:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method protected updatePpi()V
    .registers 4

    .line 147
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 148
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 150
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->ppiX:F

    .line 151
    iget v1, v0, Landroid/util/DisplayMetrics;->ydpi:F

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->ppiY:F

    .line 152
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    const v2, 0x40228f5c  # 2.54f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->ppcX:F

    .line 153
    iget v1, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->ppcY:F

    .line 154
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->density:F

    .line 155
    return-void
.end method

.method protected updateSafeAreaInsets()V
    .registers 5

    .line 624
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->safeInsetLeft:I

    .line 625
    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->safeInsetTop:I

    .line 626
    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->safeInsetRight:I

    .line 627
    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->safeInsetBottom:I

    .line 629
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_46

    .line 631
    :try_start_f
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getApplicationWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 632
    .local v0, "displayCutout":Landroid/view/DisplayCutout;
    if-eqz v0, :cond_3b

    .line 633
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->safeInsetRight:I

    .line 634
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->safeInsetBottom:I

    .line 635
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->safeInsetTop:I

    .line 636
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->safeInsetLeft:I
    :try_end_3b
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_f .. :try_end_3b} :catch_3c

    .line 641
    .end local v0  # "displayCutout":Landroid/view/DisplayCutout;
    :cond_3b
    goto :goto_46

    .line 639
    :catch_3c
    move-exception v0

    .line 640
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AndroidGraphics"

    const-string v3, "Unable to get safe area insets"

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    .end local v0  # "e":Ljava/lang/UnsupportedOperationException;
    :cond_46
    :goto_46
    return-void
.end method
