.class public Lteam/rainfall/ctap/MixinMapBG;
.super Ljava/lang/Object;
.source "MixinMapBG.java"


# annotations
.annotation runtime Lteam/rainfall/finality/luminosity2/annotations/Mixin;
    mixinClass = "age.of.civilizations2.jakowski.lukasz.MapBG"
.end annotation


# instance fields
.field private iMinimapHeight:I

.field private iMinimapWidth:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMinimapHeight()I
    .registers 3

    .line 14
    iget v0, p0, Lteam/rainfall/ctap/MixinMapBG;->iMinimapHeight:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getMinimapWidth()I
    .registers 3

    .line 10
    iget v0, p0, Lteam/rainfall/ctap/MixinMapBG;->iMinimapWidth:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method
