.class Lage/of/civilizations2/jakowski/lukasz/MapScroll$8;
.super Ljava/lang/Object;
.source "MapScroll.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/MapScroll$ReverseDirection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/MapScroll;->buildReverseDirectionY()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/MapScroll;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/MapScroll;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/MapScroll;

    .line 435
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapScroll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNewPos(I)I
    .registers 3
    .param p1, "nPosY"  # I

    .line 438
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getNewPosY()I

    move-result v0

    sub-int/2addr v0, p1

    return v0
.end method
