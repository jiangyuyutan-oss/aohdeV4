.class public abstract Lcom/badlogic/gdx/AbstractInput;
.super Ljava/lang/Object;
.source "AbstractInput.java"

# interfaces
.implements Lcom/badlogic/gdx/Input;


# instance fields
.field protected final justPressedKeys:[Z

.field protected keyJustPressed:Z

.field private final keysToCatch:Lcom/badlogic/gdx/utils/IntSet;

.field protected pressedKeyCount:I

.field protected final pressedKeys:[Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/badlogic/gdx/utils/IntSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntSet;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/AbstractInput;->keysToCatch:Lcom/badlogic/gdx/utils/IntSet;

    .line 13
    const/16 v0, 0x100

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/badlogic/gdx/AbstractInput;->pressedKeys:[Z

    .line 14
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/badlogic/gdx/AbstractInput;->justPressedKeys:[Z

    .line 15
    return-void
.end method


# virtual methods
.method public isCatchBackKey()Z
    .registers 3

    .line 41
    iget-object v0, p0, Lcom/badlogic/gdx/AbstractInput;->keysToCatch:Lcom/badlogic/gdx/utils/IntSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntSet;->contains(I)Z

    move-result v0

    return v0
.end method

.method public isCatchKey(I)Z
    .registers 3
    .param p1, "keycode"  # I

    .line 70
    iget-object v0, p0, Lcom/badlogic/gdx/AbstractInput;->keysToCatch:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntSet;->contains(I)Z

    move-result v0

    return v0
.end method

.method public isCatchMenuKey()Z
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/AbstractInput;->keysToCatch:Lcom/badlogic/gdx/utils/IntSet;

    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntSet;->contains(I)Z

    move-result v0

    return v0
.end method

.method public isKeyJustPressed(I)Z
    .registers 3
    .param p1, "key"  # I

    .line 30
    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    .line 31
    iget-boolean v0, p0, Lcom/badlogic/gdx/AbstractInput;->keyJustPressed:Z

    return v0

    .line 33
    :cond_6
    if-ltz p1, :cond_12

    const/16 v0, 0xff

    if-le p1, v0, :cond_d

    goto :goto_12

    .line 36
    :cond_d
    iget-object v0, p0, Lcom/badlogic/gdx/AbstractInput;->justPressedKeys:[Z

    aget-boolean v0, v0, p1

    return v0

    .line 34
    :cond_12
    :goto_12
    const/4 v0, 0x0

    return v0
.end method

.method public isKeyPressed(I)Z
    .registers 4
    .param p1, "key"  # I

    .line 19
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_a

    .line 20
    iget v0, p0, Lcom/badlogic/gdx/AbstractInput;->pressedKeyCount:I

    if-lez v0, :cond_9

    const/4 v1, 0x1

    :cond_9
    return v1

    .line 22
    :cond_a
    if-ltz p1, :cond_16

    const/16 v0, 0xff

    if-le p1, v0, :cond_11

    goto :goto_16

    .line 25
    :cond_11
    iget-object v0, p0, Lcom/badlogic/gdx/AbstractInput;->pressedKeys:[Z

    aget-boolean v0, v0, p1

    return v0

    .line 23
    :cond_16
    :goto_16
    return v1
.end method

.method public setCatchBackKey(Z)V
    .registers 3
    .param p1, "catchBack"  # Z

    .line 46
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/AbstractInput;->setCatchKey(IZ)V

    .line 47
    return-void
.end method

.method public setCatchKey(IZ)V
    .registers 4
    .param p1, "keycode"  # I
    .param p2, "catchKey"  # Z

    .line 61
    if-nez p2, :cond_8

    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/AbstractInput;->keysToCatch:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntSet;->remove(I)Z

    goto :goto_d

    .line 64
    :cond_8
    iget-object v0, p0, Lcom/badlogic/gdx/AbstractInput;->keysToCatch:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    .line 66
    :goto_d
    return-void
.end method

.method public setCatchMenuKey(Z)V
    .registers 3
    .param p1, "catchMenu"  # Z

    .line 56
    const/16 v0, 0x52

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/AbstractInput;->setCatchKey(IZ)V

    .line 57
    return-void
.end method
