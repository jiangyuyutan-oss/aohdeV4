.class Lage/of/civilizations2/jakowski/lukasz/MapCoords$2;
.super Ljava/lang/Object;
.source "MapCoords.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/MapCoords$WorldMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/MapCoords;->updateWorldMap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/MapCoords;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/MapCoords;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    .line 73
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/MapCoords$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateMapPosX()V
    .registers 6

    .line 82
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapCoords$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->access$300(Lage/of/civilizations2/jakowski/lukasz/MapCoords;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v2, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapCoords$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->access$400(Lage/of/civilizations2/jakowski/lukasz/MapCoords;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/4 v2, 0x1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_64

    .line 83
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapCoords$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v1

    neg-int v1, v1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/MapCoords$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->access$400(Lage/of/civilizations2/jakowski/lukasz/MapCoords;)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v4

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->access$102(Lage/of/civilizations2/jakowski/lukasz/MapCoords;I)I

    .line 84
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getTouchMgr()Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->setUpdateStartMovePosX(Z)V

    goto :goto_8e

    .line 85
    :cond_64
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapCoords$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->access$300(Lage/of/civilizations2/jakowski/lukasz/MapCoords;)I

    move-result v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapCoords$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->access$400(Lage/of/civilizations2/jakowski/lukasz/MapCoords;)I

    move-result v1

    if-lt v0, v1, :cond_85

    .line 86
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapCoords$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->access$400(Lage/of/civilizations2/jakowski/lukasz/MapCoords;)I

    move-result v1

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->access$102(Lage/of/civilizations2/jakowski/lukasz/MapCoords;I)I

    .line 87
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getTouchMgr()Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->setUpdateStartMovePosX(Z)V

    goto :goto_8e

    .line 89
    :cond_85
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapCoords$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->access$300(Lage/of/civilizations2/jakowski/lukasz/MapCoords;)I

    move-result v1

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->access$102(Lage/of/civilizations2/jakowski/lukasz/MapCoords;I)I

    .line 92
    :goto_8e
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapCoords$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->access$100(Lage/of/civilizations2/jakowski/lukasz/MapCoords;)I

    move-result v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapCoords$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->access$400(Lage/of/civilizations2/jakowski/lukasz/MapCoords;)I

    move-result v1

    if-lt v0, v1, :cond_a9

    .line 93
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapCoords$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->access$400(Lage/of/civilizations2/jakowski/lukasz/MapCoords;)I

    move-result v1

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->access$302(Lage/of/civilizations2/jakowski/lukasz/MapCoords;I)I

    move-result v1

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->access$102(Lage/of/civilizations2/jakowski/lukasz/MapCoords;I)I

    .line 96
    :cond_a9
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapCoords$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->checkPositionOfMapX()V

    .line 97
    return-void
.end method

.method public updateSecondSideOfMap()V
    .registers 3

    .line 76
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapCoords$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->access$002(Lage/of/civilizations2/jakowski/lukasz/MapCoords;Z)Z

    .line 77
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapCoords$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->access$202(Lage/of/civilizations2/jakowski/lukasz/MapCoords;I)I

    .line 78
    return-void
.end method
