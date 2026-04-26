.class Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager$1;
.super Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;
.source "HistoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->clearHistory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;
    .param p2, "taskKey"  # Ljava/lang/String;

    .line 135
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-direct {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 4

    .line 138
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getImages()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 139
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getImages()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getImages()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method
