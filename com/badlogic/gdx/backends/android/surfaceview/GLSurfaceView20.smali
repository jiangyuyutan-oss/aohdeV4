.class public Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;
.super Landroid/opengl/GLSurfaceView;
.source "GLSurfaceView20.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;,
        Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ContextFactory;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static TAG:Ljava/lang/String;

.field static targetGLESVersion:I


# instance fields
.field public onscreenKeyboardType:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

.field final resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    const-string v0, "GL2JNIView"

    sput-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "resolutionStrategy"  # Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    .line 61
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;-><init>(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;I)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "resolutionStrategy"  # Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;
    .param p3, "targetGLESVersion"  # I

    .line 54
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 51
    sget-object v0, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->Default:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->onscreenKeyboardType:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    .line 55
    sput p3, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->targetGLESVersion:I

    .line 56
    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    .line 57
    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->init(ZII)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZIILcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "translucent"  # Z
    .param p3, "depth"  # I
    .param p4, "stencil"  # I
    .param p5, "resolutionStrategy"  # Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    .line 65
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 51
    sget-object v0, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->Default:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->onscreenKeyboardType:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    .line 66
    iput-object p5, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    .line 67
    invoke-direct {p0, p2, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->init(ZII)V

    .line 69
    return-void
.end method

.method static checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)Z
    .registers 7
    .param p0, "prompt"  # Ljava/lang/String;
    .param p1, "egl"  # Ljavax/microedition/khronos/egl/EGL10;

    .line 172
    const/4 v0, 0x1

    .line 173
    .local v0, "result":Z
    :goto_1
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    move v2, v1

    .local v2, "error":I
    const/16 v3, 0x3000

    if-eq v1, v3, :cond_1f

    .line 174
    const/4 v0, 0x0

    .line 175
    sget-object v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p0, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%s: EGL error: 0x%x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 177
    :cond_1f
    return v0
.end method

.method private init(ZII)V
    .registers 18
    .param p1, "translucent"  # Z
    .param p2, "depth"  # I
    .param p3, "stencil"  # I

    .line 127
    move-object v0, p0

    if-eqz p1, :cond_b

    .line 128
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, -0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 134
    :cond_b
    new-instance v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ContextFactory;

    invoke-direct {v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ContextFactory;-><init>()V

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 140
    new-instance v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;

    if-eqz p1, :cond_28

    const/16 v5, 0x8

    const/16 v6, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    move-object v2, v1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;-><init>(IIIIII)V

    goto :goto_37

    :cond_28
    const/16 v10, 0x8

    const/4 v11, 0x0

    const/16 v8, 0x8

    const/16 v9, 0x8

    move-object v7, v1

    move/from16 v12, p2

    move/from16 v13, p3

    invoke-direct/range {v7 .. v13}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;-><init>(IIIIII)V

    :goto_37
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 144
    return-void
.end method


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 4
    .param p1, "outAttrs"  # Landroid/view/inputmethod/EditorInfo;

    .line 81
    if-eqz p1, :cond_11

    .line 82
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 83
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->onscreenKeyboardType:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    invoke-static {v0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->getAndroidInputType(Lcom/badlogic/gdx/Input$OnscreenKeyboardType;)I

    move-result v0

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 86
    :cond_11
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$1;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;Landroid/view/View;Z)V

    .line 112
    .local v0, "connection":Landroid/view/inputmethod/BaseInputConnection;
    return-object v0
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .line 117
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 118
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"  # I
    .param p2, "heightMeasureSpec"  # I

    .line 73
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;->calcMeasures(II)Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy$MeasuredDimension;

    move-result-object v0

    .line 74
    .local v0, "measures":Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy$MeasuredDimension;
    iget v1, v0, Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy$MeasuredDimension;->width:I

    iget v2, v0, Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy$MeasuredDimension;->height:I

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->setMeasuredDimension(II)V

    .line 75
    return-void
.end method
