.class Lcom/jcraft/jorbis/Time0;
.super Lcom/jcraft/jorbis/FuncTime;
.source "Time0.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/jcraft/jorbis/FuncTime;-><init>()V

    return-void
.end method


# virtual methods
.method free_info(Ljava/lang/Object;)V
    .registers 2
    .param p1, "i"  # Ljava/lang/Object;

    .line 44
    return-void
.end method

.method free_look(Ljava/lang/Object;)V
    .registers 2
    .param p1, "i"  # Ljava/lang/Object;

    .line 47
    return-void
.end method

.method inverse(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;[F[F)I
    .registers 6
    .param p1, "vb"  # Lcom/jcraft/jorbis/Block;
    .param p2, "i"  # Ljava/lang/Object;
    .param p3, "in"  # [F
    .param p4, "out"  # [F

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method look(Lcom/jcraft/jorbis/DspState;Lcom/jcraft/jorbis/InfoMode;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "vd"  # Lcom/jcraft/jorbis/DspState;
    .param p2, "mi"  # Lcom/jcraft/jorbis/InfoMode;
    .param p3, "i"  # Ljava/lang/Object;

    .line 40
    const-string v0, ""

    return-object v0
.end method

.method pack(Ljava/lang/Object;Lcom/jcraft/jogg/Buffer;)V
    .registers 3
    .param p1, "i"  # Ljava/lang/Object;
    .param p2, "opb"  # Lcom/jcraft/jogg/Buffer;

    .line 33
    return-void
.end method

.method unpack(Lcom/jcraft/jorbis/Info;Lcom/jcraft/jogg/Buffer;)Ljava/lang/Object;
    .registers 4
    .param p1, "vi"  # Lcom/jcraft/jorbis/Info;
    .param p2, "opb"  # Lcom/jcraft/jogg/Buffer;

    .line 36
    const-string v0, ""

    return-object v0
.end method
