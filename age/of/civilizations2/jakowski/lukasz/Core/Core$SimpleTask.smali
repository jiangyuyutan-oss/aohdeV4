.class public Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;
.super Ljava/lang/Object;
.source "Core.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/Core/Core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleTask"
.end annotation


# instance fields
.field public id:I

.field public id2:I

.field public taskKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "taskKey"  # Ljava/lang/String;

    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 652
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;->taskKey:Ljava/lang/String;

    .line 653
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "taskKey"  # Ljava/lang/String;
    .param p2, "id"  # I

    .line 655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 656
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;->taskKey:Ljava/lang/String;

    .line 657
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;->id:I

    .line 658
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p1, "taskKey"  # Ljava/lang/String;
    .param p2, "id"  # I
    .param p3, "id2"  # I

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 661
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;->taskKey:Ljava/lang/String;

    .line 662
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;->id:I

    .line 663
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;->id2:I

    .line 664
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"  # Ljava/lang/Object;

    .line 670
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 671
    :cond_4
    instance-of v0, p1, Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 672
    :cond_a
    move-object v0, p1

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;

    .line 674
    .local v0, "that":Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;->taskKey:Ljava/lang/String;

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;->taskKey:Ljava/lang/String;

    invoke-static {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 679
    const/4 v0, 0x0

    return v0
.end method

.method public update()V
    .registers 1

    .line 666
    return-void
.end method
