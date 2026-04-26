.class Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$4;
.super Ljava/lang/Object;
.source "DefaultAndroidInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->setOnscreenKeyboardVisible(ZLcom/badlogic/gdx/Input$OnscreenKeyboardType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

.field final synthetic val$type:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;ZLcom/badlogic/gdx/Input$OnscreenKeyboardType;)V
    .registers 4
    .param p1, "this$0"  # Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    .line 622
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$4;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iput-boolean p2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$4;->val$visible:Z

    iput-object p3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$4;->val$type:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 624
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$4;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->context:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 625
    .local v0, "manager":Landroid/view/inputmethod/InputMethodManager;
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$4;->val$visible:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_50

    .line 626
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$4;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v1}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getView()Landroid/view/View;

    move-result-object v1

    .line 627
    .local v1, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$4;->val$type:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    if-nez v3, :cond_26

    sget-object v3, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->Default:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    goto :goto_28

    :cond_26
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$4;->val$type:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    .line 628
    .local v3, "tmp":Lcom/badlogic/gdx/Input$OnscreenKeyboardType;
    :goto_28
    move-object v4, v1

    check-cast v4, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    iget-object v4, v4, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->onscreenKeyboardType:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    if-eq v4, v3, :cond_37

    .line 629
    move-object v4, v1

    check-cast v4, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    iput-object v3, v4, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->onscreenKeyboardType:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    .line 630
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 633
    :cond_37
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 634
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 635
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$4;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v4, v4, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v4}, Lcom/badlogic/gdx/Application;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v4}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 636
    .end local v1  # "view":Landroid/view/View;
    .end local v3  # "tmp":Lcom/badlogic/gdx/Input$OnscreenKeyboardType;
    goto :goto_65

    .line 637
    :cond_50
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$4;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v1}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 639
    :goto_65
    return-void
.end method
