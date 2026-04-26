.class public Lcom/badlogic/gdx/backends/android/AndroidClipboard;
.super Ljava/lang/Object;
.source "AndroidClipboard.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Clipboard;


# instance fields
.field private final clipboard:Landroid/content/ClipboardManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"  # Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidClipboard;->clipboard:Landroid/content/ClipboardManager;

    .line 30
    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .registers 4

    .line 39
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidClipboard;->clipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 40
    .local v0, "clip":Landroid/content/ClipData;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 41
    :cond_a
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 42
    .local v2, "text":Ljava/lang/CharSequence;
    if-nez v2, :cond_16

    return-object v1

    .line 43
    :cond_16
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public hasContents()Z
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidClipboard;->clipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    return v0
.end method

.method public setContents(Ljava/lang/String;)V
    .registers 4
    .param p1, "contents"  # Ljava/lang/String;

    .line 48
    invoke-static {p1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 49
    .local v0, "data":Landroid/content/ClipData;
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidClipboard;->clipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 50
    return-void
.end method
