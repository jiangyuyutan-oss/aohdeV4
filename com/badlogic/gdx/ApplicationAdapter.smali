.class public abstract Lcom/badlogic/gdx/ApplicationAdapter;
.super Ljava/lang/Object;
.source "ApplicationAdapter.java"

# interfaces
.implements Lcom/badlogic/gdx/ApplicationListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()V
    .registers 1

    .line 24
    return-void
.end method

.method public dispose()V
    .registers 1

    .line 44
    return-void
.end method

.method public pause()V
    .registers 1

    .line 36
    return-void
.end method

.method public render()V
    .registers 1

    .line 32
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

    .line 40
    return-void
.end method
