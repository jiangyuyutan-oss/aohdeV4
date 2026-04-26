.class Lage/of/civilizations2/jakowski/lukasz/TouchManager$47;
.super Ljava/lang/Object;
.source "TouchManager.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/TouchManager$ExtraAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/TouchManager;->ueExA()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/TouchManager;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    .line 2557
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager$47;->this$0:Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extraAction(II)V
    .registers 5
    .param p1, "nPX"  # I
    .param p2, "nPY"  # I

    .line 2560
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v0

    if-ltz v0, :cond_1f

    .line 2561
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager$47;->this$0:Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->access$100(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2562
    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_Continents;->actionSave(Z)V

    .line 2563
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager$47;->this$0:Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    invoke-static {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->access$002(Lage/of/civilizations2/jakowski/lukasz/TouchManager;Z)Z

    goto :goto_1f

    .line 2565
    :cond_1a
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager$47;->this$0:Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    invoke-virtual {v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->actionMoveMap(II)V

    .line 2568
    :cond_1f
    :goto_1f
    return-void
.end method
