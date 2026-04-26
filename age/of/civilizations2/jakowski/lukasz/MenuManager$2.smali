.class Lage/of/civilizations2/jakowski/lukasz/MenuManager$2;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/MenuManager$SlideMap_ActionMove;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateSlideMap_ActionMove()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/MenuManager;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/MenuManager;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 8435
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update_ActionMove_SlideMap()V
    .registers 4

    .line 8438
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->access$100(Lage/of/civilizations2/jakowski/lukasz/MenuManager;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 8439
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->slidePosX:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->slidePosY:I

    invoke-static {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->access$200(Lage/of/civilizations2/jakowski/lukasz/MenuManager;II)V

    .line 8441
    :cond_11
    return-void
.end method
