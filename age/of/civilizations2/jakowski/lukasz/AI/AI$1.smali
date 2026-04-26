.class Lage/of/civilizations2/jakowski/lukasz/AI/AI$1;
.super Ljava/lang/Object;
.source "AI.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/AI/AI$Expand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/AI/AI;->updateExpand()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/AI/AI;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/AI/AI;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/AI/AI;

    .line 1616
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/AI/AI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public expandToNeutralProvinces(I)Z
    .registers 4
    .param p1, "nCivID"  # I

    .line 1619
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/AI/AI;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->expandToNeutralProvinces_Out(IZ)Z

    move-result v0

    return v0
.end method
