.class abstract Lcom/jcraft/jorbis/FuncMapping;
.super Ljava/lang/Object;
.source "FuncMapping.java"


# static fields
.field public static mapping_P:[Lcom/jcraft/jorbis/FuncMapping;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/jcraft/jorbis/FuncMapping;

    new-instance v1, Lcom/jcraft/jorbis/Mapping0;

    invoke-direct {v1}, Lcom/jcraft/jorbis/Mapping0;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/jcraft/jorbis/FuncMapping;->mapping_P:[Lcom/jcraft/jorbis/FuncMapping;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract free_info(Ljava/lang/Object;)V
.end method

.method abstract free_look(Ljava/lang/Object;)V
.end method

.method abstract inverse(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;)I
.end method

.method abstract look(Lcom/jcraft/jorbis/DspState;Lcom/jcraft/jorbis/InfoMode;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method abstract pack(Lcom/jcraft/jorbis/Info;Ljava/lang/Object;Lcom/jcraft/jogg/Buffer;)V
.end method

.method abstract unpack(Lcom/jcraft/jorbis/Info;Lcom/jcraft/jogg/Buffer;)Ljava/lang/Object;
.end method
