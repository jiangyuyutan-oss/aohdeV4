.class Lage/of/civilizations2/jakowski/lukasz/TouchManager$6;
.super Ljava/lang/Object;
.source "TouchManager.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/TouchManager$ReverseDirection2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/TouchManager;->buildReversePosX2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/TouchManager;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/TouchManager;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    .line 1298
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TouchManager$6;->this$0:Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNewPos(II)I
    .registers 4
    .param p1, "iStartMovePos"  # I
    .param p2, "nPos"  # I

    .line 1301
    sub-int v0, p1, p2

    return v0
.end method
