.class public Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top$FSF;
.super Ljava/lang/Object;
.source "Menu_InGame_FA_Top.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FSF"
.end annotation


# instance fields
.field a:F

.field c:I

.field iH:I

.field iW:I

.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top;

.field x:I

.field y:I


# direct methods
.method public constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top;IIII)V
    .registers 10
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top;
    .param p2, "x"  # I
    .param p3, "y"  # I
    .param p4, "iW"  # I
    .param p5, "iH"  # I

    .line 511
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top$FSF;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top$FSF;->c:I

    .line 509
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top$FSF;->a:F

    .line 512
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top$FSF;->x:I

    .line 513
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top$FSF;->y:I

    .line 514
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v1, 0x2bc

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000  # 1000.0f

    div-float/2addr v0, v1

    const v2, 0x3f266666  # 0.65f

    add-float/2addr v0, v2

    .line 515
    .local v0, "s":F
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    const v1, -0x41e66666  # -0.15f

    add-float/2addr v2, v1

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top$FSF;->a:F

    .line 517
    int-to-float v1, p4

    mul-float v1, v1, v0

    float-to-int v1, v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top$FSF;->iW:I

    .line 518
    int-to-float v1, p5

    mul-float v1, v1, v0

    float-to-int v1, v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top$FSF;->iH:I

    .line 519
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top$FSF;->c:I

    .line 520
    return-void
.end method


# virtual methods
.method public update(II)V
    .registers 7
    .param p1, "boxWidth"  # I
    .param p2, "boxHeight"  # I

    .line 525
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top$FSF;->y:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top$FSF;->y:I

    .line 526
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top$FSF;->x:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextBoolean()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, -0x1

    :goto_14
    add-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top$FSF;->x:I

    .line 529
    if-gez v0, :cond_1c

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top$FSF;->x:I

    .line 530
    :cond_1c
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top$FSF;->x:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top$FSF;->iW:I

    add-int/2addr v0, v1

    if-le v0, p1, :cond_27

    sub-int v0, p1, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top$FSF;->x:I

    .line 533
    :cond_27
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top$FSF;->y:I

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top$FSF;->iH:I

    add-int/2addr v0, v3

    if-lt v0, p2, :cond_3b

    .line 534
    if-lez v3, :cond_34

    add-int/lit8 v3, v3, -0x2

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top$FSF;->iH:I

    .line 535
    :cond_34
    const/16 v0, 0x50

    if-ge v1, v0, :cond_3b

    add-int/2addr v1, v2

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top$FSF;->iW:I

    .line 537
    :cond_3b
    return-void
.end method
