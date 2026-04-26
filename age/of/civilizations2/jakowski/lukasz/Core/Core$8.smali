.class Lage/of/civilizations2/jakowski/lukasz/Core/Core$8;
.super Ljava/lang/Object;
.source "Core.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Core/Core$HighlightedProvince_Animation_UpdateOffset;


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

    .line 562
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateOffset()V
    .registers 3

    .line 565
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->access$100(Lage/of/civilizations2/jakowski/lukasz/Core/Core;)I

    move-result v0

    if-gtz v0, :cond_2c

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v0

    if-ltz v0, :cond_20

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v0

    if-nez v0, :cond_2c

    :cond_20
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->access$200(Lage/of/civilizations2/jakowski/lukasz/Core/Core;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_35

    .line 566
    :cond_2c
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->access$000(Lage/of/civilizations2/jakowski/lukasz/Core/Core;)Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;->update()V

    .line 568
    :cond_35
    return-void
.end method
