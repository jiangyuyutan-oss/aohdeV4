.class Lcom/jcraft/jorbis/Floor0$LookFloor0;
.super Ljava/lang/Object;
.source "Floor0.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jorbis/Floor0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LookFloor0"
.end annotation


# instance fields
.field linearmap:[I

.field ln:I

.field lpclook:Lcom/jcraft/jorbis/Lpc;

.field m:I

.field n:I

.field final synthetic this$0:Lcom/jcraft/jorbis/Floor0;

.field vi:Lcom/jcraft/jorbis/Floor0$InfoFloor0;


# direct methods
.method constructor <init>(Lcom/jcraft/jorbis/Floor0;)V
    .registers 2

    .line 319
    iput-object p1, p0, Lcom/jcraft/jorbis/Floor0$LookFloor0;->this$0:Lcom/jcraft/jorbis/Floor0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    new-instance p1, Lcom/jcraft/jorbis/Lpc;

    invoke-direct {p1}, Lcom/jcraft/jorbis/Lpc;-><init>()V

    iput-object p1, p0, Lcom/jcraft/jorbis/Floor0$LookFloor0;->lpclook:Lcom/jcraft/jorbis/Lpc;

    return-void
.end method
