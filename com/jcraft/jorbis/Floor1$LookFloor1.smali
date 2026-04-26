.class Lcom/jcraft/jorbis/Floor1$LookFloor1;
.super Ljava/lang/Object;
.source "Floor1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jorbis/Floor1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LookFloor1"
.end annotation


# static fields
.field static final VIF_POSIT:I = 0x3f


# instance fields
.field forward_index:[I

.field frames:I

.field hineighbor:[I

.field loneighbor:[I

.field n:I

.field phrasebits:I

.field postbits:I

.field posts:I

.field quant_q:I

.field reverse_index:[I

.field sorted_index:[I

.field final synthetic this$0:Lcom/jcraft/jorbis/Floor1;

.field vi:Lcom/jcraft/jorbis/Floor1$InfoFloor1;


# direct methods
.method constructor <init>(Lcom/jcraft/jorbis/Floor1;)V
    .registers 3

    .line 562
    iput-object p1, p0, Lcom/jcraft/jorbis/Floor1$LookFloor1;->this$0:Lcom/jcraft/jorbis/Floor1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    const/16 p1, 0x41

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/jcraft/jorbis/Floor1$LookFloor1;->sorted_index:[I

    .line 566
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/jcraft/jorbis/Floor1$LookFloor1;->forward_index:[I

    .line 567
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/jcraft/jorbis/Floor1$LookFloor1;->reverse_index:[I

    .line 568
    const/16 p1, 0x3f

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/jcraft/jorbis/Floor1$LookFloor1;->hineighbor:[I

    .line 569
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/jcraft/jorbis/Floor1$LookFloor1;->loneighbor:[I

    return-void
.end method


# virtual methods
.method free()V
    .registers 2

    .line 581
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jorbis/Floor1$LookFloor1;->sorted_index:[I

    .line 582
    iput-object v0, p0, Lcom/jcraft/jorbis/Floor1$LookFloor1;->forward_index:[I

    .line 583
    iput-object v0, p0, Lcom/jcraft/jorbis/Floor1$LookFloor1;->reverse_index:[I

    .line 584
    iput-object v0, p0, Lcom/jcraft/jorbis/Floor1$LookFloor1;->hineighbor:[I

    .line 585
    iput-object v0, p0, Lcom/jcraft/jorbis/Floor1$LookFloor1;->loneighbor:[I

    .line 586
    return-void
.end method
