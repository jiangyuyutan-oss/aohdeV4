.class abstract Lcom/codedisaster/steamworks/SteamCallbackAdapter;
.super Ljava/lang/Object;
.source "SteamCallbackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final callback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 7
    .local p0, "this":Lcom/codedisaster/steamworks/SteamCallbackAdapter;, "Lcom/codedisaster/steamworks/SteamCallbackAdapter<TT;>;"
    .local p1, "callback":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/codedisaster/steamworks/SteamCallbackAdapter;->callback:Ljava/lang/Object;

    .line 9
    return-void
.end method
