.class Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;
.super Ljava/lang/Object;
.source "DefaultAndroidInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/Input$OnscreenKeyboardType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

.field final synthetic val$hint:Ljava/lang/String;

.field final synthetic val$keyboardType:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

.field final synthetic val$listener:Lcom/badlogic/gdx/Input$TextInputListener;

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;Ljava/lang/String;Lcom/badlogic/gdx/Input$OnscreenKeyboardType;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/Input$TextInputListener;)V
    .registers 7
    .param p1, "this$0"  # Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    .line 226
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->val$keyboardType:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    iput-object p4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->val$hint:Ljava/lang/String;

    iput-object p5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->val$text:Ljava/lang/String;

    iput-object p6, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->val$listener:Lcom/badlogic/gdx/Input$TextInputListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 228
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 229
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 230
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v2, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 231
    .local v1, "input":Landroid/widget/EditText;
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->val$keyboardType:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    sget-object v3, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->Default:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    if-eq v2, v3, :cond_26

    .line 232
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->val$keyboardType:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    invoke-static {v2}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->getAndroidInputType(Lcom/badlogic/gdx/Input$OnscreenKeyboardType;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 234
    :cond_26
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->val$hint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->val$text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 236
    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    .line 237
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->val$keyboardType:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    sget-object v3, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->Password:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    if-ne v2, v3, :cond_41

    .line 238
    new-instance v2, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v2}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 240
    :cond_41
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 241
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v2, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->context:Landroid/content/Context;

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$1;

    invoke-direct {v3, p0, v1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$1;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 251
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v2, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->context:Landroid/content/Context;

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$2;

    invoke-direct {v3, p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$2;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 261
    new-instance v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$3;

    invoke-direct {v2, p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$3;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 272
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 273
    return-void
.end method
