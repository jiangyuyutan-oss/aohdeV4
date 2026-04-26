.class Lcom/jcraft/jorbis/Floor0$InfoFloor0;
.super Ljava/lang/Object;
.source "Floor0.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jorbis/Floor0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InfoFloor0"
.end annotation


# instance fields
.field ampbits:I

.field ampdB:I

.field barkmap:I

.field books:[I

.field numbooks:I

.field order:I

.field rate:I

.field final synthetic this$0:Lcom/jcraft/jorbis/Floor0;


# direct methods
.method constructor <init>(Lcom/jcraft/jorbis/Floor0;)V
    .registers 2

    .line 307
    iput-object p1, p0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->this$0:Lcom/jcraft/jorbis/Floor0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    const/16 p1, 0x10

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->books:[I

    return-void
.end method
