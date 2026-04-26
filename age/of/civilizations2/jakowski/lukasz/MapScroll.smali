.class public Lage/of/civilizations2/jakowski/lukasz/MapScroll;
.super Ljava/lang/Object;
.source "MapScroll.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/MapScroll$BackgroundAnimation;,
        Lage/of/civilizations2/jakowski/lukasz/MapScroll$ReverseDirection;
    }
.end annotation


# static fields
.field private static final MAX_SCROLLING_SPEED:I = 0x1f4

.field public static final SCROLL_SLOW:F = 0.97f


# instance fields
.field private backgroundAnimation:Lage/of/civilizations2/jakowski/lukasz/MapScroll$BackgroundAnimation;

.field private enableBackgroundAnimation:Z

.field private fScrollNewPosX:F

.field private fScrollNewPosY:F

.field private iPlayerID:I

.field private iScrollEvent_PosX:I

.field private iScrollEvent_PosY:I

.field private iScrollPosX:I

.field private iScrollPosX2:I

.field private iScrollPosY:I

.field private iScrollPosY2:I

.field private iStepID:I

.field private moveMapDirection:Z

.field private moveMapTime:J

.field private reverseDirectionX:Lage/of/civilizations2/jakowski/lukasz/MapScroll$ReverseDirection;

.field private reverseDirectionY:Lage/of/civilizations2/jakowski/lukasz/MapScroll$ReverseDirection;

.field private scrollEvent:Z

.field private scrollingTheMap:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->scrollingTheMap:Z

    .line 18
    const/4 v1, -0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iScrollPosX2:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iScrollPosY2:I

    .line 25
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->moveMapTime:J

    .line 27
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->moveMapDirection:Z

    .line 31
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iStepID:I

    .line 36
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->scrollEvent:Z

    .line 40
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iPlayerID:I

    .line 44
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->enableBackgroundAnimation:Z

    .line 50
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapScroll$1;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapScroll$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapScroll;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->backgroundAnimation:Lage/of/civilizations2/jakowski/lukasz/MapScroll$BackgroundAnimation;

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->reverseDirectionX:Lage/of/civilizations2/jakowski/lukasz/MapScroll$ReverseDirection;

    .line 227
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->reverseDirectionY:Lage/of/civilizations2/jakowski/lukasz/MapScroll$ReverseDirection;

    .line 230
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->buildReverseDirectionX()V

    .line 231
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->buildReverseDirectionY()V

    .line 232
    return-void
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/MapScroll;)I
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/MapScroll;

    .line 11
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iPlayerID:I

    return v0
.end method

.method static synthetic access$002(Lage/of/civilizations2/jakowski/lukasz/MapScroll;I)I
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/MapScroll;
    .param p1, "x1"  # I

    .line 11
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iPlayerID:I

    return p1
.end method

.method static synthetic access$004(Lage/of/civilizations2/jakowski/lukasz/MapScroll;)I
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/MapScroll;

    .line 11
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iPlayerID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iPlayerID:I

    return v0
.end method

.method static synthetic access$008(Lage/of/civilizations2/jakowski/lukasz/MapScroll;)I
    .registers 3
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/MapScroll;

    .line 11
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iPlayerID:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iPlayerID:I

    return v0
.end method

.method static synthetic access$100(Lage/of/civilizations2/jakowski/lukasz/MapScroll;)J
    .registers 3
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/MapScroll;

    .line 11
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->moveMapTime:J

    return-wide v0
.end method

.method public static final changeAnimationPos(II)F
    .registers 5
    .param p0, "animationStepID"  # I
    .param p1, "nWidth"  # I

    .line 299
    const/high16 v0, 0x42c80000  # 100.0f

    packed-switch p0, :pswitch_data_24

    .line 310
    const/4 v0, 0x0

    return v0

    .line 307
    :pswitch_7  #0x6, 0x7
    int-to-float v1, p1

    const/high16 v2, 0x41700000  # 15.0f

    mul-float v1, v1, v2

    div-float/2addr v1, v0

    return v1

    .line 305
    :pswitch_e  #0x4, 0x5, 0x8, 0x9
    int-to-float v1, p1

    const/high16 v2, 0x41200000  # 10.0f

    mul-float v1, v1, v2

    div-float/2addr v1, v0

    return v1

    .line 303
    :pswitch_15  #0x2, 0x3, 0xa, 0xb
    int-to-float v1, p1

    const/high16 v2, 0x40a00000  # 5.0f

    mul-float v1, v1, v2

    div-float/2addr v1, v0

    return v1

    .line 301
    :pswitch_1c  #0x0, 0x1, 0xc, 0xd
    int-to-float v1, p1

    const/high16 v2, 0x40200000  # 2.5f

    mul-float v1, v1, v2

    div-float/2addr v1, v0

    return v1

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1c  #00000000
        :pswitch_1c  #00000001
        :pswitch_15  #00000002
        :pswitch_15  #00000003
        :pswitch_e  #00000004
        :pswitch_e  #00000005
        :pswitch_7  #00000006
        :pswitch_7  #00000007
        :pswitch_e  #00000008
        :pswitch_e  #00000009
        :pswitch_15  #0000000a
        :pswitch_15  #0000000b
        :pswitch_1c  #0000000c
        :pswitch_1c  #0000000d
    .end packed-switch
.end method

.method private final setScrollEvent_Pos(II)V
    .registers 7
    .param p1, "nPosX"  # I
    .param p2, "nPosY"  # I

    .line 392
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->scrollEvent:Z

    if-eqz v0, :cond_5

    .line 393
    return-void

    .line 396
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->scrollEvent:Z

    .line 398
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iStepID:I

    .line 400
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iScrollEvent_PosX:I

    .line 401
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iScrollEvent_PosY:I

    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xd0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->moveMapTime:J

    .line 404
    return-void
.end method


# virtual methods
.method public final buildReverseDirectionX()V
    .registers 2

    .line 409
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->reverseDirectionX:Z

    if-eqz v0, :cond_c

    .line 410
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapScroll$5;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapScroll$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapScroll;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->reverseDirectionX:Lage/of/civilizations2/jakowski/lukasz/MapScroll$ReverseDirection;

    goto :goto_13

    .line 417
    :cond_c
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapScroll$6;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapScroll$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapScroll;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->reverseDirectionX:Lage/of/civilizations2/jakowski/lukasz/MapScroll$ReverseDirection;

    .line 424
    :goto_13
    return-void
.end method

.method public final buildReverseDirectionY()V
    .registers 2

    .line 427
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->reverseDirectionY:Z

    if-eqz v0, :cond_c

    .line 428
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapScroll$7;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapScroll$7;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapScroll;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->reverseDirectionY:Lage/of/civilizations2/jakowski/lukasz/MapScroll$ReverseDirection;

    goto :goto_13

    .line 435
    :cond_c
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapScroll$8;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapScroll$8;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapScroll;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->reverseDirectionY:Lage/of/civilizations2/jakowski/lukasz/MapScroll$ReverseDirection;

    .line 442
    :goto_13
    return-void
.end method

.method public getScrollingTheMap()Z
    .registers 2

    .line 456
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->scrollingTheMap:Z

    return v0
.end method

.method public final resetScrollInfo()V
    .registers 2

    .line 376
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iScrollPosY2:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iScrollPosX2:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iScrollPosY:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iScrollPosX:I

    .line 377
    return-void
.end method

.method public final setScrollEvent(I)V
    .registers 7
    .param p1, "nProvinceID"  # I

    .line 382
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPX()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeX()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v1, v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v2

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 383
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeY()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v4

    div-float/2addr v3, v4

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    float-to-int v1, v1

    .line 382
    invoke-direct {p0, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->setScrollEvent_Pos(II)V

    .line 384
    return-void
.end method

.method public final setScrollEvent_ToPosition(II)V
    .registers 8
    .param p1, "nPosX"  # I
    .param p2, "nPosY"  # I

    .line 387
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPX()I

    move-result v0

    add-int/2addr v0, p1

    int-to-float v0, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v1, v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v2

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 388
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v1

    add-int/2addr v1, p2

    int-to-float v1, v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v4

    div-float/2addr v3, v4

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    float-to-int v1, v1

    .line 387
    invoke-direct {p0, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->setScrollEvent_Pos(II)V

    .line 389
    return-void
.end method

.method public final setScrollPos(II)V
    .registers 4
    .param p1, "nPosX"  # I
    .param p2, "nPosY"  # I

    .line 448
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iScrollPosX:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iScrollPosX2:I

    .line 449
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iScrollPosY:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iScrollPosY2:I

    .line 451
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iScrollPosX:I

    .line 452
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iScrollPosY:I

    .line 453
    return-void
.end method

.method public final startScrollingTheMap()V
    .registers 6

    .line 318
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->brushMode:Z

    const/4 v1, 0x1

    if-nez v0, :cond_e5

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iScrollPosX2:I

    if-gez v0, :cond_d

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iScrollPosY2:I

    if-ltz v2, :cond_e5

    .line 319
    :cond_d
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iScrollPosX:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getIsDesktop()Z

    move-result v2

    if-eqz v2, :cond_25

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    int-to-float v2, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvMapScroll:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_MapScroll;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_MapScroll;->START_SCROLLING_MAP_MODIFIER_PC:F

    mul-float v2, v2, v3

    goto :goto_29

    :cond_25
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvMapScroll:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_MapScroll;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_MapScroll;->START_SCROLLING_MAP_MODIFIER_MOBILE:F

    :goto_29
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->DENSITY:F

    mul-float v2, v2, v3

    const/4 v3, -0x1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4c

    .line 320
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iScrollPosX:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iScrollPosX2:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvMapScroll:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_MapScroll;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_MapScroll;->START_SCROLLING_SPEED_MODIFIER:F

    mul-float v0, v0, v2

    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->reverseDirectionX:Z

    if-eqz v2, :cond_44

    const/4 v2, 0x1

    goto :goto_45

    :cond_44
    const/4 v2, -0x1

    :goto_45
    int-to-float v2, v2

    mul-float v0, v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->fScrollNewPosX:F

    .line 321
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->scrollingTheMap:Z

    .line 324
    :cond_4c
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iScrollPosY:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iScrollPosY2:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getIsDesktop()Z

    move-result v2

    if-eqz v2, :cond_66

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    int-to-float v2, v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvMapScroll:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_MapScroll;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_MapScroll;->START_SCROLLING_MAP_MODIFIER_PC:F

    mul-float v2, v2, v4

    goto :goto_6a

    :cond_66
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvMapScroll:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_MapScroll;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_MapScroll;->START_SCROLLING_MAP_MODIFIER_MOBILE:F

    :goto_6a
    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->DENSITY:F

    mul-float v2, v2, v4

    cmpl-float v0, v0, v2

    if-lez v0, :cond_8a

    .line 325
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iScrollPosY:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iScrollPosY2:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvMapScroll:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_MapScroll;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_MapScroll;->START_SCROLLING_SPEED_MODIFIER:F

    mul-float v0, v0, v2

    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->reverseDirectionY:Z

    if-eqz v2, :cond_83

    const/4 v3, 0x1

    :cond_83
    int-to-float v2, v3

    mul-float v0, v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->fScrollNewPosY:F

    .line 326
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->scrollingTheMap:Z

    .line 329
    :cond_8a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v0

    const/high16 v2, 0x3f800000  # 1.0f

    const/high16 v3, 0x43fa0000  # 500.0f

    const/high16 v4, -0x3c060000  # -500.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_cd

    .line 330
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->fScrollNewPosX:F

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v2

    div-float/2addr v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->fScrollNewPosX:F

    .line 331
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->fScrollNewPosY:F

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v2

    div-float/2addr v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->fScrollNewPosY:F

    goto :goto_e5

    .line 334
    :cond_cd
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->fScrollNewPosX:F

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->fScrollNewPosX:F

    .line 335
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->fScrollNewPosY:F

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->fScrollNewPosY:F

    .line 339
    :cond_e5
    :goto_e5
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iScrollPosX:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iScrollPosX2:I

    if-eq v0, v2, :cond_f2

    .line 340
    if-le v0, v2, :cond_ee

    goto :goto_ef

    :cond_ee
    const/4 v1, 0x0

    :goto_ef
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->updateMoveMapDirection(Z)V

    .line 342
    :cond_f2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->resetScrollInfo()V

    .line 361
    return-void
.end method

.method public final stopScrollingTheMap()V
    .registers 2

    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->scrollingTheMap:Z

    .line 365
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->resetScrollInfo()V

    .line 367
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->scrollEvent:Z

    .line 368
    return-void
.end method

.method public final update()V
    .registers 6

    .line 237
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->scrollEvent:Z

    if-eqz v0, :cond_55

    .line 238
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iStepID:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_cd

    .line 239
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPX()I

    move-result v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iStepID:I

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iScrollEvent_PosX:I

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->changeAnimationPos(II)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->setNewPosX(I)V

    .line 240
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iStepID:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iStepID:I

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iScrollEvent_PosY:I

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->changeAnimationPos(II)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->setNewPosY(I)V

    .line 242
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->iStepID:I

    if-ne v0, v1, :cond_cd

    .line 243
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->moveMapTime:J

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->scrollEvent:Z

    goto/16 :goto_cd

    .line 248
    :cond_55
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->scrollingTheMap:Z

    if-eqz v0, :cond_c8

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getDisableMovingMap()Z

    move-result v0

    if-nez v0, :cond_c8

    .line 249
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->fScrollNewPosX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_80

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->fScrollNewPosY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7c

    goto :goto_80

    .line 260
    :cond_7c
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->stopScrollingTheMap()V

    goto :goto_cd

    .line 250
    :cond_80
    :goto_80
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->fScrollNewPosX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3f7851ec  # 0.97f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a5

    .line 251
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->reverseDirectionX:Lage/of/civilizations2/jakowski/lukasz/MapScroll$ReverseDirection;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->fScrollNewPosX:F

    float-to-int v4, v4

    invoke-interface {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MapScroll$ReverseDirection;->getNewPos(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->setNewPosX(I)V

    .line 252
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->fScrollNewPosX:F

    mul-float v0, v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->fScrollNewPosX:F

    .line 254
    :cond_a5
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->fScrollNewPosY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_cd

    .line 255
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->reverseDirectionY:Lage/of/civilizations2/jakowski/lukasz/MapScroll$ReverseDirection;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->fScrollNewPosY:F

    float-to-int v3, v3

    invoke-interface {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapScroll$ReverseDirection;->getNewPos(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->setNewPosY(I)V

    .line 256
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->fScrollNewPosY:F

    mul-float v0, v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->fScrollNewPosY:F

    goto :goto_cd

    .line 264
    :cond_c8
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->backgroundAnimation:Lage/of/civilizations2/jakowski/lukasz/MapScroll$BackgroundAnimation;

    invoke-interface {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScroll$BackgroundAnimation;->updateBackgroundAnimation()V

    .line 296
    :cond_cd
    :goto_cd
    return-void
.end method

.method public final updateEnableBackroundAnimation()V
    .registers 2

    .line 58
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 59
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 60
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInSelectCiv()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 62
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Civilizations()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 63
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCrScAs()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 64
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Assign_Select()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 65
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Civilizations_Select()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 66
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_WastelandMap()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 67
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Available_Provinces()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 68
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_SetUpArmy()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 69
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_TechnologyLevels()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 70
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Preview()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 71
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_PalletOfColors()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 72
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_StartingMoney()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 73
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Happiness()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 75
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getIn_MainMenu()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 76
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getIn_AboutMenu()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 77
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInStartGameMenu()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 78
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInEndGameMenu()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 79
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateNewGame()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 80
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInManageDiplomacy()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 81
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInLoadMap()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 82
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInLoadSave()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 83
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInSelectMapType()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 85
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getIn_CustomizeAlliance()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 87
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInSelectAvailableCivilizations()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 89
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateCivilization()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 91
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateCity()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 93
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_PeaceTreaty()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 94
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_PeaceTreaty_Response()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 96
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_Create_NewContinent()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 97
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameEditor_Create_DiplomacyPackage()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 99
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameEditor_TerrainAdd()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 101
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameEditor_ReligionAdd()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 103
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInChooseScenario()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 104
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInSettingsProvince()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 106
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_Terrain()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 107
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_Continents()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 108
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_GrowthRate()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 109
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_ArmyPosition()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 110
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_TradeZones()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 111
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_TradeZones_Edit()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 112
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_WastelandMaps_Edit()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 113
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_ArmySeaBoxes()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 114
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_ArmySeaBoxes_Edit()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 115
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_ArmySeaBoxes_Add()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 116
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_Connections()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 117
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_ProvinceName()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 118
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_ProvinceBackground()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 119
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_SeaProvinces()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 120
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_PortPosition()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 122
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Timeline()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 124
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_Create_NewRegion()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 125
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_Regions()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 127
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInDownloadPallets()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 129
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInSelectLanguage()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 130
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_LoadSuggestedOwners()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 131
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_LoadPreDefinedBorders()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 133
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Cores()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 135
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInPalletOfCivsColorsEdit()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 136
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Events_SelectProvinces()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 138
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameEditor_Regions()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 139
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInNextPlayerTurn()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 140
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInVictory()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 141
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getIn_Game_CivilizationView()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 142
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInPrintAMap()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 143
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInRandomGame()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 144
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInRandomGame_Civilizations_Select()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 145
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getCreateScenario_ScenarioAge()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 146
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_HolyRomanEmpire()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 147
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_FormableCivs_Edit()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 148
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_CreateAVassal()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 149
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_SelectProvinces()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 150
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ShowProvinces()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 151
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_TradeSelectCiv()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 152
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_FormableCivs_SelectFormable()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 153
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_FormableCivs_SelectClaimant()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 154
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Formable_Civ_Provinces()Z

    move-result v0

    if-nez v0, :cond_272

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 155
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_FormAnimation()Z

    move-result v0

    if-nez v0, :cond_272

    const/4 v0, 0x1

    goto :goto_273

    :cond_272
    const/4 v0, 0x0

    :goto_273
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->enableBackgroundAnimation:Z

    .line 158
    if-eqz v0, :cond_28f

    .line 159
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInNewGamePlayers()Z

    move-result v0

    if-eqz v0, :cond_287

    .line 160
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapScroll$2;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapScroll$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapScroll;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->backgroundAnimation:Lage/of/civilizations2/jakowski/lukasz/MapScroll$BackgroundAnimation;

    goto :goto_296

    .line 200
    :cond_287
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapScroll$3;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapScroll$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapScroll;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->backgroundAnimation:Lage/of/civilizations2/jakowski/lukasz/MapScroll$BackgroundAnimation;

    goto :goto_296

    .line 214
    :cond_28f
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapScroll$4;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapScroll$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapScroll;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->backgroundAnimation:Lage/of/civilizations2/jakowski/lukasz/MapScroll$BackgroundAnimation;

    .line 221
    :goto_296
    return-void
.end method

.method public final updateMoveMapDirection(Z)V
    .registers 4
    .param p1, "moveMapDirection"  # Z

    .line 371
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->moveMapDirection:Z

    .line 372
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->moveMapTime:J

    .line 373
    return-void
.end method
