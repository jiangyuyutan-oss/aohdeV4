.class abstract Lcom/jcraft/jorbis/FuncFloor;
.super Ljava/lang/Object;
.source "FuncFloor.java"


# static fields
.field public static floor_P:[Lcom/jcraft/jorbis/FuncFloor;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/jcraft/jorbis/FuncFloor;

    new-instance v1, Lcom/jcraft/jorbis/Floor0;

    invoke-direct {v1}, Lcom/jcraft/jorbis/Floor0;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/jcraft/jorbis/Floor1;

    invoke-direct {v1}, Lcom/jcraft/jorbis/Floor1;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/jcraft/jorbis/FuncFloor;->floor_P:[Lcom/jcraft/jorbis/FuncFloor;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract forward(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;[F[FLjava/lang/Object;)I
.end method

.method abstract free_info(Ljava/lang/Object;)V
.end method

.method abstract free_look(Ljava/lang/Object;)V
.end method

.method abstract free_state(Ljava/lang/Object;)V
.end method

.method abstract inverse1(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method abstract inverse2(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;Ljava/lang/Object;[F)I
.end method

.method abstract look(Lcom/jcraft/jorbis/DspState;Lcom/jcraft/jorbis/InfoMode;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method abstract pack(Ljava/lang/Object;Lcom/jcraft/jogg/Buffer;)V
.end method

.method abstract unpack(Lcom/jcraft/jorbis/Info;Lcom/jcraft/jogg/Buffer;)Ljava/lang/Object;
.end method
