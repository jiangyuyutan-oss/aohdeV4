.class Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;
.source "Tree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V
    .registers 2
    .param p1, "this$0"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    .line 68
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;"
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;-><init>()V

    return-void
.end method


# virtual methods
.method protected changed()V
    .registers 3

    .line 70
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    goto :goto_19

    .line 75
    :pswitch_8  #0x1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rangeStart:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    goto :goto_19

    .line 72
    :pswitch_13  #0x0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rangeStart:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 73
    nop

    .line 78
    :goto_19
    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_13  #00000000
        :pswitch_8  #00000001
    .end packed-switch
.end method
