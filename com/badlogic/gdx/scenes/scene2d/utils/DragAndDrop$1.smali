.class Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;
.source "DragAndDrop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->addSource(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

.field final synthetic val$source:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;)V
    .registers 3
    .param p1, "this$0"  # Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    .line 54
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->val$source:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;-><init>()V

    return-void
.end method


# virtual methods
.method public drag(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .registers 27
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "pointer"  # I

    .line 75
    move-object/from16 v0, p0

    move/from16 v7, p4

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    if-nez v1, :cond_b

    return-void

    .line 76
    :cond_b
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->activePointer:I

    if-eq v7, v1, :cond_12

    return-void

    .line 78
    :cond_12
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->val$source:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-virtual {v1, v8, v9, v10, v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;->drag(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V

    .line 80
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v11

    .line 83
    .local v11, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v12, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 84
    .local v12, "oldDragActor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    const/4 v1, 0x0

    .local v1, "oldDragActorX":F
    const/4 v2, 0x0

    .line 85
    .local v2, "oldDragActorY":F
    if-eqz v12, :cond_39

    .line 86
    invoke-virtual {v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v1

    .line 87
    invoke-virtual {v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v2

    .line 88
    const/high16 v3, 0x4f000000

    invoke-virtual {v12, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    move v13, v1

    move v14, v2

    goto :goto_3b

    .line 85
    :cond_39
    move v13, v1

    move v14, v2

    .line 91
    .end local v1  # "oldDragActorX":F
    .end local v2  # "oldDragActorY":F
    .local v13, "oldDragActorX":F
    .local v14, "oldDragActorY":F
    :goto_3b
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageX()F

    move-result v1

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->touchOffsetX:F

    add-float v15, v1, v2

    .local v15, "stageX":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageY()F

    move-result v1

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->touchOffsetY:F

    add-float v6, v1, v2

    .line 92
    .local v6, "stageY":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v1, v15, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    .line 93
    .local v1, "hit":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    const/4 v4, 0x0

    if-nez v1, :cond_63

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v2

    invoke-virtual {v2, v15, v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    :cond_63
    move-object v3, v1

    .line 95
    .end local v1  # "hit":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .local v3, "hit":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz v12, :cond_69

    invoke-virtual {v12, v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    .line 98
    :cond_69
    const/4 v1, 0x0

    .line 99
    .local v1, "newTarget":Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iput-boolean v4, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->isValidTarget:Z

    .line 100
    if-eqz v3, :cond_ab

    .line 101
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->targets:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v4, "n":I
    :goto_77
    if-ge v2, v4, :cond_a6

    .line 102
    iget-object v5, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->targets:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    .line 103
    .local v5, "target":Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
    move-object/from16 v18, v1

    .end local v1  # "newTarget":Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
    .local v18, "newTarget":Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
    iget-object v1, v5, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isAscendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v1

    if-nez v1, :cond_93

    .line 101
    .end local v5  # "target":Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, v18

    const/4 v5, 0x1

    goto :goto_77

    .line 104
    .restart local v5  # "target":Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
    :cond_93
    move-object v1, v5

    .line 105
    .end local v18  # "newTarget":Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
    .restart local v1  # "newTarget":Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
    move-object/from16 v18, v1

    .end local v1  # "newTarget":Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
    .restart local v18  # "newTarget":Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
    iget-object v1, v5, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move/from16 v19, v2

    .end local v2  # "i":I
    .local v19, "i":I
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->tmpVector:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v15, v6}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 106
    move-object/from16 v5, v18

    goto :goto_af

    .line 101
    .end local v5  # "target":Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
    .end local v18  # "newTarget":Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
    .end local v19  # "i":I
    .restart local v1  # "newTarget":Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
    .restart local v2  # "i":I
    :cond_a6
    move-object/from16 v18, v1

    move/from16 v19, v2

    .end local v1  # "newTarget":Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
    .end local v2  # "i":I
    .restart local v18  # "newTarget":Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
    .restart local v19  # "i":I
    goto :goto_ad

    .line 100
    .end local v4  # "n":I
    .end local v18  # "newTarget":Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
    .end local v19  # "i":I
    .restart local v1  # "newTarget":Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
    :cond_ab
    move-object/from16 v18, v1

    .line 111
    .end local v1  # "newTarget":Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
    .restart local v18  # "newTarget":Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
    :goto_ad
    move-object/from16 v5, v18

    .end local v18  # "newTarget":Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
    .local v5, "newTarget":Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
    :goto_af
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->target:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    if-eq v5, v1, :cond_cc

    .line 112
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->target:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    if-eqz v1, :cond_c8

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->target:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->val$source:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;->reset(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;)V

    .line 113
    :cond_c8
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iput-object v5, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->target:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    .line 117
    :cond_cc
    if-eqz v5, :cond_ff

    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->val$source:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    move-object/from16 v18, v1

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->tmpVector:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    move/from16 v19, v1

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->tmpVector:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    move/from16 v20, v1

    move-object v1, v5

    move-object/from16 v21, v3

    .end local v3  # "hit":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .local v21, "hit":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    move-object/from16 v3, v18

    move-object v7, v4

    const/16 v16, 0x0

    move/from16 v4, v19

    move-object/from16 v18, v5

    const/16 v17, 0x1

    .end local v5  # "newTarget":Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
    .restart local v18  # "newTarget":Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
    move/from16 v5, v20

    move/from16 v19, v6

    .end local v6  # "stageY":F
    .local v19, "stageY":F
    move/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;->drag(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;FFI)Z

    move-result v1

    iput-boolean v1, v7, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->isValidTarget:Z

    goto :goto_109

    .end local v18  # "newTarget":Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
    .end local v19  # "stageY":F
    .end local v21  # "hit":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .restart local v3  # "hit":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .restart local v5  # "newTarget":Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
    .restart local v6  # "stageY":F
    :cond_ff
    move-object/from16 v21, v3

    move-object/from16 v18, v5

    move/from16 v19, v6

    const/16 v16, 0x0

    const/16 v17, 0x1

    .line 120
    .end local v3  # "hit":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v5  # "newTarget":Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
    .end local v6  # "stageY":F
    .restart local v18  # "newTarget":Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
    .restart local v19  # "stageY":F
    .restart local v21  # "hit":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :goto_109
    const/4 v1, 0x0

    .line 121
    .local v1, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->target:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    if-eqz v2, :cond_124

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-boolean v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->isValidTarget:Z

    if-eqz v2, :cond_11d

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;->validDragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    goto :goto_123

    :cond_11d
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;->invalidDragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    :goto_123
    move-object v1, v2

    .line 122
    :cond_124
    if-nez v1, :cond_12c

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    iget-object v1, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;->dragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 123
    :cond_12c
    if-eq v1, v12, :cond_155

    .line 124
    if-eqz v12, :cond_139

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-boolean v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->removeDragActor:Z

    if-eqz v2, :cond_139

    invoke-virtual {v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    .line 125
    :cond_139
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iput-object v1, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 126
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v3

    if-nez v3, :cond_148

    move/from16 v5, v17

    goto :goto_14a

    :cond_148
    move/from16 v5, v16

    :goto_14a
    iput-boolean v5, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->removeDragActor:Z

    .line 127
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-boolean v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->removeDragActor:Z

    if-eqz v2, :cond_155

    invoke-virtual {v11, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 129
    :cond_155
    if-nez v1, :cond_158

    return-void

    .line 132
    :cond_158
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageX()F

    move-result v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragActorX:F

    add-float/2addr v2, v3

    .line 133
    .local v2, "actorX":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageY()F

    move-result v3

    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragActorY:F

    add-float/2addr v3, v4

    .line 134
    .local v3, "actorY":F
    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-boolean v4, v4, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->keepWithinStage:Z

    if-eqz v4, :cond_1ae

    .line 135
    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-gez v5, :cond_17b

    const/4 v2, 0x0

    .line 136
    :cond_17b
    cmpg-float v4, v3, v4

    if-gez v4, :cond_180

    const/4 v3, 0x0

    .line 137
    :cond_180
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v4

    add-float/2addr v4, v2

    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_197

    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v4

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    move v2, v4

    .line 138
    :cond_197
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v4

    add-float/2addr v4, v3

    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1ae

    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v4

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v5

    sub-float v3, v4, v5

    .line 140
    :cond_1ae
    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    .line 141
    return-void
.end method

.method public dragStart(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .registers 10
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "pointer"  # I

    .line 56
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->activePointer:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    .line 57
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stop()V

    .line 58
    return-void

    .line 61
    :cond_b
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iput p4, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->activePointer:I

    .line 63
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragTime:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragValidTime:J

    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->val$source:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragSource:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->val$source:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->getTouchDownX()F

    move-result v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->getTouchDownY()F

    move-result v3

    invoke-virtual {v1, p1, v2, v3, p4}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;->dragStart(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    move-result-object v1

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    .line 66
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stop()V

    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->cancelTouchFocus:Z

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    if-eqz v0, :cond_59

    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->val$source:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;->getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    .line 70
    .local v0, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    if-eqz v0, :cond_59

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->val$source:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;->getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->cancelTouchFocusExcept(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 72
    .end local v0  # "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    :cond_59
    return-void
.end method

.method public dragStop(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .registers 17
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "pointer"  # I

    .line 144
    move-object v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->activePointer:I

    move/from16 v9, p4

    if-eq v9, v1, :cond_a

    return-void

    .line 145
    :cond_a
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    const/4 v2, -0x1

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->activePointer:I

    .line 146
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    if-nez v1, :cond_16

    return-void

    .line 148
    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-wide v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragValidTime:J

    cmp-long v1, v1, v3

    const/4 v10, 0x0

    if-gez v1, :cond_27

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iput-boolean v10, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->isValidTarget:Z

    .line 149
    :cond_27
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v1, :cond_3a

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-boolean v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->removeDragActor:Z

    if-eqz v1, :cond_3a

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    .line 150
    :cond_3a
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-boolean v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->isValidTarget:Z

    if-eqz v1, :cond_79

    .line 151
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageX()F

    move-result v1

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->touchOffsetX:F

    add-float/2addr v1, v2

    .local v1, "stageX":F
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageY()F

    move-result v2

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->touchOffsetY:F

    add-float v8, v2, v3

    .line 152
    .local v8, "stageY":F
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->target:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->tmpVector:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, v1, v8}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 153
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->target:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->val$source:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->tmpVector:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v6, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->tmpVector:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    move/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;->drop(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;FFI)V

    .line 155
    .end local v1  # "stageX":F
    .end local v8  # "stageY":F
    :cond_79
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->val$source:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v7, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-boolean v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->isValidTarget:Z

    const/4 v11, 0x0

    if-eqz v1, :cond_8c

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->target:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    move-object v8, v1

    goto :goto_8d

    :cond_8c
    move-object v8, v11

    :goto_8d
    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v2 .. v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;->dragStop(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;)V

    .line 156
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->target:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    if-eqz v1, :cond_a8

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->target:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->val$source:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;->reset(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;)V

    .line 157
    :cond_a8
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iput-object v11, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragSource:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    .line 158
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iput-object v11, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    .line 159
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iput-object v11, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->target:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    .line 160
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iput-boolean v10, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->isValidTarget:Z

    .line 161
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iput-object v11, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 162
    return-void
.end method
