.class Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$1;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "GLSurfaceView20.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;Landroid/view/View;Z)V
    .registers 4
    .param p1, "this$0"  # Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;
    .param p2, "x0"  # Landroid/view/View;
    .param p3, "x1"  # Z

    .line 86
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$1;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    return-void
.end method

.method private sendDownUpKeyEventForBackwardCompatibility(I)V
    .registers 18
    .param p1, "code"  # I

    .line 105
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 106
    .local v13, "eventTime":J
    new-instance v15, Landroid/view/KeyEvent;

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    move-object v1, v15

    move-wide v2, v13

    move-wide v4, v13

    move/from16 v7, p1

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-super {v0, v15}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 108
    new-instance v15, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v6, 0x1

    move-object v1, v15

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-super {v0, v15}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 110
    return-void
.end method


# virtual methods
.method public deleteSurroundingText(II)Z
    .registers 6
    .param p1, "beforeLength"  # I
    .param p2, "afterLength"  # I

    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 90
    .local v0, "sdkVersion":I
    nop

    .line 95
    const/4 v1, 0x1

    if-ne p1, v1, :cond_e

    if-nez p2, :cond_e

    .line 96
    const/16 v2, 0x43

    invoke-direct {p0, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$1;->sendDownUpKeyEventForBackwardCompatibility(I)V

    .line 97
    return v1

    .line 100
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    move-result v1

    return v1
.end method
