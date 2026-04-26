.class public Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;
.super Ljava/lang/Object;
.source "Menu_About.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FSF"
.end annotation


# instance fields
.field c:I

.field iH:I

.field iW:I

.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;

.field x:I

.field y:I


# direct methods
.method public constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;IIII)V
    .registers 9
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;
    .param p2, "x"  # I
    .param p3, "y"  # I
    .param p4, "iW"  # I
    .param p5, "iH"  # I

    .line 718
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 716
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;->c:I

    .line 719
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;->x:I

    .line 720
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;->y:I

    .line 721
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v1, 0x2bc

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000  # 1000.0f

    div-float/2addr v0, v1

    const v1, 0x3f266666  # 0.65f

    add-float/2addr v0, v1

    .line 723
    .local v0, "s":F
    int-to-float v1, p4

    mul-float v1, v1, v0

    float-to-int v1, v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;->iW:I

    .line 724
    int-to-float v1, p5

    mul-float v1, v1, v0

    float-to-int v1, v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;->iH:I

    .line 725
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;->c:I

    .line 726
    return-void
.end method


# virtual methods
.method public update(II)V
    .registers 7
    .param p1, "boxWidth"  # I
    .param p2, "boxHeight"  # I

    .line 731
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;->y:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;->y:I

    .line 732
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;->x:I

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

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;->x:I

    .line 735
    if-gez v0, :cond_1c

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;->x:I

    .line 736
    :cond_1c
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;->x:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;->iW:I

    add-int/2addr v0, v1

    if-le v0, p1, :cond_27

    sub-int v0, p1, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;->x:I

    .line 739
    :cond_27
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;->y:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;->iH:I

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sub-int/2addr v1, v3

    if-lt v0, v1, :cond_44

    .line 740
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;->iH:I

    if-lez v0, :cond_3b

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;->iH:I

    .line 741
    :cond_3b
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;->iW:I

    const/16 v1, 0x50

    if-ge v0, v1, :cond_44

    add-int/2addr v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;->iW:I

    .line 743
    :cond_44
    return-void
.end method
