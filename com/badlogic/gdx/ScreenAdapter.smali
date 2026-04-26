.class public Lcom/badlogic/gdx/ScreenAdapter;
.super Ljava/lang/Object;
.source "ScreenAdapter.java"

# interfaces
.implements Lcom/badlogic/gdx/Screen;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 1

    .line 48
    return-void
.end method

.method public hide()V
    .registers 1

    .line 36
    return-void
.end method

.method public pause()V
    .registers 1

    .line 40
    return-void
.end method

.method public render(F)V
    .registers 2
    .param p1, "delta"  # F

    .line 24
    return-void
.end method

.method public resize(II)V
    .registers 3
    .param p1, "width"  # I
    .param p2, "height"  # I

    .line 28
    return-void
.end method

.method public resume()V
    .registers 1

    .line 44
    return-void
.end method

.method public show()V
    .registers 1

    .line 32
    return-void
.end method
