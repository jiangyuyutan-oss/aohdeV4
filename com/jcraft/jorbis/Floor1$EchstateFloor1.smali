.class Lcom/jcraft/jorbis/Floor1$EchstateFloor1;
.super Ljava/lang/Object;
.source "Floor1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jorbis/Floor1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EchstateFloor1"
.end annotation


# instance fields
.field codes:J

.field codewords:[I

.field curve:[F

.field frameno:J

.field final synthetic this$0:Lcom/jcraft/jorbis/Floor1;


# direct methods
.method constructor <init>(Lcom/jcraft/jorbis/Floor1;)V
    .registers 2

    .line 605
    iput-object p1, p0, Lcom/jcraft/jorbis/Floor1$EchstateFloor1;->this$0:Lcom/jcraft/jorbis/Floor1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
