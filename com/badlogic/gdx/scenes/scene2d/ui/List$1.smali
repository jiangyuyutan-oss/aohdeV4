.class Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "List.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/List;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field prefix:Ljava/lang/String;

.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

.field typeTimeout:J


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/List;)V
    .registers 2
    .param p1, "this$0"  # Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    .line 74
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;"
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public keyDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .registers 7
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "keycode"  # I

    .line 79
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    .line 81
    :cond_c
    const/4 v0, 0x1

    sparse-switch p2, :sswitch_data_9a

    goto/16 :goto_98

    .line 93
    :sswitch_12
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->setSelectedIndex(I)V

    .line 94
    return v0

    .line 106
    :sswitch_1f
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 107
    :cond_31
    return v0

    .line 83
    :sswitch_32
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->ctrl()Z

    move-result v2

    if-eqz v2, :cond_98

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->getMultiple()Z

    move-result v2

    if-eqz v2, :cond_98

    .line 84
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->clear()V

    .line 85
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 86
    return v0

    .line 96
    :sswitch_55
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getSelected()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v1

    add-int/2addr v1, v0

    .line 97
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt v1, v2, :cond_6d

    const/4 v1, 0x0

    .line 98
    :cond_6d
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->setSelectedIndex(I)V

    .line 99
    return v0

    .line 101
    .end local v1  # "index":I
    :sswitch_73
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getSelected()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v1

    sub-int/2addr v1, v0

    .line 102
    .restart local v1  # "index":I
    if-gez v1, :cond_8c

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v2, -0x1

    .line 103
    :cond_8c
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->setSelectedIndex(I)V

    .line 104
    return v0

    .line 90
    .end local v1  # "index":I
    :sswitch_92
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->setSelectedIndex(I)V

    .line 91
    return v0

    .line 109
    :cond_98
    :goto_98
    return v1

    nop

    :sswitch_data_9a
    .sparse-switch
        0x3 -> :sswitch_92
        0x13 -> :sswitch_73
        0x14 -> :sswitch_55
        0x1d -> :sswitch_32
        0x6f -> :sswitch_1f
        0x7b -> :sswitch_12
    .end sparse-switch
.end method

.method public keyTyped(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;C)Z
    .registers 10
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "character"  # C

    .line 113
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->typeToSelect:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 114
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 115
    .local v2, "time":J
    iget-wide v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;->typeTimeout:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_16

    const-string v0, ""

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;->prefix:Ljava/lang/String;

    .line 116
    :cond_16
    const-wide/16 v4, 0x12c

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;->typeTimeout:J

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;->prefix:Ljava/lang/String;

    .line 118
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v4, "n":I
    :goto_3b
    if-ge v0, v4, :cond_60

    .line 119
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;->prefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 120
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->setSelectedIndex(I)V

    .line 121
    goto :goto_60

    .line 118
    :cond_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 124
    .end local v0  # "i":I
    .end local v4  # "n":I
    :cond_60
    :goto_60
    return v1
.end method
