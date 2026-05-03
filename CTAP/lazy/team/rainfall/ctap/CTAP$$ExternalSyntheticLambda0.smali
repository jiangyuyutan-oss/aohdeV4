.class public final synthetic Lteam/rainfall/ctap/CTAP$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field public final synthetic f$1:Ljava/lang/CharSequence;

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lteam/rainfall/ctap/CTAP$$ExternalSyntheticLambda0;->f$0:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iput-object p2, p0, Lteam/rainfall/ctap/CTAP$$ExternalSyntheticLambda0;->f$1:Ljava/lang/CharSequence;

    iput-object p3, p0, Lteam/rainfall/ctap/CTAP$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lteam/rainfall/ctap/CTAP$$ExternalSyntheticLambda0;->f$0:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v1, p0, Lteam/rainfall/ctap/CTAP$$ExternalSyntheticLambda0;->f$1:Ljava/lang/CharSequence;

    iget-object v2, p0, Lteam/rainfall/ctap/CTAP$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, v1, v2}, Lteam/rainfall/ctap/CTAP;->lambda$getGlyphLayoutData$0(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
