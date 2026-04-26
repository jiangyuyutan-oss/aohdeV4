.class public Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC$Box;
.super Ljava/lang/Object;
.source "ColorPicker_AoC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Box"
.end annotation


# instance fields
.field private iHeight:I

.field private iPosX:I

.field private iPosY:I

.field private iWidth:I

.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC;

.field private visible:Z


# direct methods
.method public constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC;IIII)V
    .registers 7
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "iWidth"  # I
    .param p5, "iHeight"  # I

    .line 674
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC$Box;->this$0:Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 672
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC$Box;->visible:Z

    .line 675
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC$Box;->iPosX:I

    .line 676
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC$Box;->iPosY:I

    .line 677
    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC$Box;->iWidth:I

    .line 678
    iput p5, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC$Box;->iHeight:I

    .line 679
    return-void
.end method


# virtual methods
.method public final getHeight()I
    .registers 2

    .line 702
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC$Box;->iHeight:I

    return v0
.end method

.method public final getPosX()I
    .registers 2

    .line 682
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC$Box;->iPosX:I

    return v0
.end method

.method public final getPosY()I
    .registers 2

    .line 690
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC$Box;->iPosY:I

    return v0
.end method

.method public final getVisible()Z
    .registers 2

    .line 718
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC$Box;->visible:Z

    return v0
.end method

.method public final getWidth()I
    .registers 2

    .line 698
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC$Box;->iWidth:I

    return v0
.end method

.method public final setHeight(I)V
    .registers 2
    .param p1, "iHeight"  # I

    .line 710
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC$Box;->iHeight:I

    .line 711
    return-void
.end method

.method public final setPosX(I)V
    .registers 2
    .param p1, "iPosX"  # I

    .line 686
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC$Box;->iPosX:I

    .line 687
    return-void
.end method

.method public final setPosY(I)V
    .registers 2
    .param p1, "iPosY"  # I

    .line 694
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC$Box;->iPosY:I

    .line 695
    return-void
.end method

.method public final setVisible(Z)V
    .registers 2
    .param p1, "visible"  # Z

    .line 714
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC$Box;->visible:Z

    .line 715
    return-void
.end method

.method public final setWidth(I)V
    .registers 2
    .param p1, "iWidth"  # I

    .line 706
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC$Box;->iWidth:I

    .line 707
    return-void
.end method
