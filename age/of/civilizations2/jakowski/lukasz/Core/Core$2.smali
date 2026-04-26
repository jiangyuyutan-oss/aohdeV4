.class Lage/of/civilizations2/jakowski/lukasz/Core/Core$2;
.super Ljava/lang/Object;
.source "Core.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Core/Core$ActiveProvinceBorderStyle;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Core/Core;->updateActiveProvinceBorder_Style()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Core/Core;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 455
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(II)V
    .registers 4
    .param p1, "nProvinceID"  # I
    .param p2, "withProvinceID"  # I

    .line 458
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvBordersLandBySea(I)Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->updateDrawProvBorder_ActiveSea_Dashed()V

    .line 459
    return-void
.end method
