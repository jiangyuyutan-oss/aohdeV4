.class public Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;
.super Ljava/lang/Object;
.source "Game_Scenarios.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RandomGame_AoCMode"
.end annotation


# instance fields
.field public iCapitalID:I

.field public sTag:Ljava/lang/String;

.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;


# direct methods
.method public constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;
    .param p2, "sTag"  # Ljava/lang/String;

    .line 754
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 752
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;->iCapitalID:I

    .line 755
    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;->sTag:Ljava/lang/String;

    .line 756
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;->iCapitalID:I

    .line 757
    return-void
.end method

.method public constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;Ljava/lang/String;I)V
    .registers 5
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;
    .param p2, "sTag"  # Ljava/lang/String;
    .param p3, "iCapitalID"  # I

    .line 759
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 752
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;->iCapitalID:I

    .line 760
    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;->sTag:Ljava/lang/String;

    .line 761
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;->iCapitalID:I

    .line 762
    return-void
.end method
