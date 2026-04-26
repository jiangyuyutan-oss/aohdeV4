.class Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;
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
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/List;)V
    .registers 2
    .param p1, "this$0"  # Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    .line 128
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;"
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 8
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "pointer"  # I
    .param p5, "toActor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 156
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;"
    const/4 v0, -0x1

    if-nez p4, :cond_7

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->pressedIndex:I

    .line 157
    :cond_7
    if-ne p4, v0, :cond_d

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->overIndex:I

    .line 158
    :cond_d
    return-void
.end method

.method public mouseMoved(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)Z
    .registers 6
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"  # F
    .param p3, "y"  # F

    .line 151
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v1, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getItemIndexAt(F)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->overIndex:I

    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .registers 10
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "pointer"  # I
    .param p5, "button"  # I

    .line 130
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;"
    const/4 v0, 0x1

    if-nez p4, :cond_4b

    if-eqz p5, :cond_6

    goto :goto_4b

    .line 131
    :cond_6
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_11

    return v0

    .line 132
    :cond_11
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 133
    :cond_24
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_2d

    return v0

    .line 134
    :cond_2d
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v1, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getItemIndexAt(F)I

    move-result v1

    .line 135
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_37

    return v0

    .line 136
    :cond_37
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->choose(Ljava/lang/Object;)V

    .line 137
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iput v1, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->pressedIndex:I

    .line 138
    return v0

    .line 130
    .end local v1  # "index":I
    :cond_4b
    :goto_4b
    return v0
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .registers 7
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "pointer"  # I

    .line 147
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v1, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getItemIndexAt(F)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->overIndex:I

    .line 148
    return-void
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .registers 8
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "pointer"  # I
    .param p5, "button"  # I

    .line 142
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;"
    if-nez p4, :cond_b

    if-eqz p5, :cond_5

    goto :goto_b

    .line 143
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    const/4 v1, -0x1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->pressedIndex:I

    .line 144
    return-void

    .line 142
    :cond_b
    :goto_b
    return-void
.end method
