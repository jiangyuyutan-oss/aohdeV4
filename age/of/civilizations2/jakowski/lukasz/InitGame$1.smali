.class Lage/of/civilizations2/jakowski/lukasz/InitGame$1;
.super Ljava/lang/Object;
.source "InitGame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/InitGame;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/InitGame;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/InitGame;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/InitGame;

    .line 17
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/InitGame$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/InitGame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 20
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/InitGame$1$1;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/InitGame$1$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/InitGame$1;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    .line 26
    return-void
.end method
