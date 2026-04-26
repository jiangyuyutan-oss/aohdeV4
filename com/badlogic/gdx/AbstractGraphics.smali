.class public abstract Lcom/badlogic/gdx/AbstractGraphics;
.super Ljava/lang/Object;
.source "AbstractGraphics.java"

# interfaces
.implements Lcom/badlogic/gdx/Graphics;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackBufferScale()F
    .registers 3

    .line 17
    invoke-virtual {p0}, Lcom/badlogic/gdx/AbstractGraphics;->getBackBufferWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/AbstractGraphics;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getDensity()F
    .registers 3

    .line 12
    invoke-virtual {p0}, Lcom/badlogic/gdx/AbstractGraphics;->getPpiX()F

    move-result v0

    const/high16 v1, 0x43200000  # 160.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getRawDeltaTime()F
    .registers 2

    .line 7
    invoke-virtual {p0}, Lcom/badlogic/gdx/AbstractGraphics;->getDeltaTime()F

    move-result v0

    return v0
.end method
