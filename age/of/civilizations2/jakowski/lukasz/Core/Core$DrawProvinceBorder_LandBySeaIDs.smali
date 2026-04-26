.class public Lage/of/civilizations2/jakowski/lukasz/Core/Core$DrawProvinceBorder_LandBySeaIDs;
.super Ljava/lang/Object;
.source "Core.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/Core/Core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DrawProvinceBorder_LandBySeaIDs"
.end annotation


# instance fields
.field iProvinceID:I

.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

.field withProvinceID:I


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Core/Core;II)V
    .registers 4
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Core/Core;
    .param p2, "iProvinceID"  # I
    .param p3, "withProvinceID"  # I

    .line 588
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$DrawProvinceBorder_LandBySeaIDs;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$DrawProvinceBorder_LandBySeaIDs;->iProvinceID:I

    .line 590
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$DrawProvinceBorder_LandBySeaIDs;->withProvinceID:I

    .line 591
    return-void
.end method
