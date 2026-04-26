.class Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$2;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SelectBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V
    .registers 2
    .param p1, "this$0"  # Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    .line 92
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$2;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$2;"
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .registers 8
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "pointer"  # I
    .param p5, "button"  # I

    .line 94
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$2;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$2;"
    const/4 v0, 0x0

    if-nez p4, :cond_6

    if-eqz p5, :cond_6

    return v0

    .line 95
    :cond_6
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_f

    return v0

    .line 96
    :cond_f
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selectBoxList:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->hasParent()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 97
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->hideList()V

    goto :goto_24

    .line 99
    :cond_1f
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->showList()V

    .line 100
    :goto_24
    const/4 v0, 0x1

    return v0
.end method
