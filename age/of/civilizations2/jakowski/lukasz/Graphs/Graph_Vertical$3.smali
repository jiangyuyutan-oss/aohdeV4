.class Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$3;
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

    .line 168
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .registers 16
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "i"  # I
    .param p3, "tempOffsetX"  # I
    .param p4, "iTranslateX"  # I
    .param p5, "iTranslateY"  # I

    .line 171
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$000(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValuesSize()I

    move-result v1

    const-string v2, ""

    const v3, 0x3f333333  # 0.7f

    if-ge v0, v1, :cond_91

    .line 172
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$000(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValue(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$000(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValueDataTypeID(I)I

    move-result v7

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    add-int/2addr v1, v2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$100(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$100(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)I

    move-result v2

    mul-int v2, v2, v0

    add-int/2addr v1, v2

    add-int v8, v1, p4

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x1

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    add-int v9, v1, p5

    move-object v5, p1

    invoke-static/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$500(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;III)V

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 175
    .end local v0  # "j":I
    :cond_91
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$000(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValue()I

    move-result v2

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$400(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)I

    move-result v4

    const/4 v5, 0x5

    invoke-static {v2, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getPercentageOld(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/2addr v2, p3

    add-int/2addr v2, p4

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    float-to-int v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    add-int/lit8 v5, p2, 0x1

    mul-int v3, v3, v5

    add-int/2addr v4, v3

    add-int/2addr v4, p5

    invoke-static {v0, p1, v1, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->access$300(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;II)V

    .line 176
    return-void
.end method

.method public getStatsLP(I)Ljava/lang/String;
    .registers 4
    .param p1, "i"  # I

    .line 185
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

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

    .line 190
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

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

    .line 180
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sTOTAL:Ljava/lang/String;

    return-object v0
.end method
