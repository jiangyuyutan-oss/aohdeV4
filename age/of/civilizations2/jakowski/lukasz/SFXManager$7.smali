.class Lage/of/civilizations2/jakowski/lukasz/SFXManager$7;
.super Ljava/lang/Object;
.source "SFXManager.java"

# interfaces
.implements Lcom/badlogic/gdx/audio/Music$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/SFXManager;->loadPreviousMusic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/SFXManager;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/SFXManager;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    .line 513
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager$7;->this$0:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/badlogic/gdx/audio/Music;)V
    .registers 3
    .param p1, "music"  # Lcom/badlogic/gdx/audio/Music;

    .line 516
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager$7;->this$0:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->loadNextMusic()V

    .line 517
    return-void
.end method
