.class public Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;
.super Ljava/lang/Object;
.source "ME_Hover_v2.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover;


# static fields
.field public static ANIMATION_ALPHA:F

.field public static ANIMATION_INTERVAL:I

.field public static ANIMATION_PADDING:F

.field public static ANIMATION_TIME:J


# instance fields
.field private backAnimation:Z

.field private iElementsSize:I

.field public iHeight:I

.field public iMaxWidth:I

.field private iScrollPosX:I

.field public iWidth:I

.field private iWidthOver:I

.field private lElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;",
            ">;"
        }
    .end annotation
.end field

.field private lTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const/16 v0, 0x992

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->ANIMATION_INTERVAL:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p1, "nElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iElementsSize:I

    .line 44
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iHeight:I

    .line 45
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iWidth:I

    .line 46
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iMaxWidth:I

    .line 48
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iWidthOver:I

    .line 49
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iScrollPosX:I

    .line 50
    const/4 v1, 0x1

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->backAnimation:Z

    .line 51
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->lTime:J

    .line 56
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->lElements:Ljava/util/List;

    .line 57
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iElementsSize:I

    .line 58
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iWidth:I

    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iElementsSize:I

    if-ge v0, v1, :cond_6c

    .line 62
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->lElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;->getWidth()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_69

    .line 63
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->lElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;->getWidth()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iWidthOver:I

    if-le v1, v2, :cond_69

    .line 64
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->lElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;->getWidth()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iWidthOver:I

    .line 61
    :cond_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 68
    .end local v0  # "i":I
    :cond_6c
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iWidthOver:I

    if-lez v0, :cond_7d

    .line 69
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iScrollPosX:I

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->lTime:J

    .line 73
    :cond_7d
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_7e
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iElementsSize:I

    if-ge v0, v1, :cond_a3

    .line 74
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->lElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;->getWidth()I

    move-result v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iWidth:I

    if-le v1, v2, :cond_a0

    .line 75
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->lElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;->getWidth()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iWidth:I

    .line 73
    :cond_a0
    add-int/lit8 v0, v0, 0x1

    goto :goto_7e

    .line 79
    .end local v0  # "i":I
    :cond_a3
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_a4
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iElementsSize:I

    if-ge v0, v1, :cond_c9

    .line 80
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->lElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;->getWidth()I

    move-result v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iMaxWidth:I

    if-le v1, v2, :cond_c6

    .line 81
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->lElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;->getWidth()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iMaxWidth:I

    .line 79
    :cond_c6
    add-int/lit8 v0, v0, 0x1

    goto :goto_a4

    .line 85
    .end local v0  # "i":I
    :cond_c9
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iWidth:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iWidth:I

    .line 87
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iHeight:I

    .line 88
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_d9
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iElementsSize:I

    if-ge v0, v1, :cond_f4

    .line 89
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iHeight:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->lElements:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;->getHeight()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iHeight:I

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_d9

    .line 91
    .end local v0  # "i":I
    :cond_f4
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iHeight:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iHeight:I

    .line 93
    return-void
.end method

.method public static final resetAnimation()V
    .registers 2

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->ANIMATION_TIME:J

    .line 32
    const v0, 0x3c23d70a  # 0.01f

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->ANIMATION_ALPHA:F

    .line 33
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    int-to-float v0, v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->ANIMATION_PADDING:F

    .line 34
    return-void
.end method

.method public static final resetAnimation_2()V
    .registers 2

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->ANIMATION_TIME:J

    .line 38
    const v0, 0x3e99999a  # 0.3f

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->ANIMATION_ALPHA:F

    .line 39
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    int-to-float v0, v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->ANIMATION_PADDING:F

    .line 40
    return-void
.end method


# virtual methods
.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 7
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I

    .line 99
    int-to-float v0, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->ANIMATION_PADDING:F

    add-float/2addr v0, v1

    float-to-int p2, v0

    .line 100
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iWidth:I

    add-int/2addr v0, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_18

    .line 101
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iWidth:I

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int p2, v0, v1

    .line 103
    :cond_18
    if-gez p3, :cond_1d

    .line 104
    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    goto :goto_2d

    .line 106
    :cond_1d
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iHeight:I

    add-int/2addr v0, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    if-le v0, v1, :cond_2d

    .line 107
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iHeight:I

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int p3, v0, v1

    .line 110
    :cond_2d
    :goto_2d
    invoke-virtual {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->drawHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 111
    return-void
.end method

.method public final drawAlwaysBelowMEH(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 7
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I

    .line 159
    int-to-float v0, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->ANIMATION_PADDING:F

    add-float/2addr v0, v1

    float-to-int p2, v0

    .line 160
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr p2, v0

    .line 161
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr p3, v0

    .line 163
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iWidth:I

    add-int/2addr v0, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1e

    .line 164
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iWidth:I

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int p2, v0, v1

    .line 167
    :cond_1e
    if-gez p3, :cond_23

    .line 168
    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    goto :goto_33

    .line 170
    :cond_23
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iHeight:I

    add-int/2addr v0, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    if-le v0, v1, :cond_33

    .line 171
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iHeight:I

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int p3, v0, v1

    .line 174
    :cond_33
    :goto_33
    invoke-virtual {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->drawHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 175
    return-void
.end method

.method public final drawAlwaysOverM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 7
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I

    .line 115
    int-to-float v0, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->ANIMATION_PADDING:F

    add-float/2addr v0, v1

    float-to-int p2, v0

    .line 116
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr p2, v0

    .line 117
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iHeight:I

    sub-int v0, p3, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v0, v1

    .line 119
    .end local p3  # "nPosY":I
    .local v0, "nPosY":I
    iget p3, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iWidth:I

    add-int/2addr p3, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v1, v2

    if-le p3, v1, :cond_22

    .line 120
    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iWidth:I

    sub-int/2addr p3, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int p2, p3, v1

    .line 123
    :cond_22
    if-gez v0, :cond_27

    .line 124
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    goto :goto_37

    .line 126
    :cond_27
    iget p3, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iHeight:I

    add-int/2addr p3, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    if-le p3, v1, :cond_37

    .line 127
    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iHeight:I

    sub-int/2addr p3, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int v0, p3, v1

    .line 130
    :cond_37
    :goto_37
    invoke-virtual {p0, p1, p2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->drawHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 131
    return-void
.end method

.method public final drawAlwaysOverMobile(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 7
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I

    .line 135
    int-to-float v0, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->ANIMATION_PADDING:F

    add-float/2addr v0, v1

    float-to-int p2, v0

    .line 136
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iWidth:I

    div-int/lit8 v0, v0, 0x4

    sub-int/2addr p2, v0

    .line 137
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iHeight:I

    sub-int v0, p3, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    .line 139
    .end local p3  # "nPosY":I
    .local v0, "nPosY":I
    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    if-ge p2, p3, :cond_19

    .line 140
    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    .line 143
    :cond_19
    iget p3, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iWidth:I

    add-int/2addr p3, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v1, v2

    if-le p3, v1, :cond_2c

    .line 144
    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iWidth:I

    sub-int/2addr p3, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int p2, p3, v1

    .line 147
    :cond_2c
    if-gez v0, :cond_31

    .line 148
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    goto :goto_41

    .line 150
    :cond_31
    iget p3, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iHeight:I

    add-int/2addr p3, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    if-le p3, v1, :cond_41

    .line 151
    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iHeight:I

    sub-int/2addr p3, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int v0, p3, v1

    .line 154
    :cond_41
    :goto_41
    invoke-virtual {p0, p1, p2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->drawHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 155
    return-void
.end method

.method public final drawHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 14
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I

    .line 224
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->getScrollPosX()I

    move-result v0

    .line 226
    .local v0, "tempScrollX":I
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->ANIMATION_ALPHA:F

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 227
    add-int v1, p2, v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iWidth:I

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iHeight:I

    invoke-static {p1, v1, p3, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect_NewGameBoxDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 229
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget v6, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->ANIMATION_ALPHA:F

    const v7, 0x3e19999a  # 0.15f

    mul-float v6, v6, v7

    invoke-direct {v1, v2, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 230
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    add-int v6, p2, v0

    add-int/lit8 v1, p3, 0x1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int v7, v1, v2

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iWidth:I

    const/4 v9, 0x1

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 231
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    add-int v6, p2, v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iHeight:I

    add-int/2addr v1, p3

    add-int/lit8 v1, v1, -0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int v7, v1, v2

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iWidth:I

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 233
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->ANIMATION_ALPHA:F

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 235
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr p3, v1

    .line 237
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7d
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iElementsSize:I

    if-ge v1, v2, :cond_ac

    .line 238
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->lElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    add-int v3, p2, v0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v4, v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->ANIMATION_ALPHA:F

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iMaxWidth:I

    move-object v3, p1

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    .line 240
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->lElements:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr p3, v2

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_7d

    .line 243
    .end local v1  # "i":I
    :cond_ac
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 244
    return-void
.end method

.method public final drawHoverWithoutAnim(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 13
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I

    .line 248
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->getScrollPosX()I

    move-result v0

    .line 250
    .local v0, "tempScrollX":I
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iHeight:I

    add-int/2addr v1, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_1b

    .line 251
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iHeight:I

    sub-int p3, v1, v2

    .line 254
    :cond_1b
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-direct {v1, v2, v2, v2, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 255
    add-int v1, p2, v0

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iWidth:I

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iHeight:I

    invoke-static {p1, v1, p3, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect_NewGameBoxEDGE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 257
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v6, 0x3e19999a  # 0.15f

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 258
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    add-int v5, p2, v0

    add-int/lit8 v1, p3, 0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v6, v1, v4

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iWidth:I

    const/4 v8, 0x1

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 259
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    add-int v5, p2, v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iHeight:I

    add-int/2addr v1, p3

    add-int/lit8 v1, v1, -0x2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v6, v1, v4

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iWidth:I

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 261
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr p3, v1

    .line 263
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2, v2, v2, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 264
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8d
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iElementsSize:I

    if-ge v1, v2, :cond_bc

    .line 265
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->lElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    add-int v3, p2, v0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v4, v3

    const/high16 v6, 0x3f800000  # 1.0f

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iMaxWidth:I

    move-object v3, p1

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    .line 266
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->lElements:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr p3, v2

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_8d

    .line 268
    .end local v1  # "i":I
    :cond_bc
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 269
    return-void
.end method

.method public final drawProvinceInfo(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 6
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I

    .line 179
    int-to-float v0, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->ANIMATION_PADDING:F

    add-float/2addr v0, v1

    float-to-int p2, v0

    .line 190
    invoke-virtual {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->drawHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 191
    return-void
.end method

.method public final getScrollPosX()I
    .registers 7

    .line 194
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iWidthOver:I

    if-lez v0, :cond_5a

    .line 195
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->backAnimation:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2d

    .line 196
    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->lTime:J

    const-wide/16 v4, 0x5dc

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_54

    .line 197
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iScrollPosX:I

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iScrollPosX:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    neg-int v2, v2

    if-ge v0, v2, :cond_54

    .line 198
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->backAnimation:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->backAnimation:Z

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->lTime:J

    goto :goto_54

    .line 204
    :cond_2d
    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->lTime:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_54

    .line 205
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iScrollPosX:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iScrollPosX:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iWidthOver:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    if-le v0, v2, :cond_54

    .line 206
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->backAnimation:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->backAnimation:Z

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->lTime:J

    .line 212
    :cond_54
    :goto_54
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    .line 214
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->iScrollPosX:I

    return v0

    .line 217
    :cond_5a
    const/4 v0, 0x0

    return v0
.end method
