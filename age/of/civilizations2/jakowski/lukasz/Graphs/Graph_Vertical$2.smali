.class Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;
.super Ljava/lang/Object;
.source "Graph_Vertical.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$DrawStatisticsData;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;-><init>(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    .line 127
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .registers 23
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "i"  # I
    .param p3, "tempOffsetX"  # I
    .param p4, "iTranslateX"  # I
    .param p5, "iTranslateY"  # I

    .line 131
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    const-string v0, "%]"

    const-string v10, " ["

    const-string v11, ""

    const/4 v12, 0x1

    :try_start_d
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$000(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValue(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$000(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValue(I)I

    move-result v4

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$000(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValue()I

    move-result v6

    const/4 v13, 0x4

    invoke-static {v4, v6, v13}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getPercentageOld(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v4

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    const v14, 0x3f333333  # 0.7f

    mul-float v6, v6, v14

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const/4 v15, 0x2

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$100(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$100(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x0

    add-int/2addr v4, v6

    add-int v4, v4, p4

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v14

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    add-int/lit8 v7, v9, 0x1

    mul-int v6, v6, v7

    add-int/2addr v5, v6

    add-int v5, v5, p5

    invoke-static {v2, v8, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$300(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;II)V

    .line 133
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$000(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v2, v12}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValue(I)I

    move-result v2

    if-lez v2, :cond_161

    .line 134
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$000(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v4, v12}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValue(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$000(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v4, v12}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValue(I)I

    move-result v4

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$000(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValue()I

    move-result v5

    invoke-static {v4, v5, v13}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getPercentageOld(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$000(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v3, v12}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValueDataTypeID(I)I

    move-result v5

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v14

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$100(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v3, v6

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$100(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v3, v6

    add-int v6, v3, p4

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    mul-float v7, v7, v14

    float-to-int v7, v7

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v16, v16, 0x2

    add-int v7, v7, v16

    add-int/lit8 v16, v9, 0x1

    mul-int v7, v7, v16

    add-int/2addr v3, v7

    add-int v7, v3, p5

    move-object/from16 v3, p1

    invoke-static/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$500(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;III)V

    goto :goto_1c5

    .line 136
    :cond_161
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$000(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v4, v12}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValue(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v14

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$100(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$100(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    add-int v4, v4, p4

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v14

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    add-int/lit8 v7, v9, 0x1

    mul-int v6, v6, v7

    add-int/2addr v5, v6

    add-int v5, v5, p5

    invoke-static {v2, v8, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$300(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;II)V

    .line 139
    :goto_1c5
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$000(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v2, v15}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValue(I)I

    move-result v2

    if-lez v2, :cond_26c

    .line 140
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$000(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v4, v15}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValue(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$000(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v4, v15}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValue(I)I

    move-result v4

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$000(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValue()I

    move-result v5

    invoke-static {v4, v5, v13}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getPercentageOld(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v14

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$100(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$100(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int v3, v3, p4

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v14

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/lit8 v6, v9, 0x1

    mul-int v5, v5, v6

    add-int/2addr v4, v5

    add-int v4, v4, p5

    invoke-static {v2, v8, v0, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$300(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;II)V

    goto :goto_2d0

    .line 142
    :cond_26c
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$000(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v3, v15}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValue(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v14

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$100(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$100(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int v3, v3, p4

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v14

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/lit8 v6, v9, 0x1

    mul-int v5, v5, v6

    add-int/2addr v4, v5

    add-int v4, v4, p5

    invoke-static {v0, v8, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$300(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;II)V

    .line 145
    :goto_2d0
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$000(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValue()I

    move-result v3

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$400(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)I

    move-result v4

    const/4 v5, 0x5

    invoke-static {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getPercentageOld(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v14

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int v3, v3, p3

    add-int v3, v3, p4

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v14

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/lit8 v6, v9, 0x1

    mul-int v5, v5, v6

    add-int/2addr v4, v5

    add-int v4, v4, p5

    invoke-static {v0, v8, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$300(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;II)V
    :try_end_335
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_335} :catch_336

    .line 148
    goto :goto_33a

    .line 146
    :catch_336
    move-exception v0

    .line 147
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    .line 149
    .end local v0  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_33a
    return-void
.end method

.method public getStatsLP(I)Ljava/lang/String;
    .registers 4
    .param p1, "i"  # I

    .line 158
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$000(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatsLPCivFlagID(I)I
    .registers 3
    .param p1, "i"  # I

    .line 163
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$000(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getCivID()I

    move-result v0

    return v0
.end method

.method public getTotal()Ljava/lang/String;
    .registers 2

    .line 153
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sTOTAL_WORLDS_POPULATION:Ljava/lang/String;

    return-object v0
.end method
