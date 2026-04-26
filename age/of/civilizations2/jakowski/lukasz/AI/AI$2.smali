.class Lage/of/civilizations2/jakowski/lukasz/AI/AI$2;
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

    .line 1624
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/AI/AI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public expandToNeutralProvinces(I)Z
    .registers 3
    .param p1, "nCivID"  # I

    .line 1627
    const/4 v0, 0x0

    return v0
.end method
