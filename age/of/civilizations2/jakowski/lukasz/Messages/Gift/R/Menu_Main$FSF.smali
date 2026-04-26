.class public Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$FSF;
.super Ljava/lang/Object;
.source "Menu_Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FSF"
.end annotation


# instance fields
.field c:I

.field iH:I

.field iW:I

.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main;

.field x:I

.field y:I


# direct methods
.method public constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main;IIII)V
    .registers 9
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main;
    .param p2, "x"  # I
    .param p3, "y"  # I
    .param p4, "iW"  # I
    .param p5, "iH"  # I

    .line 925
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$FSF;->this$0:Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 923
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$FSF;->c:I

    .line 926
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$FSF;->x:I

    .line 927
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$FSF;->y:I

    .line 928
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v1, 0x2bc

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000  # 1000.0f

    div-float/2addr v0, v1

    const v1, 0x3f266666  # 0.65f

    add-float/2addr v0, v1

    .line 930
    .local v0, "s":F
    int-to-float v1, p4

    mul-float v1, v1, v0

    float-to-int v1, v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$FSF;->iW:I

    .line 931
    int-to-float v1, p5

    mul-float v1, v1, v0

    float-to-int v1, v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$FSF;->iH:I

    .line 932
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$FSF;->c:I

    .line 933
    return-void
.end method


# virtual methods
.method public update(II)V
    .registers 6
    .param p1, "boxWidth"  # I
    .param p2, "boxHeight"  # I

    .line 938
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$FSF;->y:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$FSF;->y:I

    .line 939
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$FSF;->x:I

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

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$FSF;->x:I

    .line 942
    if-gez v0, :cond_1c

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$FSF;->x:I

    .line 943
    :cond_1c
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$FSF;->x:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$FSF;->iW:I

    add-int/2addr v0, v1

    if-le v0, p1, :cond_27

    sub-int v0, p1, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$FSF;->x:I

    .line 946
    :cond_27
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$FSF;->y:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$FSF;->iH:I

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    if-lt v0, v1, :cond_41

    .line 947
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$FSF;->iH:I

    if-lez v0, :cond_38

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$FSF;->iH:I

    .line 948
    :cond_38
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$FSF;->iW:I

    const/16 v1, 0x50

    if-ge v0, v1, :cond_41

    add-int/2addr v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$FSF;->iW:I

    .line 950
    :cond_41
    return-void
.end method
