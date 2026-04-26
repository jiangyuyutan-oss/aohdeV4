.class Lage/of/civilizations2/jakowski/lukasz/MenuManager$1;
.super Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;
.source "MenuManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getViewID(Lage/of/civilizations2/jakowski/lukasz/View;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/MenuManager;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/MenuManager;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/MenuManager;
    .param p2, "taskKey"  # Ljava/lang/String;

    .line 3988
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-direct {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 4

    .line 3992
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->loadDivisionAll()V

    .line 3993
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->access$000(Lage/of/civilizations2/jakowski/lukasz/MenuManager;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->CREATE_CIVILIZATION:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->CREATE_CIVILIZATION_LIST_FLAGS:I

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/CreateCiv/Menu_CreateCivListFlags;

    invoke-direct {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/CreateCiv/Menu_CreateCivListFlags;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    .line 3996
    goto :goto_26

    .line 3994
    :catch_22
    move-exception v0

    .line 3995
    .local v0, "exr":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3997
    .end local v0  # "exr":Ljava/lang/Exception;
    :goto_26
    return-void
.end method
