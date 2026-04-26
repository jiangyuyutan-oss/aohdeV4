.class Lage/of/civilizations2/jakowski/lukasz/SFXManager$15;
.super Ljava/lang/Object;
.source "SFXManager.java"

# interfaces
.implements Lcom/badlogic/gdx/audio/Music$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/SFXManager;->loadNextMusic(Ljava/lang/String;)V
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

    .line 740
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/badlogic/gdx/audio/Music;)V
    .registers 3
    .param p1, "music"  # Lcom/badlogic/gdx/audio/Music;

    .line 743
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->loadNextMusic()V

    .line 744
    return-void
.end method
