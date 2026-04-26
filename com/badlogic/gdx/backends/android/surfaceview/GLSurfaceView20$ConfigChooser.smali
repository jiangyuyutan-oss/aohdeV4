.class Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;
.super Ljava/lang/Object;
.source "GLSurfaceView20.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigChooser"
.end annotation


# static fields
.field private static EGL_OPENGL_ES2_BIT:I

.field private static s_configAttribs2:[I


# instance fields
.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGreenSize:I

.field protected mRedSize:I

.field protected mStencilSize:I

.field private mValue:[I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 195
    const/4 v0, 0x4

    sput v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->EGL_OPENGL_ES2_BIT:I

    .line 196
    sget v8, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->EGL_OPENGL_ES2_BIT:I

    const/16 v9, 0x3038

    const/16 v1, 0x3024

    const/4 v2, 0x4

    const/16 v3, 0x3023

    const/4 v4, 0x4

    const/16 v5, 0x3022

    const/4 v6, 0x4

    const/16 v7, 0x3040

    filled-new-array/range {v1 .. v9}, [I

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->s_configAttribs2:[I

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .registers 8
    .param p1, "r"  # I
    .param p2, "g"  # I
    .param p3, "b"  # I
    .param p4, "a"  # I
    .param p5, "depth"  # I
    .param p6, "stencil"  # I

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->mValue:[I

    .line 183
    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->mRedSize:I

    .line 184
    iput p2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->mGreenSize:I

    .line 185
    iput p3, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->mBlueSize:I

    .line 186
    iput p4, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->mAlphaSize:I

    .line 187
    iput p5, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->mDepthSize:I

    .line 188
    iput p6, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->mStencilSize:I

    .line 189
    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .registers 8
    .param p1, "egl"  # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"  # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"  # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p4, "attribute"  # I
    .param p5, "defaultValue"  # I

    .line 249
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 250
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->mValue:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    .line 252
    :cond_e
    return p5
.end method

.method private printConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 14
    .param p1, "egl"  # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"  # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"  # Ljavax/microedition/khronos/egl/EGLConfig;

    .line 265
    const/16 v0, 0x21

    new-array v1, v0, [I

    fill-array-data v1, :array_fa

    .line 277
    .local v1, "attributes":[I
    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "EGL_BUFFER_SIZE"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "EGL_ALPHA_SIZE"

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const/4 v2, 0x2

    const-string v5, "EGL_BLUE_SIZE"

    aput-object v5, v0, v2

    const/4 v2, 0x3

    const-string v5, "EGL_GREEN_SIZE"

    aput-object v5, v0, v2

    const/4 v2, 0x4

    const-string v5, "EGL_RED_SIZE"

    aput-object v5, v0, v2

    const/4 v2, 0x5

    const-string v5, "EGL_DEPTH_SIZE"

    aput-object v5, v0, v2

    const/4 v2, 0x6

    const-string v5, "EGL_STENCIL_SIZE"

    aput-object v5, v0, v2

    const/4 v2, 0x7

    const-string v5, "EGL_CONFIG_CAVEAT"

    aput-object v5, v0, v2

    const/16 v2, 0x8

    const-string v5, "EGL_CONFIG_ID"

    aput-object v5, v0, v2

    const/16 v2, 0x9

    const-string v5, "EGL_LEVEL"

    aput-object v5, v0, v2

    const/16 v2, 0xa

    const-string v5, "EGL_MAX_PBUFFER_HEIGHT"

    aput-object v5, v0, v2

    const/16 v2, 0xb

    const-string v5, "EGL_MAX_PBUFFER_PIXELS"

    aput-object v5, v0, v2

    const/16 v2, 0xc

    const-string v5, "EGL_MAX_PBUFFER_WIDTH"

    aput-object v5, v0, v2

    const/16 v2, 0xd

    const-string v5, "EGL_NATIVE_RENDERABLE"

    aput-object v5, v0, v2

    const/16 v2, 0xe

    const-string v5, "EGL_NATIVE_VISUAL_ID"

    aput-object v5, v0, v2

    const/16 v2, 0xf

    const-string v5, "EGL_NATIVE_VISUAL_TYPE"

    aput-object v5, v0, v2

    const/16 v2, 0x10

    const-string v5, "EGL_PRESERVED_RESOURCES"

    aput-object v5, v0, v2

    const/16 v2, 0x11

    const-string v5, "EGL_SAMPLES"

    aput-object v5, v0, v2

    const/16 v2, 0x12

    const-string v5, "EGL_SAMPLE_BUFFERS"

    aput-object v5, v0, v2

    const/16 v2, 0x13

    const-string v5, "EGL_SURFACE_TYPE"

    aput-object v5, v0, v2

    const/16 v2, 0x14

    const-string v5, "EGL_TRANSPARENT_TYPE"

    aput-object v5, v0, v2

    const/16 v2, 0x15

    const-string v5, "EGL_TRANSPARENT_RED_VALUE"

    aput-object v5, v0, v2

    const/16 v2, 0x16

    const-string v5, "EGL_TRANSPARENT_GREEN_VALUE"

    aput-object v5, v0, v2

    const/16 v2, 0x17

    const-string v5, "EGL_TRANSPARENT_BLUE_VALUE"

    aput-object v5, v0, v2

    const/16 v2, 0x18

    const-string v5, "EGL_BIND_TO_TEXTURE_RGB"

    aput-object v5, v0, v2

    const/16 v2, 0x19

    const-string v5, "EGL_BIND_TO_TEXTURE_RGBA"

    aput-object v5, v0, v2

    const/16 v2, 0x1a

    const-string v5, "EGL_MIN_SWAP_INTERVAL"

    aput-object v5, v0, v2

    const/16 v2, 0x1b

    const-string v5, "EGL_MAX_SWAP_INTERVAL"

    aput-object v5, v0, v2

    const/16 v2, 0x1c

    const-string v5, "EGL_LUMINANCE_SIZE"

    aput-object v5, v0, v2

    const/16 v2, 0x1d

    const-string v5, "EGL_ALPHA_MASK_SIZE"

    aput-object v5, v0, v2

    const/16 v2, 0x1e

    const-string v5, "EGL_COLOR_BUFFER_TYPE"

    aput-object v5, v0, v2

    const/16 v2, 0x1f

    const-string v5, "EGL_RENDERABLE_TYPE"

    aput-object v5, v0, v2

    const/16 v2, 0x20

    const-string v5, "EGL_CONFORMANT"

    aput-object v5, v0, v2

    .line 284
    .local v0, "names":[Ljava/lang/String;
    new-array v2, v4, [I

    .line 285
    .local v2, "value":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_ca
    array-length v5, v1

    if-ge v4, v5, :cond_f9

    .line 286
    aget v5, v1, v4

    .line 287
    .local v5, "attribute":I
    aget-object v6, v0, v4

    .line 288
    .local v6, "name":Ljava/lang/String;
    invoke-interface {p1, p2, p3, v5, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v7

    if-eqz v7, :cond_ed

    .line 289
    sget-object v7, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->TAG:Ljava/lang/String;

    aget v8, v2, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v6, v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "  %s: %d\n"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f6

    .line 292
    :cond_ed
    :goto_ed
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v7

    const/16 v8, 0x3000

    if-eq v7, v8, :cond_f6

    .line 293
    goto :goto_ed

    .line 285
    .end local v5  # "attribute":I
    .end local v6  # "name":Ljava/lang/String;
    :cond_f6
    :goto_f6
    add-int/lit8 v4, v4, 0x1

    goto :goto_ca

    .line 296
    .end local v4  # "i":I
    :cond_f9
    return-void

    :array_fa
    .array-data 4
        0x3020
        0x3021
        0x3022
        0x3023
        0x3024
        0x3025
        0x3026
        0x3027
        0x3028
        0x3029
        0x302a
        0x302b
        0x302c
        0x302d
        0x302e
        0x302f
        0x3030
        0x3031
        0x3032
        0x3033
        0x3034
        0x3037
        0x3036
        0x3035
        0x3039
        0x303a
        0x303b
        0x303c
        0x303d
        0x303e
        0x303f
        0x3040
        0x3042
    .end array-data
.end method

.method private printConfigs(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 9
    .param p1, "egl"  # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"  # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "configs"  # [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 256
    array-length v0, p3

    .line 257
    .local v0, "numConfigs":I
    sget-object v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%d configurations"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    if-ge v1, v0, :cond_32

    .line 259
    sget-object v2, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Configuration %d:\n"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    aget-object v2, p3, v1

    invoke-direct {p0, p1, p2, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->printConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 262
    .end local v1  # "i":I
    :cond_32
    return-void
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 12
    .param p1, "egl"  # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"  # Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 204
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 205
    .local v0, "num_config":[I
    sget-object v3, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->s_configAttribs2:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 207
    const/4 v1, 0x0

    aget v7, v0, v1

    .line 209
    .local v7, "numConfigs":I
    if-lez v7, :cond_23

    .line 216
    new-array v8, v7, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 217
    .local v8, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    sget-object v3, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->s_configAttribs2:[I

    move-object v1, p1

    move-object v2, p2

    move-object v4, v8

    move v5, v7

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 225
    invoke-virtual {p0, p1, p2, v8}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    return-object v1

    .line 210
    .end local v8  # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    :cond_23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No configs match configSpec"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 20
    .param p1, "egl"  # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"  # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "configs"  # [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 229
    move-object/from16 v6, p0

    move-object/from16 v7, p3

    array-length v8, v7

    const/4 v0, 0x0

    move v9, v0

    :goto_7
    if-ge v9, v8, :cond_5c

    aget-object v10, v7, v9

    .line 230
    .local v10, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v4, 0x3025

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v10

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    .line 231
    .local v11, "d":I
    const/16 v4, 0x3026

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    .line 234
    .local v12, "s":I
    iget v0, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->mDepthSize:I

    if-lt v11, v0, :cond_59

    iget v0, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->mStencilSize:I

    if-ge v12, v0, :cond_28

    goto :goto_59

    .line 237
    :cond_28
    const/16 v4, 0x3024

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v10

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v13

    .line 238
    .local v13, "r":I
    const/16 v4, 0x3023

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v14

    .line 239
    .local v14, "g":I
    const/16 v4, 0x3022

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v15

    .line 240
    .local v15, "b":I
    const/16 v4, 0x3021

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    .line 242
    .local v0, "a":I
    iget v1, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->mRedSize:I

    if-ne v13, v1, :cond_59

    iget v1, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->mGreenSize:I

    if-ne v14, v1, :cond_59

    iget v1, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->mBlueSize:I

    if-ne v15, v1, :cond_59

    iget v1, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->mAlphaSize:I

    if-ne v0, v1, :cond_59

    return-object v10

    .line 229
    .end local v0  # "a":I
    .end local v10  # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v11  # "d":I
    .end local v12  # "s":I
    .end local v13  # "r":I
    .end local v14  # "g":I
    .end local v15  # "b":I
    :cond_59
    :goto_59
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 244
    :cond_5c
    const/4 v0, 0x0

    return-object v0
.end method
