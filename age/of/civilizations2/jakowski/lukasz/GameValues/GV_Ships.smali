.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ships;
.super Ljava/lang/Object;
.source "GV_Ships.java"


# instance fields
.field public SHIP_AGES:I

.field public SHIP_IMAGES:I

.field public SHIP_LINE_PRECISION:I

.field public SHIP_SPEED_MIN:F

.field public SHIP_SPEED_RANDOM:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x3

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ships;->SHIP_AGES:I

    .line 6
    const/4 v0, 0x4

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ships;->SHIP_IMAGES:I

    .line 7
    const/16 v0, 0xc8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ships;->SHIP_LINE_PRECISION:I

    .line 8
    const/high16 v0, 0x3f400000  # 0.75f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ships;->SHIP_SPEED_MIN:F

    .line 9
    const/16 v0, 0x32

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ships;->SHIP_SPEED_RANDOM:I

    return-void
.end method
